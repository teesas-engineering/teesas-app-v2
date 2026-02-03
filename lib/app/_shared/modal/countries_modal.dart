import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../../common/dimens/app_dimens.dart';
import '../../../common/enum/state_type.dart';
import '../../../common/utils/modal_helper.dart';
import '../components/draggable_sheet.dart';
import '../stores/util_store/util_store.dart';
import '../widgets/app_input_field.dart';
import 'country_modal_item.dart';

class CountriesModal extends StatelessWidget {
  const CountriesModal({super.key, this.selectedCountryName});

  final String? selectedCountryName;

  static Future<String?> show(
    BuildContext context, {
    String? selectedCountryName,
  }) async {
    final result = await ModalHelper.show(
      context,
      child: CountriesModal(selectedCountryName: selectedCountryName),
    );
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final store = context.read<UtilStore>();

    return DraggableSheet(
      title: 'Choose Country',
      description:
          "Today is a new day. It's your day. You shape it. Sign in to start managing your projects.",
      child: (sheetScrollController) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: AppInputField(
                  hintText: 'Search countries',
                  prefixIcon: const Icon(Icons.search),
                  onChanged: (value) => store.countriesSearchQuery = value,
                ),
              ),
              Expanded(
                child: Observer(
                  builder: (_) {
                    final filtered = store.filteredCountries;
                    if (store.countriesStatus == Status.loading &&
                        filtered.isEmpty) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return Scrollbar(
                      thumbVisibility: true,
                      trackVisibility: true,
                      controller: sheetScrollController,
                      child: ListView.builder(
                        controller: sheetScrollController,
                        padding: const EdgeInsets.only(right: 8),
                        itemCount: filtered.length,
                        itemBuilder: (context, index) {
                          final country = filtered[index];
                          return CountryModalItem(
                            country: country,
                            isSelected:
                                selectedCountryName == country.name,
                            onTap: () => Navigator.pop(context, country.name),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
