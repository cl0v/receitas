import 'package:get/get.dart';
import 'package:receitas/app/data/provider/launch_provider.dart';
import 'package:receitas/app/data/repository/launch_repository.dart';
import 'package:receitas/app/modules/add/controllers/add_controller.dart';

class AddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddController>(
      () => AddController(
        repository: LaunchRepository(provider: LaunchProvider())
      ),
    );
  }
}
