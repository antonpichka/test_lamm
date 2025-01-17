import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_killer_perk/picked_killer_perk.dart';

@immutable
base class ListPickedKillerPerk<T extends PickedKillerPerk> extends BaseListModel<T> {
  const ListPickedKillerPerk(super.listModel);

  @override
  ListPickedKillerPerk<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListPickedKillerPerk<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListPickedKillerPerk(listModel: [$strListModel])";
  }

  int getNumberOfPickedKillerPerkFromUniqueIdByUserParameterListModel(String uniqueIdByUser) {
    int iteration = 0;
    for(final T itemModel in listModel) {
      if(itemModel.user.uniqueId != uniqueIdByUser) {
        continue;
      }
      iteration++;
    }
    return iteration;
  }
}