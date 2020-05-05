import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_list.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/utils/constants.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildHeader(context),
          Container(
            height: 50,
            padding: const EdgeInsets.only(left: 20.0),
            child: OverflowBox(
              maxWidth: 500,
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.list,
                    size: 45.0,
                    color: kColor3,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Todoey",
                    style: TextStyle(
                        color: kColor2,
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 300.0,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TaskList(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: kColor3,
        child: Icon(FontAwesomeIcons.plus),
      ),
    );
  }

  Container _buildHeader(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: -100,
            top: -150,
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [kColor1, kColor2]),
                  boxShadow: [
                    BoxShadow(
                        color: kColor2,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10.0)
                  ]),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [kColor3, kColor2]),
                boxShadow: [
                  BoxShadow(
                      color: kColor3, offset: Offset(1.0, 1.0), blurRadius: 4.0)
                ]),
          ),
          Positioned(
            top: 100,
            right: 200,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [kColor3, kColor2]),
                  boxShadow: [
                    BoxShadow(
                        color: kColor3,
                        offset: Offset(1.0, 1.0),
                        blurRadius: 4.0)
                  ]),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hello!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10.0),
                Text(
                  "You have ${Provider.of<TaskData>(context).taskCount} remaining\ntasks for today!",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
