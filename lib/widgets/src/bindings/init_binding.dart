import 'package:get/get.dart';
import 'package:school_trip_app/widgets/src/controller/calculator_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CalculatorController(), permanent: true);
  }
}
