import 'package:injectable/injectable.dart';
import 'package:pi_core/api/either/api_result.dart';
import 'package:pi_core/base/app_base.repository.dart';

@Injectable()
class {{packageName.pascalCase()}}Repository {
  final {{packageName.pascalCase()}}DataSource datasource;

  @factoryMethod
  {{packageName.pascalCase()}}Repository.from(datasource);

{{#endpoints}}
    Future<ApiResult<dynamic>> {{path.camelCase()}}(Model request) =>
      dataSource.{{path.camelCase()}}(request).then((value) => value.toApiResult());
  {{/endpoints}}
 
}
