

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/contactModel.dart';
class CustomContact extends StatelessWidget {
  ContactModel contactModel;
  int count =0;
  CustomContact({
    required this.contactModel,
    required this.count

});


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor:Colors.blue,
            child: Text("${count}",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white)),
          ),
          title:  Text(contactModel.title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          subtitle:  Text(contactModel.subTitle,style: TextStyle(fontSize: 18,color: Colors.grey)),

        ),
        Divider(thickness: 1,color: Colors.grey,indent: 100,endIndent: 100,),
       SizedBox(height: 8,),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.call),
              Icon(Icons.edit,color: Colors.green,),
              Icon(Icons.delete,color: Colors.red,)
            ],
          ),
        ),

      ],
    );

  }
}
