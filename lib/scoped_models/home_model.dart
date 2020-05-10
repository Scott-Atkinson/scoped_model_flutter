import 'package:scoped_model_app/enums/view_states.dart';
import 'package:scoped_model_app/scoped_models/base_model.dart';
import 'package:scoped_model_app/services/storage_service.dart';

import '../service_locator.dart';

class HomeModel extends BaseModel {

  StorageService _storageService = locator<StorageService>();

  String _title = "Home view";
  String get title => _title;

 

  Future<bool> saveData () async {
    setState(ViewState.Busy);
    _title = "Saving Data";    
    await _storageService.saveData();
    _title = "Data saved";
    setState(ViewState.Retrieved);

  return true;

  }

 


}