import 'package:flutter/material.dart';
import 'model/quiz_brain.dart';

const double kHori = 18.0;
const double kVert = 20.0;
const double kOptionFontSize = 15.6;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  _nextQuestion() {
    setState(() {
      if (_index == bank.length - 1) {
        _index = 0;
      } else {
        _index++;
      }
    });
  }

  _checkAnswer(String answer, BuildContext context) {
    if (answer == bank[_index].answer) {
      // correct answer
      debugPrint("Correct Answer");
      final snackbar = SnackBar(
        content: Text(
          "Yes Correct !!!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        duration: Duration(milliseconds: 1000),
        backgroundColor: Colors.green,
      );
      Scaffold.of(context).showSnackBar(snackbar);
    } else {
      // wrong answer
      final snackbar = SnackBar(
        content: Text(
          "Wrong Answer !!!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        duration: Duration(milliseconds: 1000),
        backgroundColor: Colors.red,
      );
      Scaffold.of(context).showSnackBar(snackbar);
      debugPrint("Wrong Answer");
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
            title: Text(
              "Indian Quiz App by Sourav",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.redAccent),
      ),
      backgroundColor: Colors.lightBlue.shade900,
      body: Builder(
        builder: (BuildContext context) => Container(
          margin: EdgeInsets.only(
            top: 5.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    "images/India.png",
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueGrey.shade100,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      "${bank[_index].questionText}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.6,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: kHori, vertical: kVert),
                        onPressed: () {
                          this._checkAnswer(bank[_index].option1, context);
                        },
                        child: Text(
                          "${bank[_index].option1}",
                          style: TextStyle(
                            fontSize: kOptionFontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        elevation: 5.2,
                        highlightColor: Colors.redAccent,
                        color: Colors.amber,
                        textColor: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: kHori, vertical: kVert),
                        onPressed: () {
                          this._checkAnswer(bank[_index].option2, context);
                        },
                        child: Text(
                          "${bank[_index].option2}",
                          style: TextStyle(
                            fontSize: kOptionFontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        elevation: 5.2,
                        highlightColor: Colors.redAccent,
                        color: Colors.amber,
                        textColor: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: kHori, vertical: kVert),
                        onPressed: () {
                          this._checkAnswer(bank[_index].option3, context);
                        },
                        child: Text(
                          "${bank[_index].option3}",
                          style: TextStyle(
                            fontSize: kOptionFontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        elevation: 5.2,
                        highlightColor: Colors.redAccent,
                        color: Colors.amber,
                        textColor: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: kHori, vertical: kVert),
                        onPressed: () {
                          this._checkAnswer(bank[_index].option4, context);
                        },
                        child: Text(
                          "${bank[_index].option4}",
                          style: TextStyle(
                            fontSize: kOptionFontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        elevation: 5.2,
                        highlightColor: Colors.redAccent,
                        color: Colors.amber,
                        textColor: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _nextQuestion,
        child: Icon(Icons.arrow_forward),
        elevation: 4.4,
      ),
    );
  }
}
