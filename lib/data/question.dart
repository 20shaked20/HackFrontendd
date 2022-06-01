

class Question {

  final String answer;

  Question(this.answer);

  String get_answer(){
    return this.answer;
  }
  factory Question.fromJson(Map<String, dynamic> json){
    final answer = Answer.fromJson(json['answers'][0]);
    print(answer.answer);
    return Question(answer.answer);
  }
}

class Answer {

  final String answer;

  Answer(this.answer);

  String get_answer(){
    return this.answer;
  }
  factory Answer.fromJson(Map<String, dynamic> json){
    final answer = json['answer'];
    return Answer(answer);
  }

}