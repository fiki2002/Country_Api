// import 'package:country_api/provider/countries_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../models/country_app_model.dart';
// import '../../theme/app_fonts.dart';

// class SearchCountries extends SearchDelegate {
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             query = '';
//           },
//           icon: Icon(
//             Icons.close,
//             color: Theme.of(context).primaryColor,
//           ))
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () => Navigator.pop(context),
//         icon: Icon(
//           Icons.arrow_back_ios,
//           color: Theme.of(context).primaryColor,
//         ));
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     var countryListQuery = context.read<CountryProvider>().countries;
//     List<Country> matchQuery = [];
//     for (var country in countryListQuery) {
//       if (country.name!.common!.toLowerCase.contains(query.toLowerCase()) ||
//               country.name.official 
//           .toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(country);
//       }
//     }
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return Center(
//       child: Text(
//         'Enter a search',
//         style: TextStyle(
//           color: Theme.of(context).primaryColor,
//           fontFamily: CountryAppFonts.axiformaRegular,
//           fontSize: 24,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//     );
//   }
// }
