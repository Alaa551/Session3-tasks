

import 'package:flutter/material.dart';
import 'widgets/customContact.dart';
import 'models/contactModel.dart';

class Screen1 extends StatelessWidget {

  List<ContactModel> contacts= [
    ContactModel(title: "Mohamed Samy",subTitle: "01010001010"),
    ContactModel(title: "Mohamed Samy",subTitle: "01010001010"),
    ContactModel(title: "Mohamed Samy",subTitle: "01010001010"),
    ContactModel(title: "Mohamed Samy",subTitle: "01010001010"),
    ContactModel(title: "Mohamed Samy",subTitle: "01010001010"),
    ContactModel(title: "Mohamed Samy",subTitle: "01010001010"),
    ContactModel(title: "Mohamed Samy",subTitle: "01010001010"),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
         child: Padding(
           padding: const EdgeInsets.only(top: 8.0),
           child: ListView.separated(
               separatorBuilder: (BuildContext context, int index) => Padding(
                 padding: const EdgeInsets.only(top: 15,bottom: 10,left: 15,right: 15),
                 child: Divider(thickness: 1,color: Colors.grey,),
               ),
             itemBuilder: (BuildContext context, int index) => CustomContact(contactModel: contacts[index],count:++index),
             itemCount: contacts.length,
           ),
         ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.blue,

         title: Text("Contacts",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.add,color: Colors.white),
          ),
        ],
      ),
    );
  }
}
