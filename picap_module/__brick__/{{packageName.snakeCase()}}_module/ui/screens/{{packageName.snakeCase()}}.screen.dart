
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:pi_gallery/components/app_bar.component.dart';
import 'package:pi_gallery/extensions/build_context.extension.dart';
import 'package:pi_gallery/screens/base.screen.dart';
import 'package:pi_gallery/styles/styles.dart';

class {{packageName.pascalCase()}}Screen extends StackedView<{{packageName.pascalCase()}}ViewModel> {
 const {{packageName.pascalCase()}}Screen ({super.key});

  @override
  Widget builder(
          BuildContext context, {{packageName.pascalCase()}}ViewModel viewModel, Widget? child) =>
      const  BaseScreen(
          appBar: appBar('title'),
          body: Column(
            children: [],
          ));

  @override
  {{packageName.pascalCase()}}ViewModel viewModelBuilder(BuildContext context) => {{packageName.pascalCase()}}ViewModel();

}