import 'package:flutter/material.dart';
import 'Camera.dart';
import 'Chat.dart';
import 'Status.dart';
import 'Calls.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp", style: TextStyle(color: Colors.white)),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Tab(
                child: Text(
              "STATUS",
              style: Theme.of(context).textTheme.button,
            )),
            Tab(
                child: Text(
              "CALLS",
              style: Theme.of(context).textTheme.button,
            )),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.white,
              onPressed: () {})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      body: TabBarView(
        controller: _tabController,
        children: [Camera(), Chat(), Status(), Calls()],
      ),
    );
  }
}
