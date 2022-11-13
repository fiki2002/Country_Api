import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/country_app_model.dart';
import '../theme/app_fonts.dart';
import 'components/country_app_responsiveness.dart';

class CountryDetails extends StatefulWidget {
  const CountryDetails({
    super.key,
    required this.country,
  });
  final Country country;

  @override
  State<CountryDetails> createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  @override
  Widget build(BuildContext context) {
   
    var controller = PageController();
    var selectedIndex = 0;

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
          widget.country.name?.common ?? '',
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
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
              
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      PageView(
                        controller: controller,
                        onPageChanged: (value) {
                          setState(() {
                            selectedIndex = value;
                          });
                        },
                        children: [
                          Image.network(
                            widget.country.flags!.png!,
                            fit: CountryAppResponsiveness.isLandScape(context)
                                ? BoxFit.fitHeight
                                : BoxFit.cover,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              );
                            },
                          ),
                          (widget.country.coatOfArms!.png == null)
                              ? Center(
                                  child: Text(
                                    'Data for coat of arm no available',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontFamily:
                                          CountryAppFonts.axiformaRegular,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              : Image.network(
                                  widget.country.coatOfArms!.png!,
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                      ),
                                    );
                                  },
                                )
                        ],
                      ),
                      Align(
                        alignment: const Alignment(-0.9, 0),
                        child: GestureDetector(
                          onTap: () {
                            controller.previousPage(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeIn);
                          },
                          child: selectedIndex == 0
                              ? const CircleAvatar(
                                  foregroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  backgroundColor:
                                      Color.fromRGBO(238, 238, 238, 0.2),
                                  radius: 18,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      size: 15,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                )
                              : const CircleAvatar(
                                  foregroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  backgroundColor:
                                      Color.fromRGBO(238, 238, 238, 0.5),
                                  radius: 20,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      size: 15,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0.9, 0),
                        child: GestureDetector(
                          onTap: () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeIn);
                          },
                          child: selectedIndex == 1
                              ? const CircleAvatar(
                                  foregroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  backgroundColor:
                                      Color.fromRGBO(238, 238, 238, 0.2),
                                  radius: 18,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 15,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                )
                              : const CircleAvatar(
                                  foregroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  backgroundColor:
                                      Color.fromRGBO(238, 238, 238, 0.5),
                                  radius: 20,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 15,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0, 0.8),
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: 2,
                          onDotClicked: (value) {
                            controller.animateToPage(value,
                                duration: const Duration(milliseconds: 350),
                                curve: Curves.easeIn);
                          },
                          effect: const ScrollingDotsEffect(
                            dotWidth: 8,
                            dotHeight: 8,
                            activeDotColor: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              buildText(
                mainText: 'Population: ',
                subText: '${widget.country.population}',
                context: context,
              ),
              buildText(
                mainText: 'Region: ',
                subText: '${widget.country.region}',
                context: context,
              ),
              buildText(
                mainText: 'Capital: ',
                subText: widget.country.capital?[0] ?? 'nil',
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
                subText: widget.country.languages?.eng ?? 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Ethnic group: ',
                subText: widget.country.demonyms?.eng!.f ?? 'nil',
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
                subText: widget.country.independent?.toString() ?? 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Area: ',
                subText: widget.country.area?.toString() ?? 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Currency: ',
                subText: widget.country.currencies?.bBD?.name ?? 'EURO',
                context: context,
              ),
              buildText(
                mainText: 'GDP: ',
                subText: widget.country.cioc ?? 'nil',
                context: context,
              ),
              const SizedBox(
                height: 24,
              ),
              buildText(
                mainText: 'Time zone: ',
                subText: widget.country.timezones?.first ?? 'UTC+01:00',
                context: context,
              ),
              buildText(
                mainText: 'Date format: ',
                subText: widget.country.postalCode?.format ?? 'dd/mm/yyyy',
                context: context,
              ),
              buildText(
                mainText: 'Dialing code:',
                subText: widget.country.idd?.root ?? 'nil',
                context: context,
              ),
              buildText(
                mainText: 'Driving side: ',
                subText: widget.country.car?.side ?? 'right',
                context: context,
              ),
              const SizedBox(
                height: 24,
              ),
              buildText(
                mainText: 'Alternate spellings: ',
                subText: widget.country.altSpellings?.first ?? '',
                context: context,
              ),
              buildText(
                mainText: 'Continents: ',
                subText: widget.country.continents?.first ?? '',
                context: context,
              ),
              buildText(
                mainText: 'Land locked: ',
                subText: widget.country.landlocked.toString(),
                context: context,
              ),
              buildText(
                mainText: 'Member of UN: ',
                subText: widget.country.unMember.toString(),
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
