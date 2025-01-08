import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Maps extends BaseModel {
  final String name;
  final String imagePath;

  const Maps(super.uniqueId, this.name, this.imagePath);

  @override
  Maps clone() {
    return Maps(uniqueId, name, imagePath);
  }

  @override
  String toString() {
    return "Maps(uniqueId: $uniqueId, name: $name, imagePath: $imagePath)";
  }
}