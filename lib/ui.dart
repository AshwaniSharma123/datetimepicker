import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_swimbuddy/date.dart';
import 'package:my_swimbuddy/timepicker.dart';


class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

//DateTime selectedDate = DateTime.now();
//TimeOfDay timeofday = TimeOfDay.now();
TimeOfDay time ;
DateTime date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
              color:Colors.greenAccent,
              height: 30,
              width: 300,
              //child:Text("${selectedDate.toString().split(" ")[0]} ${time.hour}:${time.minute} ",textAlign: TextAlign.center,),
               child:Text("${selectedDate.toString().split(" ")[0]} ${timeofday.toString().split("(")[1].split(")")[0]} ",textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20.0,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               RaisedButton(
              onPressed: () async{ 
               // _selectDate(context);
                selectedDate = await Date().selectDate(context, selectedDate);
                 setState(() {
                   date = selectedDate;
                 });

              },
              child: Text('Select date'),
            ),
            RaisedButton(
              onPressed: () async {

             timeofday = await Time().selectTime(context, timeofday);

            setState(() {
              
                time = timeofday;
                
            });
              },
              child: Text('Select time'),
            ),
           ],),       
          ],
        ),
    ),
    );
  }
}


































 // Future<String> _selectDate(BuildContext context) async {
  //   final DateTime picked = await showDatePicker(
  //       context: context,
  //       initialDate: selectedDate,
  //       firstDate: DateTime(2015, 8),
  //       lastDate: DateTime(2101));
  //   if (picked != null && picked != selectedDate)
  //     setState(() {
  //       selectedDate = picked;
  //     });
  //     return "time";
  // }

  // Future<String> selectTime(BuildContext context) async {
  //   final TimeOfDay picked = await showTimePicker(
  //       context: context,
  //       initialTime: timeofday
  //       );
        // firstDate: DateTime(2015, 8),
        // lastDate: DateTime(2101));
  //   if (picked != null && picked != timeofday)
  //     setState(() {
  //       timeofday = picked;
  //     });
  //     return "time";
  // }