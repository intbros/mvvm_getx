import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/viewmodels/initial_viewmodel.dart';
import 'package:getx/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter MVVM with GetX Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
      // 최초 App실행시 컨트롤러 바인딩
      initialBinding: InitialViewModel(),
      // GetX 라우트 설정
      initialRoute: "/",
      getPages: [
        // 메인
        GetPage(name: "/", page: () => HomeView()),
        /*
        // 상세화면
        GetPage(
            name: "/detail/:id",
            page: () => DetailView(),
            binding: BindingsBuilder(
                    () => Get.lazyPut<DetailViewModel>(() => DetailViewModel())),
            transition: Transition.downToUp),
        */
      ],
    );
  }
}