import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../common/constants/app_constants.dart';
import '../../../../common/enum/account_management_action.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../common/utils/form_mixin.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/data/dto/get_countries_dto/get_countries_country_dto.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/modal/countries_modal.dart';
import '../../../_shared/stores/account_management_store/account_management_store.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/app_input_field.dart';
import '../../../_shared/widgets/secondary_chip.dart';

class AddUserForm extends StatelessWidget with FormMixin {
  const AddUserForm({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<AccountManagementStore>();
    return SingleChildScrollView(
      child: PagePadding(
        child: Form(
          key: store.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.verticalSpace,
              Text(
                '${store.userAction == AccountManagementAction.edit ? 'Edit' : 'Add'} User',
                style: AppTypography.titleLarge.copyWith(
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
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
              Observer(
                builder: (_) => AppInputField(
                  onTap: () async {
                    final CountryDto? selected = await CountriesModal.show(
                      context,
                      selectedCountryName: store.selectedCountry?.name,
                    );
                    store.selectedCountry = selected;
                  },
                  controller: TextEditingController(
                    text: store.selectedCountry?.name ?? '',
                  ),
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
              GestureDetector(
                onTap: () => store.selectDate(context),
                child: Observer(
                  builder: (_) => AppInputField(
                    controller: TextEditingController(
                      text: store.formattedDate,
                    ),
                    labelText: 'Date of Birth',
                    hintText: 'Date of Birth',
                    onTap: () => unawaited(store.selectDate(context)),
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
                          return Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: gender == Gender.values.first ? 0 : 8,
                              ),
                              child: AppSecondaryChip(
                                text: gender.displayName,
                                isActive: store.selectedGender == gender,
                                onTap: () => store.selectedGender = gender,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                    .toList(),
              ),
              32.height,
              AppButton(
                text: 'Save & Continue',
                onPressed: store.saveAndContinue
              ),
              32.height,
            ],
          ),
        ),
      ),
    );
  }
}
