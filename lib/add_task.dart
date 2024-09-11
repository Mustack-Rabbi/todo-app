import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
            title: Text(
              "Add Task",
              style: TextStyle(color: Colors.white),
            ),
      
            backgroundColor: Color(0xff1B5E20)),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: Column(
                children: [
                  TextField(decoration: InputDecoration(hintText: "Title"),),
                  TextField(decoration: InputDecoration(hintText: "Detail"),),
              
                  SizedBox(height: 20,),
                  ElevatedButton(child: Text("ADD"),onPressed: (){},)
              
              
                ],
              ),),
            ),
            
            );
  }
}