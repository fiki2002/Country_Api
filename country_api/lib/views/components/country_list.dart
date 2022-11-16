import 'package:country_api/models/country_app_model.dart';
import 'package:country_api/provider/countries_provider.dart';
import 'package:country_api/services/country_app_services.dart';
import 'package:country_api/views/widgets/country_group_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/app_fonts.dart';
import 'country_app_responsiveness.dart';

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
    final size = MediaQuery.of(context).size;

    CountryAppService countryAppService = CountryAppService();
    return Consumer<CountryProvider>(builder: (context, value, child) {
      return Expanded(
        child: FutureBuilder<List<Country>>(
            future: countryAppService.getAllCountries(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Please wait while the data is been fetched...',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontFamily: CountryAppFonts.axiformaRegular,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Text(
                  snapshot.error.toString(),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontFamily: CountryAppFonts.axiformaRegular,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text(
                    'Waiting...',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: CountryAppFonts.axiformaRegular,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.none) {
                return Center(
                  child: Text(
                    'Cannot establish connection with the server',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: CountryAppFonts.axiformaRegular,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                );
              }
              return SizedBox(
                height: CountryAppResponsiveness.isLandScape(context)
                    ? 250
                    : size.height * 0.7,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: value.countryGroups.length,
                    itemBuilder: (context, index) {
                      final countryGroup = value.countryGroups[index];
                      return CountryGroupWidget(
                        countryGroup: countryGroup,
                      );
                    }),
              );
            }),
      );
    });
  }
}
