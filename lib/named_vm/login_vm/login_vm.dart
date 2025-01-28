import 'dart:io';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/named_utility/algorithms_utility.dart';
import 'package:test_lamm/named_utility/keys_temp_cache_provider_utility.dart';
import 'package:test_lamm/named_vm/login_vm/data_for_login_vm.dart';
import 'package:test_lamm/named_vm/login_vm/enum_data_for_login_vm.dart';

final class LoginVM {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForLoginVM> _namedStreamWState;

  LoginVM() {
    _namedStreamWState = lamm.DefaultStreamWState(DataForLoginVM(true));
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
      case EnumDataForLoginVM.isLoading:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "IsLoading");
        break;
      case EnumDataForLoginVM.exception:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Exception(${dataWNamed.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForLoginVM.navigation:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Navigation(\nExit: 0\nDiscordAuth: 1\nInput: )");
        final input = stdin.readLineSync();
        final numberWhereStrConvertedWZeroFromInput = AlgorithmsUtility.getNumberWhereStrConvertedWZeroFromInput(input);
        _navigation(numberWhereStrConvertedWZeroFromInput);
        break;
    }
  }

  Future<void> _firstRequest() async {
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
  }

  void _navigation(int number) {
    if(number == 0) {
      return;
    }
    final isWhereEqualsOneFromNumber = _namedStreamWState
        .getDataForNamed
        .isWhereEqualsOneFromNumber(number);
    if(isWhereEqualsOneFromNumber) {
      _firstQQNavigationQQIsWhereEqualsOneFromNumber();
      return;
    }
  }

  void _firstQQNavigationQQIsWhereEqualsOneFromNumber() {
    /// Request
    final token = Token("e3234f2e-d1c2-11ef-9cd2-0242ac120002","Dq2wfsip3ke6EiMoCgH1K3DzpydjRiu0qIVRzSIgxEPdpXWmVHqP9TV7yhSDSDy8pQ1woJEd442z935fOTQ69oTyIJ1H1l4BvlbTXXkRoZ2u4MHyWHAOJfpjWAku65LGI4fhwSiSg4MaYQ3bYWiDFPo4TcjS7EvI8GQv0BJerYfrrK3m9BHu2bw1RIIyecEYCXCTr7TFAKmUH1lIBPe2ujWsD2OmYs4Lq9x4e5EuW0rVh5FqBR8A9elQLU4Yb85J6OuZ67tJEo1bTCrevfOZS0IrOsCVUpxK1wU6AKd8Y2KH9C34WPL9xpOv5RSSYt4W62LLuClyEeejjoxgPGBh9qbmu6Jp7Kww18uO5KwufC0sHS7oEPmQd6U15R4urgtAR2u8rz6WYhl0f6DjR3XFVTeTAPVsyoY5fZvoiGagrfQjr7b8kEJq2ogJMhtXkO1Tpf0KsI14gforF2UHa3OJ1Byi5aJxIthMzRM1GPAqzX5qFgWt6SvslFQIUWw9z0Q5");
    _tempCacheProvider.updateWNotify(KeysTempCacheProviderUtility.token, token);
    _dispose();
  }
}