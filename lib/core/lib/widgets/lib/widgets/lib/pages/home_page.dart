import 'package:flutter/material.dart';
import '../core/localization.dart';
import '../widgets/lang_switch.dart';
import '../widgets/home_card.dart';
import '../core/app_theme.dart';
import 'wudu_page.dart';
import 'salah_page.dart';
import 'fasting_page.dart';

class HomePage extends StatefulWidget {
  final Map<String, dynamic> texts;
  const HomePage({super.key, required this.texts});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Lang lang = Lang.ur;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appBg(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(t(lang, 'app_title', widget.texts)),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LangSwitch(current: lang, onChange: (l)=>setState(()=>lang=l)),
              const SizedBox(height: 12),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10,
                  children: [
                    HomeCard(title: t(lang,'wudu_title',widget.texts), onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(_)=>WuduPage(lang:lang,texts:widget.texts)));
                    }),
                    HomeCard(title: t(lang,'salah_title',widget.texts), onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(_)=>SalahPage(lang:lang,texts:widget.texts)));
                    }),
                    HomeCard(title: t(lang,'fasting_title',widget.texts), onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(_)=>FastingPage(lang:lang,texts:widget.texts)));
                    }),
                    // باقی کارڈز آپ اسی پیٹرن پر شامل کریں
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
