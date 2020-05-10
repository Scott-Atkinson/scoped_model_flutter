import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_app/enums/view_states.dart';

export 'package:scoped_model_app/enums/view_states.dart';

class BaseModel extends Model {

   ViewState _viewState;
  ViewState get state => _viewState;

   void setState(ViewState newState){
    _viewState = newState;
    notifyListeners();
  }

}