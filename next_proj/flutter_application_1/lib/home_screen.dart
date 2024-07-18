import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height:50,
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,



                decoration: BoxDecoration(
                  image: const DecorationImage(image: NetworkImage("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              title: const Text("william John Malik",style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 20
              ),
              ),
              subtitle: const Text("Aggresive Invester"),
            ),
        
        
        const Padding(
          padding: EdgeInsets.all(15),
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          
          ),
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 244, 248),
          borderRadius: BorderRadius.circular(10)
        ),
          child: const Icon(
            Icons.person,
            color: Color.fromARGB(255, 9, 99, 218),
          ),
          
            ),
          title: const Text(
            "personal data", style: TextStyle(
            color: Color.fromARGB(255, 9, 99, 218),fontWeight: FontWeight.w600
          ),),
          
          
          trailing: const Icon(Icons.chevron_right),
          
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 244, 248),
          borderRadius: BorderRadius.circular(10)
        ),
          child: const Icon(
            Icons.settings,
            color: Color.fromARGB(255, 9, 99, 218),
          ),
          
            ),
          title: const Text(
            "settings", style: TextStyle(
            color: Color.fromARGB(255, 9, 99, 218),fontWeight: FontWeight.w600
          ),),
          
          
          trailing: const Icon(Icons.chevron_right),
          
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 244, 248),
          borderRadius: BorderRadius.circular(10)
        ),
          child: const Icon(
            Icons.person,
            color: Color.fromARGB(255, 9, 99, 218),
          ),
          
            ),
          title: const Text(
            "E-statement", style: TextStyle(
            color: Color.fromARGB(255, 9, 99, 218),fontWeight: FontWeight.w600
          ),),
          
          
          trailing: const Icon(Icons.chevron_right),
          
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 244, 248),
          borderRadius: BorderRadius.circular(10)
        ),
          child: const Icon(
            Icons.favorite,
            color: Color.fromARGB(255, 9, 99, 218),
          ),
          
            ),
          title: const Text(
            "Refferal code", style: TextStyle(
            color: Color.fromARGB(255, 9, 99, 218),fontWeight: FontWeight.w600
          ),),
          
          
          trailing: const Icon(Icons.chevron_right),
          
          ),
        ),
        
        
        
        
        const Padding(
          padding: EdgeInsets.all(15),
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          
          ),
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 244, 248),
          borderRadius: BorderRadius.circular(10)
        ),
          child: const Icon(
            Icons.favorite,
            color: Color.fromARGB(255, 9, 99, 218),
          ),
          
            ),
          title: const Text(
            "our handbook", style: TextStyle(
            color: Color.fromARGB(255, 9, 99, 218),fontWeight: FontWeight.w600
          ),),
          
          
          trailing: const Icon(Icons.chevron_right),
          
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 244, 248),
          borderRadius: BorderRadius.circular(10)
        ),
          child: const Icon(
            Icons.favorite,
            color: Color.fromARGB(255, 9, 99, 218),
          ),
          
            ),
          title: const Text(
            "Faq", style: TextStyle(
            color: Color.fromARGB(255, 9, 99, 218),fontWeight: FontWeight.w600
          ),),
          
          
          trailing: const Icon(Icons.chevron_right),
          
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 244, 248),
          borderRadius: BorderRadius.circular(10)
        ),
          child: const Icon(
            Icons.diversity_3,
            color: Color.fromARGB(255, 9, 99, 218),
          ),
          
            ),
          title: const Text(
            "community", style: TextStyle(
            color: Color.fromARGB(255, 9, 99, 218),fontWeight: FontWeight.w600
          ),),
          
          
          trailing: const Icon(Icons.chevron_right),
          
          ),
        ),
        
        
        Container(
margin:const EdgeInsets.only(
  left: 20,
  right: 20,
  top: 10,
  bottom:30
),
          height: 80,
          width: 300,
          decoration: BoxDecoration(
            color:const Color.fromARGB(255, 61, 106, 129),
            borderRadius: BorderRadius.circular(10),
          ),


          child:const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.headset_mic,
               color: Color.fromARGB(255, 61, 106, 129),
               size: 35,
              ),
SizedBox(width:10,),
               Text(
            "i feeel to ask,we ready to help ",
             style: TextStyle(
            color: Color.fromARGB(255, 9, 99, 218),
            fontWeight: FontWeight.w600
          ),),
            ],
          ),
        )
        
          ],
        ),
      ),
    );
    
  }
}