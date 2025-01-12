import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/named_vm/example_vm/data_for_example_vm.dart';
import 'package:test_lamm/named_vm/example_vm/enum_data_for_example_vm.dart';

final class ExampleVM {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForExampleVM> _namedStreamWState;

  ExampleVM() {
    _namedStreamWState = lamm.DefaultStreamWState(DataForExampleVM(true));
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
      case EnumDataForExampleVM.isLoading:
        lamm.debugPrint("Build: IsLoading");
        break;
      case EnumDataForExampleVM.exception:
        lamm.debugPrint("Build: Exception(${dataWNamed.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForExampleVM.success:
        lamm.debugPrint("Build: Success");
        break;
    }
  }

  Future<void> _firstRequest() async {
  }
}