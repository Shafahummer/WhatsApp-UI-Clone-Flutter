import 'package:flutter/material.dart';
import '../model/chat.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, i) => Column(children: [
              Divider(
                height: 20.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: NetworkImage(messageData[i].imageUrl),
                ),
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(messageData[i].name,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(messageData[i].time,
                          style: TextStyle(color: Colors.grey, fontSize: 16.0))
                    ]),
                subtitle: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 150,
                            child: Text(
                              messageData[i].message,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15.0),
                            ),
                          ),
                          if (messageData[i].mCount != "")
                            Container(
                              width: 20.0,
                              height: 20.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff25d366)),
                              child: Center(
                                child: Text(
                                  messageData[i].mCount,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10.0),
                                ),
                              ),
                            )
                        ])),
                onTap: () {},
              ),
            ]));
  }
}
