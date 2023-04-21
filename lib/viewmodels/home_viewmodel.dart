import 'package:get/get.dart';
import 'package:getx/models/sample_model.dart';
import '../services/data_service.dart';

class HomeViewModel extends GetxController {
  final DataService _dataService = Get.find<DataService>();

  // 데이터 요청
  RxBool isDataFetching = false.obs;

  final RxList<SampleModel> _sampleList = <SampleModel>[].obs;

  List<SampleModel>? get sampleList => _sampleList.value;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  // 데이터 요청
  void fetchData() async {
    // 데이터 요청중
    isDataFetching(true);

    List<SampleModel>? sampleList = await _dataService.fetchData();

    // 데이터 요청 완료
    isDataFetching(false);

    if (sampleList != null) {
      _sampleList(sampleList);
    }
  }
}
