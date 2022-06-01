import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mime/mime.dart';
import 'package:open_file/open_file.dart';
import 'package:uuid/uuid.dart';

import 'package:http/http.dart' as http;

import '../data/question.dart';
import 'login_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<types.Message> _messages = [];
  final _user = const types.User(id: '06c33e8b-e835-4736-80f4-63f44b66666c');

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.pop(context);
            },
            label: const Text('Back'),
            icon: const Icon(Icons.arrow_back),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          Container(
            // width: 500,
            height: 500,
            // margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            alignment: Alignment.bottomCenter,
            child: Chat(
              messages: _messages,
              onMessageTap: _handleMessageTap,
              onPreviewDataFetched: _handlePreviewDataFetched,
              onSendPressed: _handleSendPressed,
              user: _user,
            ),
          ),
        ],
      ),
    );
  }

  /**
   * method to add messages to the box
   */
  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  /**
   * handle message on tap, press enter..
   */
  void _handleMessageTap(BuildContext context, types.Message message) async {
    if (message is types.FileMessage) {
      await OpenFile.open(message.uri);
    }
  }

  /**
   * handles the messages shown on board
   */
  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = _messages[index].copyWith(previewData: previewData);

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      setState(() {
        _messages[index] = updatedMessage;
      });
    });
  }

  void _chatBot(String text) async {
    final res = await http.post(
        Uri.parse(
            'https://pigeon22.azurewebsites.net/qnamaker/knowledgebases/92296f26-e055-418d-a14d-43fb26f2d6e0/generateAnswer'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'EndpointKey 35d70f2a-9a4b-4fda-83bb-319da3ac90f7',
        },
        body: jsonEncode(<String, String>{
          'question': text,
        }));

    final parsed_json = jsonDecode(res.body);
    Question from_json = Question.fromJson(parsed_json);
    print(from_json.get_answer());
    final textMessage = types.TextMessage(
      author: const types.User(id: '06c33e8b-e835-4736-80f4-0000000000'),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: from_json.get_answer(),
    );

    _addMessage(textMessage);
    print(res.body);
  }

  /**
   * handle send button
   */
  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: const types.User(id: '06c33e8b-e835-4736-80f4-63f44b66666c'),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );
    _addMessage(textMessage);

    _chatBot(message.text);


  }

  /**
   * loads the message from json.
   */
  void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final messages = (jsonDecode(response) as List)
        .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
        .toList();

    setState(() {
      _messages = messages;
    });
  }
}
