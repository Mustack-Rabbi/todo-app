import 'package:flutter/material.dart';

class EditeTask extends StatefulWidget {
  const EditeTask({super.key});

  @override
  State<EditeTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<EditeTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
            title: Text(
              "Edite Task",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(child: Text("Update"),onPressed: (){},),
                       ElevatedButton(child: Text("Cancle"),onPressed: (){},)
                    ],
                  ),
              
              
                ],
              ),),
            ),
            
            );
  }
}