import 'package:injectable/injectable.dart';
import 'package:pi_core/api/either/api_result.dart';
import 'package:pi_core/base/app_base.repository.dart';

@Injectable()
class {{packageName.pascalCase()}}Repository {
  final {{packageName.pascalCase()}}DataSource _${{packageName.pascalCase()}}DataSource;

  @factoryMethod
  {{packageName.pascalCase()}}Repository.from(this._${{packageName.pascalCase()}}DataSource);

{{#endpoints}}
    Future<ApiResult<dynamic>> {{path.camelCase()}}(Model request) =>
      dataSource.{{path.camelCase()}}(request).then((value) => value.toApiResult());
  {{/endpoints}}
 
}
