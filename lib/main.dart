import 'package:flutter/material.dart';
import 'custom_container.dart';
import 'custom_circle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  List<String> listOfNames = ["Ahmed","Faraz","Hamza","Saqib","Amanullah","Fahad","Mubasshir"];
  List<String> profileImagesList = ["assets/profile/1.jpg","assets/profile/2.jpeg","assets/profile/3.jpg","assets/profile/4.jpg","assets/profile/5.jpg","assets/profile/6.jpeg","assets/profile/7.jpeg"];
   List<String> natureImagesList = ["assets/nature/1.jpg","assets/nature/2.jpg","assets/nature/3.jpg","assets/nature/4.jpg","assets/nature/5.jpg","assets/nature/6.jpg","assets/nature/7.jpeg"];


   @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple.shade200,
            title: const Text("List View Builder"),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 150,
                child:ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: profileImagesList.length,
                    itemBuilder: (context,index){
                      return CustomCircle(
                          image:profileImagesList[index]);
                    }

                )
              ),

              Expanded(
                child: ListView.builder(
                    itemCount: natureImagesList.length,
                    itemBuilder: (context,index){
                      return CustomContainer(
                          image:natureImagesList[index]);
                    }

                )
              ),
            ],
          )
        ));
  }
}
