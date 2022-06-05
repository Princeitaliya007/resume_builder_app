import 'package:flutter/material.dart';

class ResumeWorkspace extends StatefulWidget {
  const ResumeWorkspace({Key? key}) : super(key: key);

  @override
  _ResumeWorkspaceState createState() => _ResumeWorkspaceState();
}

class _ResumeWorkspaceState extends State<ResumeWorkspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("Resume Workspace"),
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
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text(
                "Build Options",
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
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    buildoptions(
                      icon: "assets/icons/account.png",
                      title: "Contact info",
                      pagename: "contactinfo",
                    ),
                    buildoptions(
                      icon: "assets/icons/briefcase.png",
                      title: "Carrier Objective",
                      pagename: "carrierobjective",
                    ),
                    buildoptions(
                      icon: "assets/icons/account.png",
                      title: "Personal Details",
                      pagename: "personaldetails",
                    ),
                    buildoptions(
                      icon: "assets/icons/graduation-cap.png",
                      title: "Education",
                      pagename: "education",
                    ),
                    buildoptions(
                      icon: "assets/icons/logical-thinking.png",
                      title: "Experience",
                      pagename: "experience",
                    ),
                    buildoptions(
                      icon: "assets/icons/certificate.png",
                      title: "Technical Skills",
                      pagename: "technicalskills",
                    ),
                    buildoptions(
                      icon: "assets/icons/open-book.png",
                      title: "Interest/Hobbies",
                      pagename: "",
                    ),
                    buildoptions(
                      icon: "assets/icons/project-management.png",
                      title: "Projects",
                      pagename: "",
                    ),
                    buildoptions(
                      icon: "assets/icons/experience.png",
                      title: "Achievements",
                      pagename: "",
                    ),
                    buildoptions(
                      icon: "assets/icons/handshake.png",
                      title: "References",
                      pagename: "",
                    ),
                    buildoptions(
                      icon: "assets/icons/declaration.png",
                      title: "Declaration",
                      pagename: "",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildoptions({required String icon, required String title, String? pagename}) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            Navigator.of(context).pushNamed(pagename!);
          },
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Image.asset(
                  icon,
                  height: 30,
                ),
               SizedBox(
                 width: 40,
               ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Spacer(
                  flex: 5,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
