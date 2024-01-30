// ignore_for_file: file_names, non_constant_identifier_names
import 'dart:convert';

Signup signUpFromJson(String str) => Signup.fromJson(json.decode(str));
String signUpToJson(Signup data) => json.encode(data.toJson());

class Signup {
  String? email;
  String? password;
  String? fkRoleId;
  String? address;
  String? district;
  String? DistrictId;
  String? firstName;
  String? fklocalbodyId;
  String? localbodyName;
  String? fklocalbodyTypeId;
  String? pincode;
  String? lastname;

  Signup({
    this.email,
    this.password,
    this.fkRoleId,
    this.address,
    this.district,
    this.DistrictId,
    this.firstName,
    this.fklocalbodyId,
    this.localbodyName,
    this.fklocalbodyTypeId,
    this.pincode,
    this.lastname,
  });

  factory Signup.fromJson(Map<String, dynamic> json) => Signup(
        email: json["email"],
        password: json["password"],
        fkRoleId: json["fkRoleId"],
        address: json["address"],
        district: json["district"],
        DistrictId: json["DistrictId"],
        firstName: json["firstName"],
        fklocalbodyId: json["fklocalbodyId"],
        localbodyName: json["localbodyName"],
        fklocalbodyTypeId: json["fklocalbodyTypeId"],
        pincode: json["pincode"],
        lastname: json["lastname"],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['fkRoleId'] = fkRoleId;
    data['address'] = address;
    data['district'] = district;
    data['DistrictId'] = DistrictId;
    data['firstName'] = firstName;
    data['fklocalbodyId'] = fklocalbodyId;
    data['localbodyName'] = localbodyName;
    data['fklocalbodyTypeId'] = fklocalbodyTypeId;
    data['pincode'] = pincode;
    data['lastname'] = lastname;
    return data;
  }
}
