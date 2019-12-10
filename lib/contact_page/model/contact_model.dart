class ContactModel {
  String id;
  String firstName;
  String lastName;
  int age;
  String photo;

  static List<ContactModel> parseToList(List<dynamic> json) {
    List<ContactModel> list = [];
    json.forEach((contactModel) {
      list.add(ContactModel.parse(contactModel));
    });
    return list;
  }

  ContactModel.parse(Map<String, dynamic> json) {
    if (json['id'] != null) id = json['id'] ?? '';
    if (json['firstName'] != null) firstName = json['firstName'] ?? '';
    if (json['lastName'] != null) lastName = json['lastName'] ?? '';
    if (json['age'] != null) age = json['age'] ?? 0;
    if (json['photo'] != null) photo = json['photo'] ?? '';
  }
}

class ServiceResponse {
  String message;
  List<ContactModel> data;

  ServiceResponse.parse(Map<String, dynamic> json) {
    if (json['message'] != null) message = json['message'] ?? '';
    if (json['data'] != null) data = ContactModel.parseToList(json['data']);
  }
}
