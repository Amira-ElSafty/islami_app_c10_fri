import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_islami_c10_fri/home/quran/item_sura_details.dart';
import 'package:flutter_app_islami_c10_fri/my_theme.dart';
import 'package:flutter_app_islami_c10_fri/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class SuraDetaillsScreen extends StatefulWidget {
  static const String routeName = 'sura-details-screen';

  @override
  State<SuraDetaillsScreen> createState() => _SuraDetaillsScreenState();
}

class _SuraDetaillsScreenState extends State<SuraDetaillsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    var provider = Provider.of<AppConfigProvider>(context);
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      provider.isDarkMode()
          ? Image.asset(
              'assets/images/main_background_dark.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/images/main_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(args.name, style: Theme.of(context).textTheme.titleLarge),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: MyTheme.primaryLight,
              ))
            : Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.06,
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? MyTheme.primaryDark
                        : MyTheme.whiteColor,
                    borderRadius: BorderRadius.circular(25)),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: provider.isDarkMode()
                          ? MyTheme.whiteColor
                          : Theme.of(context).primaryColor,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemSuraDetails(
                      content: verses[index],
                      index: index,
                    );
                  },
                  itemCount: verses.length,
                ),
              ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;

  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
