import 'package:flutter/material.dart';
import 'package:session3_tasks/widgets/CustomListTile.dart';

import 'models/listTileModel.dart';

class Screen2 extends StatelessWidget {
  List<ListTileModel> contacts = [
    ListTileModel(
        leading: Icons.person,
        title: "Mohamed Samy",
        subTitle: "Hello",
        trailing: "07:47 PM",
      status: Icons.done_all,
      statusColor: Colors.blue
    ),
    ListTileModel(
        leading: Icons.person,
        title: "Mohamed Ahmed",
        subTitle: "Hello",
        trailing: "07:47 PM",
        status: Icons.done_all,
        statusColor: Colors.grey
    ),
    ListTileModel(
        leading: Icons.person,
        title: "Alaa Hassan",
        subTitle: "Hello",
        trailing: "07:47 PM",
        status: Icons.done,
        statusColor: Colors.grey
    ),
    ListTileModel(
        leading: Icons.person,
        title: "Reham Omar",
        subTitle: "Hello",
        trailing: "07:47 PM",
        status: Icons.alarm,
        statusColor: Colors.grey
    ),

    ListTileModel(
        leading: Icons.person,
        title: "Shimaa Ahmed",
        subTitle: "Hello",
        trailing: "07:47 PM",
        status: Icons.done_all,
        statusColor: Colors.grey
    ),
    ListTileModel(
        leading: Icons.person,
        title: "Asmaa Ahmed",
        subTitle: "Hello",
        trailing: "07:47 PM",
        status: Icons.done_all,
        statusColor: Colors.grey
    ),
    ListTileModel(
        leading: Icons.person,
        title: "Huda Ahmed",
        subTitle: "Hello",
        trailing: "07:47 PM",
        status: Icons.done_all,
        statusColor: Colors.grey
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.green,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
                  child: Row(
                    children: [
                      Text("WhatsApp",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                // Expanded(child: SizedBox()),
                   Container(
                     child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0,bottom: 5),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsetsDirectional.only(start: 20),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: Colors.white,
                              width: 5,
                            )),

                            ),

                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Text("CHATS",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(

                             padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Text("STATUS",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Text("CALLS",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                      ],
                  ),
                   ),

              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.only(right: 20,left: 100),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              itemBuilder: (BuildContext context, int index) =>
                  CustomListTile(listTileModel: contacts[index]),
              itemCount: contacts.length,
            ),
          ),


        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        elevation: 20,
        child: Icon(Icons.chat,color: Colors.white,),
        onPressed: (){},
      ),
    );
  }
}
