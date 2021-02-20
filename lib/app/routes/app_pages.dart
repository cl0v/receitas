import 'package:receitas/app/modules/add/views/add_view.dart';
import 'package:receitas/app/modules/add/bindings/add_binding.dart';
import 'package:receitas/app/modules/splash/views/splash_view.dart';
import 'package:receitas/app/modules/home/views/home_view.dart';
import 'package:receitas/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.SPLASH, 
      page:()=> SplashView(), 
    ),
    GetPage(
      name: Routes.ADD, 
      page:()=> AddView(), 
      binding: AddBinding(),
    ),
  ];
}