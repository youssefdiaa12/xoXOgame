import 'package:flutter/material.dart';

typedef functype = void Function(int idx,String shape);


class btn extends StatefulWidget {
  functype onbtnpressed;
  int idx = 0;
  String x_o = '';
  String y_o = '';
  String z_o = '';

  btn(this.idx, this.x_o,this.y_o,this.z_o, {required this.onbtnpressed});

  @override
  State<btn> createState() => _btnState();
}

class _btnState extends State<btn> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty
                    .resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return  Colors.cyan;
                    })),
                onPressed: () {
                  widget.onbtnpressed(widget.idx,widget.x_o);
               setState(() {

               });
                },
                child:Text(widget.x_o,style: TextStyle(fontSize: 32,color: Colors.white),)),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty
                  .resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return  Colors.cyan;
                  })),
                onPressed: () {
                  widget.onbtnpressed(widget.idx + 1,widget.y_o);
           setState(() {

           });
                },
                child: Text(widget.y_o,style: TextStyle(fontSize: 32,color: Colors.white),)
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty
                    .resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return  Colors.cyan;
                    })),
                onPressed: () {
                  widget.onbtnpressed(widget.idx + 2,widget.z_o);
             setState(() {

             });
                },
                child: Text(widget.z_o,style: TextStyle(fontSize: 32,color: Colors.white),)),
          )),
        ],
      ),
    );
  }
}
