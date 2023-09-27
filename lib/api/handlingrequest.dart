import 'package:deaf_dumb_system/api/statusrequest.dart';

hindlinData(response) {
  if (response is StatusRequst) {
    return response;
  } else {
    return StatusRequst.Sucsess;
  }
}
