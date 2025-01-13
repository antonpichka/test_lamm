import 'dart:io';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user/user.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_utility/algorithms_utility.dart';
import 'package:test_lamm/named_utility/enum_routers_utility.dart';
import 'package:test_lamm/named_utility/keys_temp_cache_provider_utility.dart';
import 'package:test_lamm/named_vm/main_vm/data_for_main_vm.dart';
import 'package:test_lamm/named_vm/main_vm/enum_data_for_main_vm.dart';

final class MainVM {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForMainVM> _namedStreamWState;

  MainVM() {
    _namedStreamWState = lamm.DefaultStreamWState(DataForMainVM(true,Token("",""),UserWUsername("",User("",DateTime.now(),""),"")));
    _init();
  }

  Future<void> _init() async {
    _namedStreamWState.listenStreamDataForNamedFromCallback((event) {
      _build();
    });
    await _firstRequest();
    _namedStreamWState.notifyStreamDataForNamed();
  }

  // ignore: unused_element
  void _dispose() {
    _tempCacheProvider.dispose([]);
    _namedStreamWState.dispose();
  }

  void _build() {
    final dataWNamed = _namedStreamWState.getDataForNamed;
    switch (dataWNamed.getEnumDataForNamed) {
      case EnumDataForMainVM.isLoading:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "IsLoading");
        break;
      case EnumDataForMainVM.exception:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Exception(${dataWNamed.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForMainVM.navigation:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Navigation(\nExit: 0\nSearchGame: 1\nUnAuthorization: 2\nInput: )");
        final input = stdin.readLineSync();
        final numberWhereStrConvertedWZeroFromInput = AlgorithmsUtility.getNumberWhereStrConvertedWZeroFromInput(input);
        _choice(numberWhereStrConvertedWZeroFromInput);
        break;
    }
  }

  Future<void> _firstRequest() async {
    final userWUsername = UserWUsername(
        "5e4e48de-d1cd-11ef-9cd2-0242ac120002",
        User(
            "65a63bd2-d1cd-11ef-9cd2-0242ac120002",
            DateTime.fromMillisecondsSinceEpoch(1736516582),
            "Discord"),
        "Top1");
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
    _namedStreamWState
        .getDataForNamed
        .userWUsername = userWUsername;
  }

  void _choice(int number) {
    if(number == 0) {
      return;
    }
    final isWhereEqualsOneFromNumber = _namedStreamWState
        .getDataForNamed
        .isWhereEqualsOneFromNumber(number);
    if(isWhereEqualsOneFromNumber) {
      _firstQQChoiceQQIsWhereEqualsOneFromNumber();
      return;
    }
    final isWhereEqualsTwoFromNumber = _namedStreamWState
        .getDataForNamed
        .isWhereEqualsTwoFromNumber(number);
    if(isWhereEqualsTwoFromNumber) {
      _firstQQChoiceQQIsWhereEqualsTwoFromNumber();
      return;
    }
  }

  void _firstQQChoiceQQIsWhereEqualsOneFromNumber() {
    _tempCacheProvider.updateWNotify(KeysTempCacheProviderUtility.enumRoutersUtility, EnumRoutersUtility.searchGame);
    _dispose();
  }

  void _firstQQChoiceQQIsWhereEqualsTwoFromNumber() {
    _tempCacheProvider.updateWNotify(KeysTempCacheProviderUtility.token, Token("",""));
    _dispose();
  }
}