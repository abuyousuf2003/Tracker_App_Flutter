import 'package:flutter/material.dart';

class DailyTracker extends StatefulWidget{
@override
 State<DailyTracker>createState()=>_DailyTrackerState();
} 

class AllEvents{
  final TextEditingController controllEvent = TextEditingController();
  final List<Map<String,dynamic>> listOfEvent=[];

}



class _DailyTrackerState extends State<DailyTracker>
{

AllEvents event = AllEvents();
void addEvent()
{
  final String text = event.controllEvent.text.trim();
  if(text.isNotEmpty)
  {
   setState(() {
      event.listOfEvent.add({"text":text,"done":false});
    event.controllEvent.clear();
   });
  }
}

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
    child: Column(
  children: [
    //upper element
    Row(
      children: [
        Expanded(child:
        TextField(
          controller: event.controllEvent,
          decoration: InputDecoration(
            labelText: "write your task",
            hintText: "write event",
            hintStyle: TextStyle(color: Colors.black),
          ),
        ) ),
        IconButton(onPressed: (){
          addEvent();
        }, icon: Icon(Icons.add)),
      ],
    ),
    Expanded(

      child:event.listOfEvent.isEmpty?
      Center(child:Text("No data Yet")):
       ListView.builder(
        itemCount: event.listOfEvent.length,
        itemBuilder: (context,index){
         return  CheckboxListTile(
          title: Text(event.listOfEvent[index]["text"]),
          onChanged: (value) {
            setState(() {
              event.listOfEvent[index]["done"]= value!;
            });
          },
          value: event.listOfEvent[index]["done"],
         );
        }),
    ),
    //lower element
  ],

       
     
) 
   );
}
}


          
  