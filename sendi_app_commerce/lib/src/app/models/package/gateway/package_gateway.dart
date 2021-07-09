import 'package:sendi_app_commerce/src/app/models/package/package.dart';

abstract class PackageGeteway {
  Future<Package> getById(String id);
  Future<List<Package>> getAll();
}
