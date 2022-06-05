import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/models/resume_model.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final GlobalKey<FormState> _educationpagekey = GlobalKey<FormState>();
  TextEditingController _coursecontroller = TextEditingController();
  TextEditingController _schoolcollegecontroller = TextEditingController();
  TextEditingController _percentagecontroller = TextEditingController();
  TextEditingController _yearofpasscontroller = TextEditingController();

  String? course;
  String? schoolcollege;
  String? percentage;
  String? yearofpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("Education"),
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
                  key: _educationpagekey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          "Course/Degree",
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
                        child: TextFormField(
                          controller: _coursecontroller,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please enter course details";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            course = val;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.blueAccent),
                            ),
                            hintText: "B. Tech Information Technology",
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
                        child: TextFormField(
                          controller: _schoolcollegecontroller,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please enter school/college name";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            schoolcollege = val;
                          },
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.blueAccent),
                            ),
                            hintText: "Bhagvan Mahavir University",
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
                        padding: EdgeInsets.only(left: 20, top: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextFormField(
                          controller: _percentagecontroller,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please enter school/college percentage";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            percentage = val;
                          },
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
                            hintText: "70% (or) 7.0 CGPA",
                            hintStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      Container(
                        child: const Text(
                          "Year of Pass",
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
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _yearofpasscontroller,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please enter year of pass";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            yearofpass = val;
                          },
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.blueAccent),
                            ),
                            hintText: "2019",
                            hintStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
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
    if (_educationpagekey.currentState!.validate()) {
      _educationpagekey.currentState!.save();

      resume.course = course;
      resume.schoolcollege = schoolcollege;
      resume.percentage = percentage;
      resume.yearofpass = yearofpass;

      print(course);
      print(schoolcollege);
      print(percentage);
      print(yearofpass);
    }
  }
}
