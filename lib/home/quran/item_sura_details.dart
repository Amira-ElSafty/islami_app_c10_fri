import 'package:flutter/material.dart';
import 'package:flutter_app_islami_c10_fri/my_theme.dart';
import 'package:flutter_app_islami_c10_fri/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemSuraDetails extends StatelessWidget {
  String content;

  int index;

  ItemSuraDetails({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text(
      '$content (${index + 1})',
      style: provider.isDarkMode()
          ? Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: MyTheme.yellowColor)
          : Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
