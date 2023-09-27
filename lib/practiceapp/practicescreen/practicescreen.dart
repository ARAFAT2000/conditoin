import 'package:flutter/material.dart';

import '../practicelist/practicelist.dart';
import '../style/style.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key,required this.practices});
  final List<Practice>practices;

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  int number=0;

  void ClickHere(){
    setState(() {
      number ++;

      ///check the condition
       if(number==4){
         return practicecodemama(context);
       }
    });
  }

  void practicecodemama(BuildContext context){
    showDialog(context: context,
        builder: (BuildContext context){
      return AlertDialog(
        title: Text('Happy Birthday',style: practiceTextStyle(),),
        content: Text(' you have preses ${number} times'),
        
      );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Practice Condition')),
      ),
      body: ListView.builder(
          itemCount: widget.practices.length,
          itemBuilder: (context,index){
        return Card(
          color: Colors.indigo,
         child:ListTile(
           title: Text(widget.practices[index].hobby),
           leading: CircleAvatar(
             radius: 40,
             child: InkWell(
                 onTap: ClickHere,
                 child: Text(widget.practices[index].name)),
           ),
         ) ,
        );
      }),
    );
  }
}
