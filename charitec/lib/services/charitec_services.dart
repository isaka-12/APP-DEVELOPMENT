import 'dart:convert';
import 'dart:io';
import 'package:charitec/models/organizationModel.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CharitecAPIService {
  CharitecAPIService._instantiate();

  static final CharitecAPIService instance = CharitecAPIService._instantiate();
  final String BaseUrl = '10.0.2.2:3000'; //from local host

  Future<List<Organization>> fetchOrganizations() async {
    Map<String, dynamic> parameters = {};
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    Uri uri = Uri.http(BaseUrl, 'api/v1/organization/', parameters);
    Response response = await http.get(uri, headers: headers);
    
    if(response.statusCode==200){
      var result = json.decode(response.body);
      List<Organization> organizations = [];

      result.forEach((json) => organizations.add(Organization.fromJson(json)));
      return organizations;
    }
    else{
      throw Exception('Error while fetching organizations');
    }
    
  }
}
