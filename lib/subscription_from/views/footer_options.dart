import 'package:flutter/material.dart';
import 'package:t49/subscription_from/widget/footer_option_ui.dart';

class FooterOptions extends StatefulWidget {
  const FooterOptions({super.key});

  @override
  State<FooterOptions> createState() => _FooterOptionsState();
}

class _FooterOptionsState extends State<FooterOptions> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final options = ['terms of use', 'policy privacy', 'Restore purchase'];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        options.length,
        (index) => FooterOptionUi(
          label: options[index],
          isSelected: selectedIndex == index,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
