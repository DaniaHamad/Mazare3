import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:path/path.dart';

class Crud {
  getRequesr(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        return responseBody;
      } else {
        print('Error :' + response.statusCode.toString());
      }
    } catch (e) {
      print('Error catch :${e}');
    }
  }

  postRequesr(String url, Map data) async {
    try {
      var response = await http.post(Uri.parse(url), body: data);
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        return responseBody;
      } else {
        print('Error :' + response.statusCode.toString());
      }
    } catch (e) {
      print('Error catch :${e}');
    }
  }

  postRequestWithFile(String url, Map data, File file) async {
    var request = await http.MultipartRequest('POST', Uri.parse(url));

    var length = await file.length();
    var stream = http.ByteStream(file.openRead());
    var multiPartFile = http.MultipartFile('file', stream, length,
        filename: basename(file.path));

    request.files.add(multiPartFile);

    data.forEach((key, value) {
      request.fields[key] = value;
    });

    var myrequest = await request.send();
    var respnse = await http.Response.fromStream(myrequest);

    if (myrequest.statusCode == 200) {
      return jsonDecode(respnse.body);
    } else {
      print('Error ${myrequest.statusCode}');
    }
  }
}
