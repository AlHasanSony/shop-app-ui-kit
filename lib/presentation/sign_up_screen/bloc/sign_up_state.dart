// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.nameController,
    this.nameController1,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.signUpModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? nameController1;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        nameController,
        nameController1,
        emailController,
        passwordController,
        isShowPassword,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? nameController,
    TextEditingController? nameController1,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      nameController: nameController ?? this.nameController,
      nameController1: nameController1 ?? this.nameController1,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
