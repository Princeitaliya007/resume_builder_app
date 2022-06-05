import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/models/resume_model.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  TextStyle _textStyle = TextStyle(
    fontSize: 22,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );

  TextEditingController _nationalitycontroller = TextEditingController();
  final GlobalKey<FormState> _personaldetailsformkey = GlobalKey<FormState>();

  String? Nationality;
  dynamic grpval = "marital_status";
  DateTime date = DateTime.now();

  bool Englishcheck = false;
  bool Gujaraticheck = false;
  bool Hindicheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text("Personal Details"),
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
                height: MediaQuery.of(context).size.height * 0.85,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Form(
                  key: _personaldetailsformkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // DOB
                      Container(
                        child: const Text(
                          "DOB",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.81,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "${date.day}/${date.month}/${date.year}",
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () async {
                                DateTime? datetime = await showDatePicker(
                                  context: context,
                                  initialDate: date,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100),
                                );
                              },
                              icon: const Icon(
                                Icons.date_range,
                                size: 20,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                      ),

                      // Marital Status
                      Container(
                        child: const Text(
                          "Marital Status",
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
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Radio(
                              value: "Single",
                              groupValue: grpval,
                              onChanged: (val) {
                                setState(() {
                                  grpval = val;
                                });
                              },
                            ),
                            const Text(
                              "Single",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Radio(
                              value: "Married",
                              groupValue: grpval,
                              onChanged: (val) {
                                setState(() {
                                  grpval = val;
                                });
                              },
                            ),
                            const Text(
                              "Married",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Language known
                      Container(
                        child: const Text(
                          "Languages Known",
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
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Checkbox(
                            value: Englishcheck,
                            onChanged: (val) {
                              setState(() {
                                Englishcheck = val!;
                              });
                            },
                          ),
                          Text(
                            "English",
                            style: _textStyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Checkbox(
                            value: Hindicheck,
                            onChanged: (val) {
                              setState(() {
                                Hindicheck = val!;
                              });
                            },
                          ),
                          Text(
                            "Hindi",
                            style: _textStyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Checkbox(
                            value: Gujaraticheck,
                            onChanged: (val) {
                              setState(() {
                                Gujaraticheck = val!;
                              });
                            },
                          ),
                          Text(
                            "Gujarati",
                            style: _textStyle,
                          ),
                        ],
                      ),

                      // Nationality
                      Container(
                        child: const Text(
                          "Nationality",
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
                        width: MediaQuery.of(context).size.width * 0.81,
                        child: TextFormField(
                          controller: _nationalitycontroller,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "please enter nationality first";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            Nationality = val;
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
                            hintText: "Indian",
                            hintStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      Container(
                        height: 80,
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
    if (_personaldetailsformkey.currentState!.validate()) {
      _personaldetailsformkey.currentState!.save();

      Map<String, bool> languagesknown = <String, bool>{};

      languagesknown['English'] = Englishcheck;
      languagesknown['Hindi'] = Hindicheck;
      languagesknown['Gujarati'] = Gujaraticheck;

      resume.maritalstatus = grpval;
      resume.nationality = Nationality;
      resume.languagesknown = languagesknown;

      print(languagesknown);

    }
  }
}
