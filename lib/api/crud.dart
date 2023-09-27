// import 'dart:convert';
// // import 'dartz';

// import 'package:dartz/dartz.dart';
// import 'package:deaf_dumb_system/api/statusrequest.dart';
// import 'package:http/http.dart' as http;


// class Crud {
//   Future<Either<StatusRequst, Map>> PostData(String uri, Map data) async {
//     try {
//       var response = await http.post(Uri.parse(uri), body: data);

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         Map rsponsebody = jsonDecode(response.body);
//         // print(response.statusCode);

//         return Right(rsponsebody);
//       } else {
//         print('eeeeeeesss ${response.statusCode}');
//         return const Left(StatusRequst.serverfild);
//       }
//     } catch (e) {
//       print('sadasd$e');
//       return const Left(StatusRequst.serverfild);
//     }
//   }
// }
