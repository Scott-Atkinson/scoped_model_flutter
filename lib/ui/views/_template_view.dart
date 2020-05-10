import 'package:flutter/material.dart';
import 'package:scoped_model_app/scoped_models/Home_model.dart';
import 'base_view.dart';

class TemplateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        builder: (context, child, model) => 
        Scaffold(
          body: Center(
            child: Text(this.runtimeType.toString())
          ),
        )
    );
  }
}
