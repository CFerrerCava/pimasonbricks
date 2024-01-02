import 'package:chopper/chopper.dart';

part '{{packageName.snakeCase()}}_datasource.chopper.dart';

@ChopperApi()
abstract class {{packageName.pascalCase()}}DataSource extends ChopperService {

  {{#endpoints}}
    @{{type.pascalCase()}}(path: '/{{path.snakeCase()}}')
    Future<Response?> {{path.camelCase()}}();
  {{/endpoints}}

  static _${{packageName.pascalCase()}}DataSource create([ChopperClient? client]) =>
      _${{packageName.camelCase()}}DataSource(client);
}
