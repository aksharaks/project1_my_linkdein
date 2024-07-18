import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HomeScreen extends StatefulWidget  {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Future<void>fetchdata()async{
  var baseurl=Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
  final response = await http.get(baseurl);
 if(response.statusCode==200){
  print(response.body.toString());

 }
 else{
  print("error");
 }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          fetchdata();
        }, 
        child:const Text("hello")),
      ),
    );
  }
}