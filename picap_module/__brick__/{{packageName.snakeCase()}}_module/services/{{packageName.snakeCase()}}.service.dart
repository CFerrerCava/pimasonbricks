import 'package:injectable/injectable.dart';
import 'package:pi_core/api/either/api_result.dart';
import 'package:pi_core/app_component.dart';
import 'package:pi_core/exception/api.exception.dart';
import 'package:pi_core/base/base_reactive.service_mixin.dart';

@lazySingleton
class {{packageName.pascalCase()}}Services extends AppBaseReactiveService {

    final {{packageName.pascalCase()}}Repository _{{packageName.camelCase()}}Repository;
 
  @factoryMethod
  {{packageName.pascalCase()}}Services.from(this._{{packageName.camelCase()}}Repository){
     listenToReactiveValues([loadingValue,]);
  }

 


  {{#endpoints}}
    Future<void> {{name.camelCase()}}() {
    loadingValue.value = true;
    return  _{{packageName.camelCase()}}.{{path.camelCase()}}()
        .then((value) => value)
        .handleExceptionError()
        .whenComplete(() => loadingValue.value = false);
  }
  {{/endpoints}}
}
