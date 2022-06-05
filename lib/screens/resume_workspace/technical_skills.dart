import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/models/resume_model.dart';

class TechnicalSkills extends StatefulWidget {
  const TechnicalSkills({Key? key}) : super(key: key);

  @override
  _TechnicalSkillsState createState() => _TechnicalSkillsState();
}

class _TechnicalSkillsState extends State<TechnicalSkills> {
  final GlobalKey<FormState> _technicalskillskey = GlobalKey<FormState>();
  List<Widget> inputfields = <Widget>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inputfields.add(getInputField());
    inputfields.add(getInputField());
  }

  @override
  Widget build(BuildContext context) {

    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("Technical Skills"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: 25,
              ),
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: _height *0.03,
                  ),
                  const Text(
                    "Enter Your Skills",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // InputField
                  Column(
                    children: inputfields.map((e) => e).toList(),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: _width * 0.35,
                        vertical: 15,
                      ),
                    ),
                    child: Icon(Icons.add),
                    onPressed: () {
                      inputfields.add(getInputField());
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getInputField() {
    return Row(
      children: [
        const Expanded(
          flex: 9,
          child: TextField(
            decoration: InputDecoration(
              hintText: "C Programming, Web Technical",
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            icon: const Icon(
              Icons.delete,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
