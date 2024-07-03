import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../Util /hexcolor.dart';

class Bmi_Calculator extends StatefulWidget {
  const Bmi_Calculator({Key? key}) : super(key: key);

  @override
  State<Bmi_Calculator> createState() => _Bmi_CalculatorState();
}

class _Bmi_CalculatorState extends State<Bmi_Calculator> {
  @override
  Widget build(BuildContext context) {
    Color _appBarColor = HexColor("#161733");
    Color  _ContainerColor= HexColor("#161836");
    Color _backgroundColor= HexColor("#0f1029");
    Color _calculator_color= HexColor("#323880");
    Color _female =HexColor("#db81b0");
    Color  _male= HexColor("#18a1db");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Calculator"),
        backgroundColor: _appBarColor,
        actions: [
          IconButton(
              onPressed: null, icon: Icon(Icons.settings, color: Colors.white,))
        ],
      ),
      backgroundColor: _backgroundColor,
      body: Container(padding: EdgeInsets.only(top:20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Center(child: Text("♀",style: TextStyle(
                      fontSize: 100,
                      color: _female,
                    ),)),
                    decoration: BoxDecoration(
                        color: _ContainerColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),

                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Center(
                      child: Text("♂",style: TextStyle(
                        fontSize: 100,
                        color: _male,
                          ),),
                    ),
                    decoration: BoxDecoration(
                        color: _ContainerColor,
                        borderRadius: BorderRadius.circular(8.0)
                    ),

                  ),



                ],
              ),
            ), // male and female selection
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 345,
                        child:Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text("Your Weight in Cm", style: TextStyle(
                                color: Colors.white,

                              ),),
                              Text("178kg", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize:30,
                              ),)
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: _ContainerColor,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 345,
                        child:Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text("Your Height in Cm", style: TextStyle(
                                color: Colors.white,

                              ),),
                              Text("178kg", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize:30,
                              ),)
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: _ContainerColor,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ), // weight and height section
            Column(
              // mainAxisAlignment: MainAxisAlignment.,
              children: [
                Text("Your BMI",style: TextStyle(
                  fontSize: 60,
                  color: Colors.white
                ),),
                Text("23.4",style: TextStyle(
                  fontSize: 100,
                    color: Colors.white
                ),),
              ],
            ),// Your BMI Calculator
            SizedBox(
              height: 20,
            ),// to give spacing
            InkWell(
              child: Container(
                height: 40,
                width: 360,
                decoration: BoxDecoration(
                    color: _calculator_color,
                    borderRadius: BorderRadius.circular(3.0)
                ),
                child: Center(
                  child: Text("Calculate",style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold
                  ),),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
//// this is the UI for  BMI calculator