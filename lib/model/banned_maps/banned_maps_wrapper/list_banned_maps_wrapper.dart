import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/banned_maps/banned_maps.dart';
import 'package:test_lamm/model/banned_maps/banned_maps_wrapper/banned_maps_wrapper.dart';
import 'package:test_lamm/model/banned_maps/list_banned_maps.dart';

@immutable
base class ListBannedMapsWrapper extends BaseListModelWrapper {
  const ListBannedMapsWrapper(super.listsListObject);

  @override
  ListBannedMaps createListModel() {
    final List<BannedMaps> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final bannedMapsWrapper = BannedMapsWrapper(itemListObject);
      listModel.add(bannedMapsWrapper.createModel());
    }
    return ListBannedMaps(listModel);
  }
}