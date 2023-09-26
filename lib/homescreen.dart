import 'package:flutter/material.dart';
import 'package:xogame/alert_screen.dart';
import 'package:xogame/btn.dart';

class homescreen extends StatefulWidget {
  static const String routeName = 'homescreen';
  TextEditingController a1;
  TextEditingController a2;
  homescreen(this.a1, this.a2, {super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int cnt = 0;
  bool ok = false;
  bool player1=true;
  bool player2=false;
  int score1 = 0;
  int score2 = 0;
  String name1="";
  String name2="";
  List<String> xo = List<String>.filled(9, '');
  _homescreenState();
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as homescreen;
    name1=args.a1.text;
    name2=args.a2.text;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text('Route XO Game',
              style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
             Expanded(
              child:Container(
                color: Colors.black,
                child: Row(
                  children: [
Expanded(
  child:   Padding(
    padding: const EdgeInsets.all(8.0),
    child:   Container(
      color:player1?Colors.cyan:Colors.black,
      height: 200,
      width: 200,
        child: Center(
          child: Text(
            "${args.a1.text} $score1",style:  const TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,),
          ),
        ),


    ),
  ),
),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color:player2?Colors.cyan:Colors.black,
                          height: 200,
                          child: Center(
                            child: Text(
    "${args.a2.text} $score2",
                              style:  const TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,),
                            ),
                          ),


                        ),
                      ),
                    ),

                  ],
                ),
              )
            ),
            btn(0, xo[0],xo[1],xo[2],onbtnpressed:(idx, shape) => onclick(idx, shape)),
            btn(3, xo[3],xo[4],xo[5], onbtnpressed:(idx, shape) => onclick(idx, shape)),
            btn(6, xo[6],xo[7],xo[8], onbtnpressed:(idx, shape) => onclick(idx, shape)),
          ],
        ));
  }

  void onclick(int idx, String shape) {

    if (cnt % 2 == 0) {
      shape = 'x';
      player2=true;
      player1=false;
      cnt++;
    } else {
      shape = 'o';
      player2=false;
      player1=true;
      cnt++;
    }

    if (xo[idx] == '') {
      xo[idx] = shape;
    } else {
      return;
    }

  setState(() {
    xo[idx];
  });
    if (xo[0] == xo[1] && xo[1] == xo[2] && xo[2] != '') {

      setState(() {
        if(xo[0]=='o'){
          score2+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
            return  alert(name1, score1, name2, score2,true);

            },
          );

        }
        else{
          score1+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,false);

            },
          );
        }
        xo.clear();
      });
      return;
    } else if (xo[3] == xo[4] && xo[4] == xo[5] && xo[5] != '') {
      ok=true;
      setState(() {
        if(xo[0]=='o'){
          score2+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,true);

            },
          );

        }
        else{
          score1+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,false);

            },
          );
        }
        xo.clear();
      });
      return;
    } else if (xo[6] == xo[7] && xo[7] == xo[8] && xo[8] != '') {
      ok=true;
      setState(() {
        if(xo[0]=='o'){
          score2+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,true);

            },
          );

        }
        else{
          score1+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,false);

            },
          );
        }
        xo.clear();
      });
      return;
    } else if (xo[0] == xo[3] && xo[3] == xo[6] && xo[6] != '') {
      ok=true;
      setState(() {
        if(xo[0]=='o'){
          score2+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,true);

            },
          );

        }
        else{
          score1+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,false);

            },
          );
        }
        xo.clear();
      });
      return;
    } else if (xo[1] == xo[4] && xo[4] == xo[7] && xo[7] != '') {
      ok=true;
      setState(() {
        if(xo[0]=='o'){
          score2+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,true);

            },
          );

        }
        else{
          score1+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,false);

            },
          );
        }
        xo.clear();
      });
      return;
    } else if (xo[2] == xo[5] && xo[5] == xo[8] && xo[8] != '') {
      ok=true;
      setState(() {
        if(xo[0]=='o'){
          score2+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,true);

            },
          );

        }
        else{
          score1+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,false);

            },
          );
        }
        xo.clear();
      });
      return;
    } else if (xo[0] == xo[4] && xo[4] == xo[8] &&xo[8] != '') {
      ok=true;
      setState(() {
        if(xo[0]=='o'){
          score2+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,true);

            },
          );

        }
        else{
          score1+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,false);

            },
          );
        }
        xo.clear();
      });
      return;
    }
    else if (xo[2] == xo[4] && xo[4] == xo[6] && xo[6] != '') {
      ok=true;
      setState(() {
        if(xo[0]=='o'){
          score2+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,true);

            },
          );

        }
        else{
          score1+=5;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return  alert(name1, score1, name2, score2,false);

            },
          );
        }
      xo.clear();

      });
      return;
    }

    bool ok1=true;
    for(int i = 0; i <xo.length;i++){
      if(xo[i]=='') {
        ok1=false;
      }
    }

    if(ok1){
      setState(() {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Center(
              child: SizedBox(
                height:400,
                child: AlertDialog(
                  backgroundColor: Colors.white,
                  content: Center(
                    child: Column(
                      children: [
                        const SizedBox(height:100),
                        const Text(
                          "There is no  Winner",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.cyan,
                                  height: 70,
                                  width: 70,
                                  child: Center(
                                    child: Text(
                                      "${name1} $score1",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color:  Colors.cyan,
                                  height: 70,
                                  width: 70,
                                  child: Center(
                                    child: Text(
                                      "${name2} $score2",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty
                                .resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  return  Colors.cyan;
                                }), ),
                          onPressed: () {
                            Navigator.of(context).pop(); // Pop the dialog from the widget tree
                          },
                          child: const Text('OK', style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
        for(int i = 0; i <xo.length;i++){
          xo[i]='';
        }
      });



    }
  }
}
