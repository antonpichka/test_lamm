import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Season extends BaseModel {
  final int seasonNumber;
  final DateTime startOfSeasonTime;
  final DateTime endOfSeasonTime;

  const Season(super.uniqueId, this.seasonNumber, this.startOfSeasonTime, this.endOfSeasonTime);

  @override
  Season clone() {
    return Season(uniqueId, seasonNumber, startOfSeasonTime, endOfSeasonTime);
  }

  @override
  String toString() {
    return "Season(uniqueId: $uniqueId, seasonNumber: $seasonNumber, startOfSeasonTime: $startOfSeasonTime, endOfSeasonTime: $endOfSeasonTime)";
  }
}