import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../models/country_app_model.dart';
import '../theme/app_fonts.dart';

class CountryDetails extends StatelessWidget {
  const CountryDetails({
    super.key,
    required this.country,
  });
  final Country country;

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      country.flags?.png ?? '',
      country.coatOfArms?.png ?? '',
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          color: Theme.of(context).primaryColor,
          icon: const Icon(
            Icons.arrow_back_outlined,
            size: 20,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          country.name?.common ?? '',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: CountryAppFonts.axiformaRegular,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Swiper(
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(images[index], fit: BoxFit.fill),
                    );
                  },
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              buildText(
                mainText: 'Population: ',
                subText: '${country.population}',
                context: context,
              ),
              buildText(
                mainText: 'Region: ',
                subText: '${country.region}',
                context: context,
              ),
              buildText(
                mainText: 'Capital: ',
                subText: country.capital?[0] ?? 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Motto: ',
                subText: 'nil',
                context: context,
              ),
              const SizedBox(
                height: 24,
              ),
              buildText(
                mainText: 'Official language: ',
                subText: country.languages?.eng ?? 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Ethnic group: ',
                subText: country.demonyms?.eng!.f ?? 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Religion: ',
                subText: 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Government: ',
                subText: 'nil',
                context: context,
              ),
              const SizedBox(
                height: 24,
              ),
              buildText(
                mainText: 'Independence: ',
                subText: country.independent?.toString() ?? 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Area: ',
                subText: country.area?.toString() ?? 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Currency: ',
                subText: country.currencies?.bBD?.name ?? 'EURO',
                context: context,
              ),
              buildText(
                mainText: 'GDP: ',
                subText: country.cioc ?? 'nil',
                context: context,
              ),
              const SizedBox(
                height: 24,
              ),
              buildText(
                mainText: 'Time zone: ',
                subText: country.timezones?.first ?? 'UTC+01:00',
                context: context,
              ),
              buildText(
                mainText: 'Date format: ',
                subText: country.postalCode?.format ?? 'dd/mm/yyyy',
                context: context,
              ),
              buildText(
                mainText: 'Dialing code:',
                subText: country.idd?.root ?? 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Driving side: ',
                subText: country.car?.side ?? 'right',
                context: context,
              ),
              const SizedBox(
                height: 24,
              ),
              buildText(
                mainText: 'Alternate spellings: ',
                subText: country.altSpellings?.first ?? '',
                context: context,
              ),
              buildText(
                mainText: 'Continents: ',
                subText: country.continents?.first ?? '',
                context: context,
              ),
              buildText(
                mainText: 'Land locked: ',
                subText: country.landlocked.toString(),
                context: context,
              ),
              buildText(
                mainText: 'Member of UN: ',
                subText: country.unMember.toString(),
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildText({
    required String mainText,
    required String subText,
    required BuildContext context,
  }) {
    return RichText(
        text: TextSpan(
            text: mainText,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: CountryAppFonts.axiformaRegular,
            ),
            children: [
          const TextSpan(text: ' '),
          TextSpan(
            text: subText,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 12,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w300,
              fontFamily: CountryAppFonts.axiformaRegular,
            ),
          ),
        ]));
  }
}
