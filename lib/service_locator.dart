import 'package:get_it/get_it.dart';
import 'package:scoped_model_app/scoped_models/Home_model.dart';
import 'package:scoped_model_app/scoped_models/error_model.dart';
import 'package:scoped_model_app/scoped_models/success_model.dart';
import 'package:scoped_model_app/services/storage_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {

  // Register services
  locator.registerLazySingleton<StorageService>(() => StorageService());


  // Register models
  locator.registerFactory<HomeModel>(() => HomeModel());
  locator.registerFactory<SuccessModel>(() => SuccessModel());
  locator.registerFactory<ErrorModel>(() => ErrorModel());


}