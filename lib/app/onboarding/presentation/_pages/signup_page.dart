import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../../common/constants/app_constants.dart';
import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/enum/state_type.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../common/utils/form_mixin.dart';
import '../../../../common/utils/input_validators.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../../router/route_helper.dart';
import '../../../_shared/data/dto/get_countries_dto/get_countries_country_dto.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/enum/input_type.dart';
import '../../../_shared/modal/countries_modal.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/app_input_field.dart';
import '../../../_shared/widgets/password_input_field.dart';
import '../../../_shared/widgets/phone_email_input_field.dart';
import '../../../_shared/widgets/secondary_chip.dart';
import '../stores/signup_store.dart';
import '../widgets/footer.dart';

class SignupPage extends StatelessWidget with FormMixin {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<SignupStore>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
            child: Form(
              key: store.formKey,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.height,
                  Text(
                    'Sign Up',
                    style: AppTypography.headlineMedium.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  8.height,
                  Text(
                    'Create your profile.',
                    style: AppTypography.bodyLarge.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  24.height,
                  AppInputField(
                    controller: store.nameController,
                    labelText: 'Name',
                    hintText: 'Name',
                    validator: isRequired,
                  ),
                  16.height,
                  PhoneEmailInputField(
                    controller: store.phoneController,
                    inputType: InputType.phone,
                    labelText: 'Phone Number',
                    hintText: 'Phone Number',
                    onChange: (value, type) {
                      store.phoneNumber = value;
                    },
                  ),
                  16.height,
                  Observer(
                    builder: (_) => AppInputField(
                      onTap: () async {
                        final CountryDto? selected = await CountriesModal.show(
                          context,
                          selectedCountryName: store.selectedCountry?.name,
                        );
                        store.setCountry(selected);
                      },
                      controller: store.countryDisplayController,
                      labelText: 'Country',
                      hintText: 'Country',
                      readOnly: true,
                      prefixIcon: store.selectedCountry != null
                          ? IconButton(
                              onPressed: () {},
                              icon: SvgPicture.network(
                                store.selectedCountry!.image ??
                                    AppConstant.defaultCountryFlag,
                                width: 24,
                                height: 24,
                              ),
                            )
                          : null,
                      validator: isRequired,
                      suffixIcon: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.iconsSecondary,
                      ),
                    ),
                  ),
                  16.height,
                  Observer(
                    builder: (_) => AppInputField(
                      onTap: () => store.selectDate(context),
                      controller: TextEditingController(
                        text: store.formattedDate,
                      ),
                      labelText: 'Date of Birth',

                      hintText: 'Date of Birth',
                      readOnly: true,
                      validator: isRequired,
                    ),
                  ),
                  16.height,
                  Row(
                    children: Gender.values
                        .map(
                          (gender) => Observer(
                            builder: (_) {
                              return Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: gender == Gender.values.first ? 0 : 8,
                                  ),
                                  child: AppSecondaryChip(
                                    text: gender.displayName,
                                    isActive: store.selectedGender == gender,
                                    onTap: () => store.setGender(gender),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                        .toList(),
                  ),
                  16.height,
                  PhoneEmailInputField(
                    controller: store.emailController,
                    inputType: InputType.email,
                    labelText: 'Email Address',
                    hintText: 'Email Address',
                    onChange: (value, type) {},
                  ),
                  16.height,
                  AppInputField(
                    controller: store.parentNameController,
                    labelText: 'Parent Name',
                    hintText: 'Parent Name',
                    validator: isRequired,
                  ),
                  16.height,
                  PhoneEmailInputField(
                    controller: store.parentPhoneController,
                    inputType: InputType.phone,
                    labelText: 'Parent Phone Number',
                    hintText: 'Parent Phone Number',
                    onChange: (value, type) {
                      store.parentPhoneNumber = value;
                    },
                  ),
                  16.height,
                  PasswordInputField(
                    controller: store.passwordController,
                    validator: InputValidators.passwordValidator,
                  ),
                  16.height,
                  AppInputField(
                    controller: store.referralCodeController,
                    labelText: 'Enter Referral Code (Optional)',
                    hintText: 'Enter Referral Code (Optional)',
                  ),
                  32.height,

                  32.height,
                ],
              ),
            ),
          ),
        ),
        FooterParent(
          child: Column(
            children: [
              Observer(
                builder: (_) => AppButton(
                  text: 'Register',
                  onPressed: store.createAccount,
                  isLoading: store.signUpStatus.isLoading,
                  isDisabled: !store.isRegisterEnabled,
                ),
              ),
              24.height,
              Text.rich(
                TextSpan(
                  text: 'Already Registered? ',
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.bgBrand,
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          getIt<RouteHelper>().showLoginScreen(replace: true);
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
