import 'package:flutter/material.dart';
import 'package:scoped_model_app/enums/view_states.dart';
import 'package:scoped_model_app/scoped_models/Home_model.dart';
import 'package:scoped_model_app/ui/widgets/busy_overlay.dart';
import 'base_view.dart';
import 'error_view.dart';
import 'success_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        builder: (context, child, model) => BusyOverlay(
              show: model.state == ViewState.Busy,
              child: Scaffold(
                body: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(model.title)
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(onPressed: () async {
                  var result = await model.saveData();

                  if (result) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SuccessView(title: "Duplicate this text",)));
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ErrorView()));
                  }
                }),
              ),
            ));
  }
}
