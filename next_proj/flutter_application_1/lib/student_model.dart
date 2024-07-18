class StudentModel {
  String firstName;
  String secondName;
  String address;
  String mobileNumber;

  StudentModel(
      this.firstName, this.secondName, this.address, this.mobileNumber);

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'secondName': secondName,
      'address': address,
      'mobileNumber': mobileNumber,
    };
  }

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      json['firstName'],
      json['secondName'],
      json['address'],
      json['mobileNumber'],
    );
  }
}
