import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../common/style_guide/colors.dart';
import '../stores/toggle_store/toggle_store.dart';
import 'app_input_field.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({
     this.controller,
    super.key,
    this.validator,
    this.onChanged,
    this.inputFormatters,
    this.toggleStore,
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final ToggleStore? toggleStore;

  @override
  Widget build(BuildContext context) {
    // Create or use provided ToggleStore
    final store = toggleStore ?? ToggleStore();

    // Provide the ToggleStore and wrap the content widget
    return Provider<ToggleStore>.value(
      value: store,
      child: _PasswordInputFieldContent(
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        inputFormatters: inputFormatters,
      ),
    );
  }
}

class _PasswordInputFieldContent extends StatelessWidget {
  const _PasswordInputFieldContent({
     this.controller,
    this.validator,
    this.onChanged,
    this.inputFormatters,
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ToggleStore>(context);

    return Observer(
      builder: (_) {
        final isPasswordVisible = store.value;

        return AppInputField(
          controller: controller,
          labelText: 'Password',
          obscureText: !isPasswordVisible,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          validator: validator,
          onChanged: onChanged,
          inputFormatters: inputFormatters,
          suffixIcon: IconButton(
            icon: Icon(
              isPasswordVisible ? FontAwesomeIcons.eye: FontAwesomeIcons.eyeSlash,
              color: AppColors.color475569,
              size: 16,
            ),
            onPressed: store.toggle,
          ),
        );
      },
    );
  }
}
