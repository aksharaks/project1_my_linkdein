import 'package:flutter/material.dart';

class ContainerWidgetScreen extends StatelessWidget {
  const ContainerWidgetScreen({super.key});
}
@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Container widget screen"),
    ),

    body: (Center(
      child: Container(
        width: 350,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
borderRadius: BorderRadius.circular(20)

        ),
child: const Column(
  children: [
    ListTile(
      leading: Icon(Icons.file_copy),
      title: ,
    )
  ],
),

      ),
    )),
  )
}