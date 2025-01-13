import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_vm/main_vm/enum_data_for_main_vm.dart';

final class DataForMainVM extends BaseDataForNamed<EnumDataForMainVM> {
  final Token token;
  UserWUsername userWUsername;

  DataForMainVM(super.isLoading,this.token, this.userWUsername);

  @override
  EnumDataForMainVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForMainVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForMainVM.exception;
    }
    return EnumDataForMainVM.navigation;
  }

  @override
  String toString() {
    return "DataForMainVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController, "
        "token: $token, "
        "userWUsername: $userWUsername)";
  }

  bool isWhereEqualsOneFromNumber(int number) {
    return number == 1;
  }

  bool isWhereEqualsTwoFromNumber(int number) {
    return number == 2;
  }
}