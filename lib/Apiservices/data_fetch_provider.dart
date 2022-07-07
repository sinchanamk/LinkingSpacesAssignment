// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:assignmnt/model/apimodel.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class APIProvider with ChangeNotifier {
  bool _error = false;
  String _errorMessage = "";
  DatafetchApiModel? _datafetchApiModel;

  DatafetchApiModel? get datafetchApiModel => _datafetchApiModel;

  bool get error => _error;

  String get errorMessage => _errorMessage;

  bool get ifLoading => _error == false && _datafetchApiModel == null;

  Future<void> getBanner() async {
    final uri = Uri.parse("https://picsum.photos/v2/list");
    final response = await post(uri);

    print("---------------------------");
    print("Fetching DatafetchApiModel uri");
    print("---------------------------");

    if (response.statusCode == 200) {
      try {
        final jsonResponse = jsonDecode(response.body);
        print('http response is-----${jsonResponse.toString()}');
        _datafetchApiModel = DatafetchApiModel.fromJson(jsonResponse);
        print("----ABC--------");
        print("DatafetchApiModel API Executed Successfully");
        print("----------------------------------");
        print("Json Response --- ${jsonResponse.toString()}");
      } catch (e) {
        _error = true;
        _errorMessage = e.toString();
        _datafetchApiModel = null;
        print("-----EFG-------");
        print("DatafetchApiModel API Execution Failed");
        print("----------------------------------");
      }
    } else {
      _error = true;
      _errorMessage =
          "Error response status code " + response.statusCode.toString();
      _datafetchApiModel = null;
      print("---------KLM------");
      print("DatafetchApiModel API Execution Failed");
      print("----------------------------------");
    }
    notifyListeners();
  }
}
