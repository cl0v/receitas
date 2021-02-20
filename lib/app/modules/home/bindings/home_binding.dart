import 'package:get/get.dart';
import 'package:receitas/app/data/provider/launch_provider.dart';
import 'package:receitas/app/data/repository/launch_repository.dart';
import 'package:receitas/app/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        repository: LaunchRepository(
          provider: LaunchProvider(),
        ),
      ),
    );
  }
}
