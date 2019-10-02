import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home:  TextForm()
    );
  }
}

class TextForm extends StatefulWidget {
  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {

  double num1=0,num2=0,result=0;
  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void doAddtion(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 + num2;
    });
  }

  void doSub(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 - num2;
    });
  }

  void doMul(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 * num2;
    });
  }

  void doDiv(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1/num2;
    });
  }
  void doCLEAR(){
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(40.0),
          color: Colors.orange.shade600,
          child:  Stack(
            children: <Widget>[
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Output: $result",style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "   Enter number 1",
                            hintStyle: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          controller: t1,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "   Enter number 2",
                            hintStyle: TextStyle(
                                color: Colors.black87
                            ),
                          ),
                          controller: t2,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FloatingActionButton(
                              backgroundColor: Colors.white,
                              child: Text("+",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 30.0
                                ),),

                              onPressed: doAddtion
                          ),

                          FloatingActionButton(
                              backgroundColor: Colors.white,
                              child: Text("-",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 30.0
                                ),),
                              onPressed: doSub
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FloatingActionButton(
                              backgroundColor: Colors.white,
                              child: Text("*",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 30.0
                                ),),
                              onPressed: doMul
                          ),
                          FloatingActionButton(
                              backgroundColor: Colors.white,
                              child: Text("/",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 30.0
                                ),),
                              onPressed: doDiv
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 320.0,
                            height: 50.0,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                              child: Text("Clear",style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 30.0
                              ),),
                              color: Colors.white,
                              onPressed: doCLEAR,
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          )
                      );




  }
}
