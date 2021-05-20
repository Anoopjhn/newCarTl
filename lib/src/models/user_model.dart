/// user_data : {"id":"1","name":"Sabith N K","emp_code":"SM-PM-009","hrms_id":"HRM-007","contact_number":"9087765187","email":"sabith@test.com","branch_id":"1","spc":"test","location":"1","photo":"sample.jpg","team_lead":"0","status":"1","Jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiMSIsImFjY2Vzc190b2tlbiI6IlAzSzZCIiwiZXhwIjoxNjIxNTc4NjgyfQ.RYxdgW6WirxgcMoZ8qLvuwlqB-kdvg-QyTNQZw1Ey6A"}
/// tl_data : null
/// br_data : {"id":"1","title":"Popular Edapally","address":"NH 17,\r\nBy Pass Road,\r\nOpposite Oberon mall,\r\nEdapally","mobile":"9871097699","email":"popular_edapally@test.com","lat":"10.787877","lon":"3.7878978","status":"1"}

class UserModel {
  User_data _userData;
  dynamic _tlData;
  Br_data _brData;

  User_data get userData => _userData;
  dynamic get tlData => _tlData;
  Br_data get brData => _brData;

  UserModel({
      User_data userData, 
      dynamic tlData, 
      Br_data brData}){
    _userData = userData;
    _tlData = tlData;
    _brData = brData;
}

  UserModel.fromJson(dynamic json) {
    _userData = json["user_data"] != null ? User_data.fromJson(json["user_data"]) : null;
    _tlData = json["tl_data"];
    _brData = json["br_data"] != null ? Br_data.fromJson(json["br_data"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_userData != null) {
      map["user_data"] = _userData.toJson();
    }
    map["tl_data"] = _tlData;
    if (_brData != null) {
      map["br_data"] = _brData.toJson();
    }
    return map;
  }

}

/// id : "1"
/// title : "Popular Edapally"
/// address : "NH 17,\r\nBy Pass Road,\r\nOpposite Oberon mall,\r\nEdapally"
/// mobile : "9871097699"
/// email : "popular_edapally@test.com"
/// lat : "10.787877"
/// lon : "3.7878978"
/// status : "1"

class Br_data {
  String _id;
  String _title;
  String _address;
  String _mobile;
  String _email;
  String _lat;
  String _lon;
  String _status;

  String get id => _id;
  String get title => _title;
  String get address => _address;
  String get mobile => _mobile;
  String get email => _email;
  String get lat => _lat;
  String get lon => _lon;
  String get status => _status;

  Br_data({
      String id, 
      String title, 
      String address, 
      String mobile, 
      String email, 
      String lat, 
      String lon, 
      String status}){
    _id = id;
    _title = title;
    _address = address;
    _mobile = mobile;
    _email = email;
    _lat = lat;
    _lon = lon;
    _status = status;
}

  Br_data.fromJson(dynamic json) {
    _id = json["id"];
    _title = json["title"];
    _address = json["address"];
    _mobile = json["mobile"];
    _email = json["email"];
    _lat = json["lat"];
    _lon = json["lon"];
    _status = json["status"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["title"] = _title;
    map["address"] = _address;
    map["mobile"] = _mobile;
    map["email"] = _email;
    map["lat"] = _lat;
    map["lon"] = _lon;
    map["status"] = _status;
    return map;
  }

}

/// id : "1"
/// name : "Sabith N K"
/// emp_code : "SM-PM-009"
/// hrms_id : "HRM-007"
/// contact_number : "9087765187"
/// email : "sabith@test.com"
/// branch_id : "1"
/// spc : "test"
/// location : "1"
/// photo : "sample.jpg"
/// team_lead : "0"
/// status : "1"
/// Jwt : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiMSIsImFjY2Vzc190b2tlbiI6IlAzSzZCIiwiZXhwIjoxNjIxNTc4NjgyfQ.RYxdgW6WirxgcMoZ8qLvuwlqB-kdvg-QyTNQZw1Ey6A"

class User_data {
  String _id;
  String _name;
  String _empCode;
  String _hrmsId;
  String _contactNumber;
  String _email;
  String _branchId;
  String _spc;
  String _location;
  String _photo;
  String _teamLead;
  String _status;
  String _jwt;

  String get id => _id;
  String get name => _name;
  String get empCode => _empCode;
  String get hrmsId => _hrmsId;
  String get contactNumber => _contactNumber;
  String get email => _email;
  String get branchId => _branchId;
  String get spc => _spc;
  String get location => _location;
  String get photo => _photo;
  String get teamLead => _teamLead;
  String get status => _status;
  String get jwt => _jwt;

  User_data({
      String id, 
      String name, 
      String empCode, 
      String hrmsId, 
      String contactNumber, 
      String email, 
      String branchId, 
      String spc, 
      String location, 
      String photo, 
      String teamLead, 
      String status, 
      String jwt}){
    _id = id;
    _name = name;
    _empCode = empCode;
    _hrmsId = hrmsId;
    _contactNumber = contactNumber;
    _email = email;
    _branchId = branchId;
    _spc = spc;
    _location = location;
    _photo = photo;
    _teamLead = teamLead;
    _status = status;
    _jwt = jwt;
}

  User_data.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _empCode = json["emp_code"];
    _hrmsId = json["hrms_id"];
    _contactNumber = json["contact_number"];
    _email = json["email"];
    _branchId = json["branch_id"];
    _spc = json["spc"];
    _location = json["location"];
    _photo = json["photo"];
    _teamLead = json["team_lead"];
    _status = json["status"];
    _jwt = json["Jwt"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["emp_code"] = _empCode;
    map["hrms_id"] = _hrmsId;
    map["contact_number"] = _contactNumber;
    map["email"] = _email;
    map["branch_id"] = _branchId;
    map["spc"] = _spc;
    map["location"] = _location;
    map["photo"] = _photo;
    map["team_lead"] = _teamLead;
    map["status"] = _status;
    map["Jwt"] = _jwt;
    return map;
  }

}