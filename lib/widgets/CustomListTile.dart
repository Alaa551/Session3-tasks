

import 'package:flutter/material.dart';
import '../models/listTileModel.dart';

class CustomListTile extends StatelessWidget {
  ListTileModel listTileModel;

  CustomListTile({
    required this.listTileModel,

  });

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading:  Stack(
          alignment: Alignment.center,
          children: [
          CircleAvatar(
            radius: 40,
            backgroundColor:Colors.grey,

          ),
           Positioned(
             bottom: -9,
               child: Icon(listTileModel.leading,color: Colors.white,size: 55,)),
  ],
        ),
        title:Text(listTileModel.title,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        subtitle:Row(
          children: [
            Icon(listTileModel.status ,color: listTileModel.statusColor,),
            Text(listTileModel.subTitle,style: const TextStyle(fontSize: 20,color: Colors.grey),),
          ],
        ),
        trailing: Text(listTileModel.trailing,style: const TextStyle(fontSize: 14,color: Colors.grey),),
      ),
    );
  }
}
