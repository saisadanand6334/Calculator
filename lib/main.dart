import 'package:flutter/material.dart';

void main() {
  runApp(const Calc());
}

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {

  double ans = 0;
  String val = "";
  String opret = "";
  String num1 = "";
  String num2 = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.blueGrey,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text(
              'CALCULATOR',
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w800,fontSize: 30
              ),
            ),

          ),
          leading   :IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined,color: Colors.white,)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child:
                Align(alignment: Alignment.bottomRight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          '$val',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),


                /* Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$val',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),

                  ],
                ),*/

              ),
              SizedBox(height: 60,),
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val = "";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text("AC",
                          style: TextStyle(
                              fontSize: 50,color: Colors.orange
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (val.length > 0) {
                            val = val.substring(0, val.length - 1);
                          }
                        });
                      },
                      child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(Icons.backspace_outlined,
                            size: 40,color: Colors.orange,)
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          opret = "%";
                          num1 = val;
                          val = "";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text("%",
                          style: TextStyle(
                              fontSize: 40,color: Colors.orange
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          opret = "÷";
                          num1 = val;
                          val = "";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text("÷",
                          style: TextStyle(
                              fontSize: 50,color: Colors.orange
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val += "7";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("7",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(

                      onTap: () {
                        setState(() {
                          val += "8";
                        });
                      },

                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("8",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val += "9";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("9",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          opret = "*";
                          num1 = val;
                          val = "";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text("✕",
                          style: TextStyle(
                              fontSize: 40,color: Colors.orange
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val += "4";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("4",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val += "5";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("5",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val += "6";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("6",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          opret = "-";
                          num1 = val;
                          val = "";
                        });

                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text("−",
                          style: TextStyle(
                              fontSize: 50,color: Colors.orange
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val += "1";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("1",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val += "2";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("2",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val += "3";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("3",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          opret = '+';
                          num1 = val;
                          val = '';
                          print(num1);
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text("+",
                          style: TextStyle(
                              fontSize: 50,color: Colors.orange
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val += "0";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("0",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (val.contains('.')) {
                          }
                          else {
                            val += '.';
                          }
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(".",
                          style: TextStyle(
                              fontSize: 50,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          val += "00";
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text("00",
                          style: TextStyle(
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          num2 = val;
                          print(num2);
                          if (opret == "+") {
                            ans = double.parse(num1) + double.parse(num2);
                          }
                          else if (opret == "-") {
                            ans = double.parse(num1) - double.parse(num2);
                          }
                          else if (opret == "%") {
                            ans = double.parse(num1) * double.parse(num2) / 100;
                          }
                          else if (opret == "÷") {
                            ans = double.parse(num1) / double.parse(num2);
                          }
                          else if (opret == "*") {
                            ans = double.parse(num1) * double.parse(num2);
                          }
                          val = ans.toStringAsFixed(1);
                          opret = '';
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.deepOrangeAccent,
                        child: Text("=",
                          style: TextStyle(
                              fontSize: 50,color: Colors.black
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
