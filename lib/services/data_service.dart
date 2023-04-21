import 'package:getx/models/sample_model.dart';

import '../helper/http_helper.dart';

class DataService {
  Future<List<SampleModel>?> fetchData() async {

    //String ur
    final responseJson = await HttpHelper.requestHttpFromJson(
        HttpRequestMethod.GET,
        '/albums/1/photos',
        /*{'phoneNum': phoneNum},*/ null,
        null);
    if (responseJson == null) {
      return null;
    } else {
      return parseData(responseJson);
    }
  }

  List<SampleModel>? parseData(dynamic jsonMap) {
    if (jsonMap != null ) {
      final sampleList = jsonMap
          .map<SampleModel>((json) => SampleModel.fromJson(json))
          .toList();
      return sampleList;
    } else {
      // 데이터 없음.
      return null;
    }
  }

}
