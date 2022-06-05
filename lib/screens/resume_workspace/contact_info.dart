 import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/models/resume_model.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  int i = 0;
  bool color = false;

  final ImagePicker _picker = ImagePicker();
  File? _image;

  final GlobalKey<FormState> _contactkey = GlobalKey<FormState>();
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _phonecontroller = TextEditingController();
  final TextEditingController _address1controller = TextEditingController();
  final TextEditingController _address2controller = TextEditingController();
  final TextEditingController _address3controller = TextEditingController();

  String? name;
  String? email;
  int? phone;
  String? address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text("Contact Info"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: const Alignment(0, 0.5),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        i = 0;
                        if (i == 0) {
                          color = false;
                        }
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Contact",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 5,
                          width: 150,
                          color: (color)
                              ? Colors.white.withOpacity(0.0)
                              : Colors.white,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        i = 1;
                        if (i == 1) {
                          color = true;
                        }
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Photo",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 5,
                          width: 150,
                          color: (color)
                              ? Colors.white
                              : Colors.white.withOpacity(0.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              alignment: Alignment.center,
              child: IndexedStack(
                alignment: Alignment.center,
                index: i,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.82,
                      color: Colors.white,
                      margin: const EdgeInsets.only(bottom: 100),
                      child: Form(
                        key: _contactkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/user.png",
                                    height: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    child: TextFormField(
                                      controller: _namecontroller,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "please enter name first...";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        name = val;
                                      },
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                      decoration: const InputDecoration(
                                        hintText: "Name",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/email.png",
                                    height: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    child: TextFormField(
                                      controller: _emailcontroller,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "please enter email first...";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        email = val;
                                      },
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                      decoration: const InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/smartphone-call.png",
                                    height: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    child: TextFormField(
                                      controller: _phonecontroller,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "please enter phone first...";
                                        } else if (val.length != 10) {
                                          return "please enter valid length of phone number...";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        phone = int.parse(val!);
                                      },
                                      keyboardType: TextInputType.number,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                      decoration: const InputDecoration(
                                        hintText: "Phone",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/pin.png",
                                    height: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    child: TextFormField(
                                      controller: _address1controller,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "please enter address first...";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        address = val;
                                      },
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                      decoration: const InputDecoration(
                                        hintText:
                                            "Address (Street/Building No.)",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    child: TextFormField(
                                      controller: _address2controller,
                                      onSaved: (val) {
                                        address = address! + val!;
                                      },
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                      decoration: const InputDecoration(
                                        hintText: "Address Line 2",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    child: TextFormField(
                                      controller: _address3controller,
                                      onSaved: (val) {
                                        address = address! + val!;
                                      },
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                      decoration: const InputDecoration(
                                        hintText: "Address Line 3",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if (_contactkey.currentState!.validate()) {
                                      _contactkey.currentState!.save();

                                      resume.name = name;
                                      resume.email = email;
                                      resume.phone = phone;
                                      resume.address = address;

                                    }
                                  },
                                  child: const Text("submit"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    _contactkey.currentState!.reset();

                                    name = "";
                                    email = "";
                                    phone = 0;
                                    address = "";

                                    resume.name = "";
                                    resume.email = "";
                                    resume.phone = 0;
                                    resume.address = "";

                                  },
                                  child: const Text("reset"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.82,
                    color: Colors.white,
                    margin: const EdgeInsets.only(bottom: 350),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 80,
                          backgroundImage:
                              (_image != null) ? FileImage(_image!) : null,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              (_image == null)
                                  ? const Text(
                                      "Add",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    )
                                  : Container(),
                              Align(
                                alignment: const Alignment(0.9, 0.9),
                                child: FloatingActionButton(
                                  onPressed: () async {
                                    XFile? xdfile = await _picker.pickImage(source: ImageSource.camera);

                                    String path = xdfile!.path;

                                    File file = File(path);

                                    setState(() {
                                      _image = file;
                                    });
                                    resume.image = _image;
                                  },
                                  child: const Icon(Icons.add),
                                  mini: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
