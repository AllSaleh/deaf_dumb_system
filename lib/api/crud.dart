import 'dart:convert';
// import 'dartz';

import 'package:dartz/dartz.dart';
import 'package:deaf_dumb_system/api/statusrequest.dart';
import 'package:deaf_dumb_system/core/functions/cheekinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequst, Map>> PostData(String uri, Map data) async {
    try {
      if (cheekinternet() == true) {
        var response = await http.post(Uri.parse(uri), body: data);

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map rsponsebody = jsonDecode(response.body);
          // print(response.statusCode);

          return Right(rsponsebody);
        } else {
          print('eeeeeeesss ${response.statusCode}');
          return const Left(StatusRequst.filedserver);
        }
      } else {
        return const Left(StatusRequst.NotEnternet);
      }
    } catch (e) {
      print('sadasd$e');
      return const Left(StatusRequst.filedserver);
    }
  }

  Future<Either<StatusRequst, dynamic>> getData(String url) async {
    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
       
       var responsebody = jsonDecode(response.body);
        // return responsebody;
        return Right(responsebody);
      } else {
        return const Left(StatusRequst.filedserver);
      }
    } catch (e) {
      print('erroe $e');
      return const Left(StatusRequst.Loading);
    }
  }
}
