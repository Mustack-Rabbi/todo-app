import 'package:flutter/material.dart';

class CompletedTask extends StatefulWidget {
  const CompletedTask({super.key});

  @override
  State<CompletedTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<CompletedTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
            title: Text(
              "Complete Task",
              style: TextStyle(color: Colors.white),
            ),
         
            backgroundColor: Color(0xff1B5E20)),
            body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListView.builder(
              itemCount: 16,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(2),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Color(0xffE8F5E9)),
                  child: Row(
                    children: [
                   
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Title",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1B5E20)),
                            ),
                            Text(
                              "Subtitle",
                              style: TextStyle(color: Color(0xff1B5E20)),
                            )
                          ],
                        ),
                      ),
              
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
            
            );
  }
}