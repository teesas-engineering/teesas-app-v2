import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../common/utils/form_mixin.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/enum/button_type.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/enum/input_type.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/app_input_field.dart';
import '../../../_shared/widgets/password_input_field.dart';
import '../../../_shared/widgets/phone_email_input_field.dart';
import '../../../_shared/widgets/secondary_chip.dart';
import '../stores/onboarding_store.dart';

class AddUserForm extends StatelessWidget with FormMixin {
  const AddUserForm({required this.store, super.key});

  final OnboardingStore store;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: store.formKey,
      child: SingleChildScrollView(
        child: PagePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.height,
              Text(
                'Add User',
                style: AppTypography.headlineMedium.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
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
                onChange: (value, type) {},
              ),
              16.height,
              GestureDetector(
                onTap: () => store.selectCountry(context),
                child: Observer(
                  builder: (_) => AppInputField(
                    controller: TextEditingController(
                      text: store.countryDisplayText,
                    ),
                    labelText: 'Country',
                    hintText: 'Country',
                    readOnly: true,
                    validator: isRequired,
                    suffixIcon: const Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.color475569,
                    ),
                  ),
                ),
              ),
              16.height,
              GestureDetector(
                onTap: () => store.selectDate(context),
                child: Observer(
                  builder: (_) => AppInputField(
                    controller: TextEditingController(
                      text: store.formattedDate,
                    ),
                    labelText: 'Date of Birth',
                    hintText: 'Date of Birth',
                    readOnly: true,
                    validator: isRequired,
                  ),
                ),
              ),
              16.height,
              Row(
                children: Gender.values
                    .map(
                      (gender) => Observer(
                        builder: (_) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: gender == Gender.values.first ? 0 : 8,
                            ),
                            child: AppSecondaryChip(
                              text: gender.displayName,
                              isActive: store.selectedGender == gender,
                              onTap: () => store.setGender(gender),
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
              PasswordInputField(
                controller: store.passwordController,
                validator: isRequired,
              ),
              32.height,
              AppButton(
                text: 'Save & Continue',
                onPressed: store.handleSaveAndContinue,
                buttonType: ButtonType.secondary,
              ),
              32.height,
            ],
          ),
        ),
      ),
    );
  }
}
