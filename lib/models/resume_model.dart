import 'dart:io';

class Resume {
  String? name;
  String? email;
  int? phone;
  String? address;
  File? image;
  String? maritalstatus;
  String? nationality;
  String? course;
  String? schoolcollege;
  String? percentage;
  String? yearofpass;
  String? employedstatus;
  String? companyname;
  String? expschoolcollege;
  String? roles;
  Map? languagesknown;

  Resume({
    this.name,
    this.email,
    this.phone,
    this.address,
    this.image,
    this.maritalstatus,
    this.nationality,
    this.course,
    this.schoolcollege,
    this.percentage,
    this.yearofpass,
    this.languagesknown,
    this.employedstatus,
    this.companyname,
    this.expschoolcollege,
    this.roles,
  });
}

Resume resume = Resume();
