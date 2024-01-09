import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../Routes/routes.dart';
import '../../../Utils/app_colors.dart';
import '../../../Utils/app_constants.dart';
import '../../../Utils/app_icons.dart';
import '../../../Utils/app_images.dart';
import '../../Widgets/titled_textField.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios),
        ),
        elevation: 1,
        title: Text(
          "Account Login".tr
        ),

      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Center(
              child: SvgPicture.asset(AppImages.login_logo),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitledTextField(
                    obscureText: false,
                    // controller: loginController.loginPasswordController.value,
                    title: "email".tr,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TitledTextField(
                    obscureText: false,
                    // controller: loginController.loginPasswordController.value,
                    title: "password".tr,
                    suffixIcon: IconButton(
                        splashRadius: 20,
                        onPressed: () {

                        },
                        icon:  Icon(Icons.remove_red_eye)
                      // SvgPicture.asset(
                      //   loginController.isSecureLoginPass.value
                      //       ? AppIcons.hide_pass_icon
                      //       : AppIcons.show_pass_icon,
                      //   color: authController.appModeTitle.value == "Dark"
                      //       ? AppColors.WHITE_COLOR
                      //       : AppColors.BLACK_COLOR,
                      // ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (_) {},
                            // checkColor: AppColors.MAIN_COLOR,
                            activeColor: AppColors.MAIN_COLOR,
                          ),
                          Text(
                            "Remember_me".tr,
                            style: const TextStyle(
                                 fontSize: 12),
                          )
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                        },
                        child: Text(
                          "forgot_password".tr,
                          style:  TextStyle(
                              color:  AppColors.DARK_GREY_COLOR, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: AppConstants.mediaWidth(context),
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        backgroundColor: MaterialStateProperty.all(
                          AppColors.MAIN_COLOR,
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          AppColors.WHITE_COLOR,
                        ),
                      ),
                      onPressed: () {
                        handleLoginRequest(context);
                      },
                      child: Text("login".tr),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "no_account_register".tr,
                        style: const TextStyle(
                             fontSize: 12),
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                        onPressed: () {
                        },
                        child: Text(
                          "register".tr,
                          style: const TextStyle(
                            color: AppColors.MAIN_COLOR,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  handleLoginRequest(BuildContext context) {}
}
