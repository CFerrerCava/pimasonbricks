import 'package:pi_core/app_component.dart';
import 'package:pi_core/base/base.view_model.dart';
import 'package:pi_core/base/base_reactive.service_mixin.dart';
import 'package:pi_core/exception/api.exception.dart';

 


class {{packageName.pascalCase()}}ViewModel extends AppBaseViewModel {
  
  final _${{packageName.pascalCase()}}Services = locator<{{packageName.pascalCase()}}Services>();

  @override
  List<AppBaseReactiveService> get reactiveServices => [_${{packageName.pascalCase()}}Services];

  bool get loading => _${{packageName.pascalCase()}}Services.loadingReactiveValue.value;

  {{packageName.pascalCase()}}ViewModel();
}
