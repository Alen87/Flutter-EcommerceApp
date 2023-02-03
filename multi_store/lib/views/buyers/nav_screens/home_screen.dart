import 'package:flutter/material.dart';
import './widgets/banner_widget.dart';
import './widgets/welcome_text_widget.dart';
import './widgets/search_input_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WelcomeText(),
        SizedBox(
          height: 14,
        ),
        SearchInputWidget(),
        BannerWidget(),
      ],
    );
  }
}
