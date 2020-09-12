import "package:flutter/material.dart";
import "package:bildie/classes/questionbank.dart";

class BilDieMain extends StatefulWidget {
  @override
  _BilDieMainState createState() => _BilDieMainState();
}

class _BilDieMainState extends State<BilDieMain> {

  QuestionBank questionBank = QuestionBank();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("BilDie"),
        backgroundColor: Colors.black26,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    child: Center(
                      child: Text(
                        questionBank.getQuestion(questionBank.currentQuestionNo).getQuestionText(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 12, 5, 6),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        questionBank.updateCurrentQuestionNo(0);
                      });
                    },
                    color: Colors.green,
                    child: Text(
                      questionBank.getQuestion(questionBank.currentQuestionNo).getAnswer(0),
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 6, 5, 5),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        questionBank.updateCurrentQuestionNo(1);
                      });
                    },
                    color: Colors.red,
                    child: Text(
                      questionBank.getQuestion(questionBank.currentQuestionNo).getAnswer(1),
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
