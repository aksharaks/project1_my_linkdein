//import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/student_model.dart';
//import 'package:myapp/function.dart';
//import 'package:myapp/login_screen.dart';

class LinkdenHomeScreen extends StatefulWidget {
  const LinkdenHomeScreen({super.key});

  @override
  State<LinkdenHomeScreen> createState() => _LinkdenHomeScreenState();
}


class _LinkdenHomeScreenState extends State<LinkdenHomeScreen> {

List<StudentModel> studentList =[];


  final TextEditingController firstNameController = TextEditingController();
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2197445553.
  final TextEditingController secondNameController = TextEditingController();
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1723591075.
  final TextEditingController addressController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      automaticallyImplyLeading: false,
title: const Text("Add Student"),
    ),
    body: Column(
      children:[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller:firstNameController,
            decoration: const InputDecoration(
              hintText:"first name",
              border:OutlineInputBorder(
                
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: secondNameController,
            decoration: const InputDecoration(
              hintText:"Second name",
              border:OutlineInputBorder(
                
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: addressController,
            maxLines: 3,
            decoration: const InputDecoration(
              hintText:"Address",
              border:OutlineInputBorder(
                
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: mobileNumberController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText:"Mobile number",
              border:OutlineInputBorder(
                
              )
            ),
          ),
        ),

        ElevatedButton(onPressed: (){
          setState(() {
           StudentModel student = StudentModel(
            firstNameController.text,
            secondNameController.text,
            addressController.text,
            mobileNumberController.text);
            studentList.add(student);
          setState(() {
            firstNameController.clear();
            secondNameController.clear();
            addressController.clear();
            mobileNumberController.clear();
          });
          print(studentList);

          });
        }, child: const Text("Register")),


        Expanded(child: ListView.builder(
          itemCount: 10,
        itemBuilder: (context,index){
          
          return ListTile(
        
            title: Text("${studentList[index].firstName}${studentList[index].secondName}"),
            leading: const Icon(Icons.person),
            subtitle: Text(studentList[index].mobileNumber),
          );
        }
          )
  )
      ]

    )
    );
  }
}