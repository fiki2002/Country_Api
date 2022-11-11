import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';
import '../../theme/app_fonts.dart';

class FilterModalSheet extends StatefulWidget {
  const FilterModalSheet({super.key});
  static Future<bool?> showModalSheet(BuildContext context) =>
      showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(32),
            ),
          ),
          context: context,
          builder: (BuildContext context) {
            return const FilterModalSheet();
          });
  @override
  State<FilterModalSheet> createState() => _FilterModalSheetState();
}

class _FilterModalSheetState extends State<FilterModalSheet> {
  @override
  Widget build(BuildContext context) {
    final selectedTheme = Provider.of<ThemeProvider>(context).selectedTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 15.0,
            top: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Filter',
                style: TextStyle(
                  color: selectedTheme == ThemeMode.dark
                      ? const Color(0xffEAECF0)
                      : const Color(0xff1C1917),
                  fontSize: 20,
                  fontFamily: CountryAppFonts.axiformaRegular,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  CupertinoIcons.clear_fill,
                  color: Color(0xff98A2B3),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          itemCount: data.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, index) => EntryItem(
            filterEntries: data[index],
          ),
        ),
      ],
    );
  }
}

class FilterEntry {
  final String title;
  final List<FilterEntry> children;
  FilterEntry(
    this.title, [
    this.children = const <FilterEntry>[],
  ]);
}

final List<FilterEntry> data = <FilterEntry>[
  FilterEntry('Continent', <FilterEntry>[
    FilterEntry('Africa'),
    FilterEntry('Antarctica'),
    FilterEntry('Asia'),
    FilterEntry('Australia'),
    FilterEntry('Europe'),
    FilterEntry('North America'),
    FilterEntry('South America'),
  ]),
  FilterEntry('Time Zone', <FilterEntry>[
    FilterEntry('GMT+1:00'),
    FilterEntry('GMT+2:00'),
    FilterEntry('GMT+3:00'),
    FilterEntry('GMT+4:00'),
    FilterEntry('GMT+5:00'),
    FilterEntry('GMT+6:00'),
    FilterEntry('GMT+7:00'),
    FilterEntry('GMT-6:00'),
  ]),
];

class EntryItem extends StatelessWidget {
  const EntryItem({super.key, required this.filterEntries});
  final FilterEntry filterEntries;
  @override
  Widget build(BuildContext context) {
    return _buildTiles(filterEntries);
  }

  Widget _buildTiles(FilterEntry root) {
    if (root.children.isEmpty) {
      return ListTile(
        dense: true,
        title: Text(root.title),
      );
    }
    return ExpansionTile(
      title: Text(root.title),
      key: PageStorageKey<FilterEntry>(root),
      // children: root.children.map<Widget>(_buildTiles).toList(),
      children: const [
        // RadioListTile(value: value, groupValue: groupValue, onChanged: onChanged)
      ],
    );
  }
}
