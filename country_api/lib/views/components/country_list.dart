import 'package:country_api/provider/countries_provider.dart';
import 'package:country_api/views/components/country_details.dart';
import 'package:country_api/views/widgets/country_group_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryList extends StatefulWidget {
  const CountryList({super.key});

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Provider.of<CountryProvider>(context, listen: false)
            .setAllCountryList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CountryProvider>(builder: (context, value, child) {
      return Expanded(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CountryDetails(),
              ),
            );
          },
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: value.countryGroups.length,
              itemBuilder: (context, index) {
                final countryGroup = value.countryGroups[index];
                return CountryGroupWidget(
                  countryGroup: countryGroup,
                );
              }),
        ),
      );
    });
  }
}
