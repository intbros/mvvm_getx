import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeView extends GetView<HomeViewModel> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('MVVM GetX template'),
      ),
      body: Column(
        children : [
          const Text('MVVM GetX sample'),
          Obx((){
            return ( controller.sampleList?.length == 0 ) ? const Text( 'no data') :
                          Text( (controller.sampleList![0]).title.toString() );
          } ),

        ]
      )
    );
  }
  
}