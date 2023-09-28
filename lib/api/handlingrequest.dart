import 'package:deaf_dumb_system/api/statusrequest.dart';

hndlinData(response) {
  if (response is StatusRequst) {
    return response;
  } else {
    return StatusRequst.Sucsess;
  }
}

