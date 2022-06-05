import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/models/resume_model.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {

  final GlobalKey<FormState> _experiencekey = GlobalKey<FormState>();
  TextEditingController _companynamecontroller = TextEditingController();
  TextEditingController _expschoolcollegecontroller = TextEditingController();
  TextEditingController _rolescontroller = TextEditingController();

  dynamic grpvalue = "employee_status";

  String? Companyname;
  String? Experience;
  String? Roles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("Experience"),
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
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Form(
                  key: _experiencekey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          "Company Name",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: EdgeInsets.only(left: 20, top: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          validator: (val){
                            if(val!.isEmpty){
                              return "Please enter company name";
                            }
                            return null;
                          },
                          onSaved: (val){
                             Companyname = val;
                          },
                          controller: _companynamecontroller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.blueAccent),
                            ),
                            hintText: "New Enterprise, San Francisco",
                            hintStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      Container(
                        child: const Text(
                          "School/College/Institute",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 20, top: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          validator: (val){
                            if(val!.isEmpty){
                              return "Please enter experiences";
                            }
                            return null;
                          },
                          onSaved: (val){
                            Experience = val;
                          },
                          controller: _expschoolcollegecontroller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.blueAccent),
                            ),
                            hintText: "Quality Test Engineer",
                            hintStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      Container(
                        child: const Text(
                          "Roles(optional)",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: EdgeInsets.only(left: 20, top: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          onSaved: (val){
                            Roles = val;
                          },
                          controller: _rolescontroller,
                          maxLines: 3,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.blueAccent),
                            ),
                            hintText:
                                "Working with team members to come up\nwith new concepts and product\nanalysis...",
                            hintStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          "Employed status",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Radio(
                              value: "previously employee",
                              groupValue: grpvalue,
                              onChanged: (val) {
                                setState(() {
                                  grpvalue = val;
                                });
                              },
                            ),
                            Text("Previously Employed"),
                            Radio(
                              value: "Currently employee",
                              groupValue: grpvalue,
                              onChanged: (val) {
                                setState(() {
                                  grpvalue = val;
                                });
                              },
                            ),
                            Text("Currently Employed"),
                          ],
                        ),
                      ),
                      Container(
                        height: 90,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                          ),
                          onPressed: validateandsave,

                          child: Text("save"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  validateandsave() {
    if (_experiencekey.currentState!.validate()) {
      _experiencekey.currentState!.save();

      resume.employedstatus = grpvalue;
      resume.companyname = Companyname;
      resume.expschoolcollege = Experience;
      resume.roles = Roles;

      print(grpvalue);
      print(Companyname);
      print(Experience);
      print(Roles);
    }
  }
}
