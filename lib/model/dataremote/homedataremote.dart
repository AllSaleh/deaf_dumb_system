
import 'package:deaf_dumb_system/api/linksapi.dart';

import '../../api/crud.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);

  getdata() async {
    var response = await crud.getData(Applinks.categorise);

      return response.fold((l) => l, (r) => r);
    
  }
  showcategorisess(String cate) async {
    var response = await crud.getData('${Applinks.showcategorise}?cate=$cate&pageNumber=${1}&pageSize=${20}');

      return response.fold((l) => l, (r) => r);
    
  }
  searchdata(String search) async {
    var response = await crud.getData('${Applinks.search}?word=$search');

      return response.fold((l) => l, (r) => r);
    
  }
  
}
