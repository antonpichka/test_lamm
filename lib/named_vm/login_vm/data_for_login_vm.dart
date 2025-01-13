import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:test_lamm/named_vm/login_vm/enum_data_for_login_vm.dart';

final class DataForLoginVM extends BaseDataForNamed<EnumDataForLoginVM> {
  DataForLoginVM(super.isLoading);

  @override
  EnumDataForLoginVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForLoginVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForLoginVM.exception;
    }
    return EnumDataForLoginVM.navigation;
  }

  @override
  String toString() {
    return "DataForLoginVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController)";
  }

  bool isWhereEqualsOneFromNumber(int number) {
    return number == 1;
  }
}