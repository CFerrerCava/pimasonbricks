import 'package:stacked/stacked.dart';
import 'package:pi_gallery/extensions/build_context.extension.dart';
import 'package:pi_gallery/styles/styles.dart';
import 'package:flutter/material.dart';

class {{packageName.pascalCase()}}Widget extends ViewModelWidget<{{packageName.pascalCase()}}ViewModel> {
  const {{packageName.pascalCase()}}Widget({Key? key}) : super(key: key);

  @override
  Widget build(
          BuildContext context, {{packageName.pascalCase()}}ViewModel viewModel) =>
      const SizedBox.shrink();
}