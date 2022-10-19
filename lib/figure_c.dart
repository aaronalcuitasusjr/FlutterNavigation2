import 'package:flutter/material.dart';

class FigureC extends StatelessWidget {
  const FigureC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Container(
          padding:
              EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0, bottom: 80.0),
          color: Colors.white,
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightBlue[200],
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightBlue[400],
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightBlue[200],
                ),
              ]),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 8.0, top: 20.0, right: 8.0),
                  width: double.infinity,
                  color: Colors.lightBlue[200],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 8.0, top: 20.0, right: 8.0),
                  width: double.infinity,
                  color: Colors.lightBlue[400],
                ),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20),
              Row(children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 40,
                        alignment: Alignment.center,
                        child: Text('Back',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(child: FittedBox(fit: BoxFit.fill)),
              ]),
            ],
          ),
        )));
  }
}
