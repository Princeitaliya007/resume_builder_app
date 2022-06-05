import 'package:flutter/material.dart';
import 'package:resume_builder_app/screens/resume_workspace/technical_skills.dart';
import 'routes/mainpageroutes.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
         "/" : (context) => HomePage(),
        "resumeworkspace" : (context) => ResumeWorkspace(),
        "contactinfo" : (context) => ContactInfo(),
        "carrierobjective" : (context) => CarrierObjective(),
        "personaldetails" : (context) => PersonalDetails(),
        "education" : (context) => Education(),
        "experience" : (context) => Experience(),
        "technicalskills" : (context) => TechnicalSkills(),
      },
    ),
  );
}