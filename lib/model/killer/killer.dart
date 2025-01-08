import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Killer extends BaseModel {
  final String name;
  final String imagePath;

  const Killer(super.uniqueId, this.name, this.imagePath);

  @override
  Killer clone() {
    return Killer(uniqueId, name, imagePath);
  }

  @override
  String toString() {
    return "Killer(uniqueId: $uniqueId, name: $name, imagePath: $imagePath)";
  }
}