import 'package:flutter/material.dart';
import 'package:todo_app/add_task.dart';
import 'package:todo_app/completed_task.dart';
import 'package:todo_app/edite_task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color praymaryColor = Color(0xff1B5E20);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "TODO-App",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.calendar_month_rounded,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
            backgroundColor: praymaryColor),
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
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.check_box_outline_blank,
                            color: Color(0xff1B5E20),
                          )),
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
                      Column(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.delete,
                                color: Colors.red.shade400,
                              )),
                          InkWell(
                              onTap: () {  Navigator.push(context, MaterialPageRoute(builder: (context) => EditeTask()));},
                              child: Icon(
                                Icons.edit,
                                color: Color(0xff1B5E20),
                              ))
                        ],
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
    

            Navigator.push(context, MaterialPageRoute(builder: (context) => AddTask()));
          },
          child: Icon(
            Icons.add,
            color: Color(0xff1B5E20),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'All',),
            BottomNavigationBarItem(icon: InkWell( onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CompletedTask()));},child: Icon(Icons.done)), label: 'Complete'),
            
  ],
      selectedItemColor: Color(0xff1B5E20),
  
      
        ));
  }
}
