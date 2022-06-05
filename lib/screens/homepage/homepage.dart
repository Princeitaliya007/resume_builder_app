import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("Resume Builder"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text(
                "RESUMES",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Spacer(),
                  Image.asset("assets/icons/open-cardboard-box.png", height: 60,),
                  Text("No Resumes + Create New Resume.", style: TextStyle(fontSize: 19, color: Colors.grey,),),
                  Spacer(flex: 5,),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
           Navigator.of(context).pushNamed("resumeworkspace");
        },
      ),
    );
  }
}
