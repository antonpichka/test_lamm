import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/named_utility/enum_routers_utility.dart';
import 'package:test_lamm/named_vm/routers_vm/enum_data_for_routers_vm.dart';

final class DataForRoutersVM extends BaseDataForNamed<EnumDataForRoutersVM> {
  Token token;
  EnumRoutersUtility enumRoutersUtility;

  DataForRoutersVM(super.isLoading, this.token, this.enumRoutersUtility);

  @override
  EnumDataForRoutersVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForRoutersVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForRoutersVM.exception;
    }
    if(token.uniqueId.isEmpty) {
      return EnumDataForRoutersVM.loginVM;
    }
    if(enumRoutersUtility == EnumRoutersUtility.searchGame) {
      return EnumDataForRoutersVM.searchGame;
    }
    return EnumDataForRoutersVM.mainVM;
  }

  @override
  String toString() {
    return "DataForRoutersVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController, "
        "token: $token, "
        "enumRoutersUtility: $enumRoutersUtility)";
  }
}