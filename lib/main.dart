import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: calculator(),
    )
  );
}

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var input = "";
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  '$input',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Container(
                child: Text(
                  '$result',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input = '';
                        result = '';
                      });
                    },
                    child: Text(
                      'AC',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (input.length > 0) {
                          input = input.substring(0, input.length - 1);
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.amber,
                    iconSize: 30,
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        var last = input[input.length - 1];
                        input = input.substring(0, input.length - 1) + '(-' +'${last}' + ')';
                      });
                    },
                    child: Text(
                      '+/-',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                    setState(() {
                      input += '÷';
                    });
                  },
                    child: Text(
                      '÷',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '7';
                      });
                    },
                    child: Text(
                      '7',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '8';
                      });
                    },
                    child: Text(
                      '8',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '9';
                      });
                    },
                    child: Text(
                      '9',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '×';
                      });
                    },
                    child: Text(
                      '×',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '4';
                      });
                    },
                    child: Text(
                      '4',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '5';
                      });
                    },
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '6';
                      });
                    },
                    child: Text(
                      '6',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '-';
                      });
                    },
                    child: Text(
                      '-',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '1';
                      });
                    },
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '2';
                      });
                    },
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '3';
                      });
                    },
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        input += '+';
                      });
                    },
                    icon: Icon(Icons.add),
                    color: Colors.amber,
                    iconSize: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '%';
                      });
                    },
                    child: Text(
                      '%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '0';
                      });
                    },
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        input += '.';
                      });
                    },
                    child: Text(
                      '.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        String process;
                        process = input.replaceAll('÷', '/');
                        process = process.replaceAll('×', '*');
                        process = process.replaceAll('%', '*0.01');


                        Parser p = Parser();
                        Expression exp = p.parse(process);
                        ContextModel cm = ContextModel();
                        double eval = exp.evaluate(EvaluationType.REAL, cm);
                        result = eval.toString();
                      });
                    },
                    child: Text(
                      '=',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        )
    );
  }

}






