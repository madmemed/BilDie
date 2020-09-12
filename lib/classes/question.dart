class Question {
  String _questionText;
  Map _answers; //answer key => choice text, answer value => next question
  int _qId;


  Question({String questText, Map answers, int id}) {
    this._questionText = questText;
    this._answers = answers;
    this._qId = id;
  }

  String getQuestionText() {
    return _questionText;
  }

  void setQuestionText(String usrQuestionText) {
    _questionText = usrQuestionText;
  }

  String getAnswer(int answerNo) {
    return _answers.keys.elementAt(answerNo);
  }
  
  int getPathId(int answerNo) {
    return _answers.values.elementAt(answerNo);
  }

  void setAnswer(int answerNo, String usrAnswer) {
    _answers[answerNo] = usrAnswer;
  }


}