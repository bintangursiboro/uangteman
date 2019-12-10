import 'package:dio/dio.dart';
import 'package:uangteman/contact_page/model/contact_model.dart';

class ContactService {
  Dio dio = Dio();
  static const String BASE_URL = 'https://simple-contact-crud.herokuapp.com/';

  Future<List<ContactModel>> fetchDataFromService() async {
    return await dio.get(BASE_URL + "contact").then((response) {
      return ServiceResponse.parse(response.data).data;
    });
  }
}
