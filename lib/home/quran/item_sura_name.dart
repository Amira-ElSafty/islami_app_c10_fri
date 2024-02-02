import 'package:flutter/material.dart';
import 'package:flutter_app_islami_c10_fri/home/quran/sura_details_screen.dart';

class ItemSuraName extends StatelessWidget {
  String name;

  int index;

  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetaillsScreen.routeName,
            arguments: SuraDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
