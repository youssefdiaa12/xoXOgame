import 'package:flutter/material.dart';

class alert extends StatelessWidget {
  String name1;
  int score1;
  String name2;
  int score2;
  bool is_winning;
alert(this.name1, this.score1,this.name2,this.score2,this.is_winning,{super.key});
  @override
  Widget build(BuildContext context) {
    return    Center(
      child: SizedBox(
        height:400,
        width:double.infinity,
        child: AlertDialog(
          backgroundColor: Colors.white,
          content: Center(
            child: Column(
              children: [
                const SizedBox(height:100),
                is_winning?Text(

                  "The Winner is $name1",
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ):
                Text(

                  "The Winner is $name2",
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                          color: Colors.cyan ,
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
  }
}
