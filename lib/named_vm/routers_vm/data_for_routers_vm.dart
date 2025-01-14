import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_utility/enum_routers_utility.dart';
import 'package:test_lamm/named_vm/routers_vm/enum_data_for_routers_vm.dart';

final class DataForRoutersVM extends BaseDataForNamed<EnumDataForRoutersVM> {
  Token token;
  EnumRoutersUtility enumRoutersUtility;
  UserWUsername userWUsername;

  DataForRoutersVM(super.isLoading, this.token, this.enumRoutersUtility, this.userWUsername);

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
    if(enumRoutersUtility == EnumRoutersUtility.searchGameVM) {
      return EnumDataForRoutersVM.searchGameVM;
    }
    if(enumRoutersUtility == EnumRoutersUtility.gameMatchVM) {
      return EnumDataForRoutersVM.gameMatchVM;
    }
    return EnumDataForRoutersVM.mainVM;
  }

  @override
  String toString() {
    return "DataForRoutersVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController, "
        "token: $token, "
        "enumRoutersUtility: $enumRoutersUtility, "
        "userWUsername: $userWUsername)";
  }

  bool isWhereIsNotEmptyByUniqueIdParameterToken() {
    return token.uniqueId.isNotEmpty;
  }
}