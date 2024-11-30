import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'views/view.dart';
import 'widget/widget.dart';

class SubscriptionForm extends StatelessWidget {
  const SubscriptionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImages(
      body: Column(
        children: [
          const AppBarViews(),
          SizedBox(height: 7.h),
          const SubscriptionOption(
            duration: '1 месяц',
            description: 'Описание',
            price: '1000₽',
          ),
          SizedBox(height: 5.h),
          const HighlightedOption(),
          SizedBox(height: 3.h),
          const PurchaseButton(),
          const Spacer(),
          const FooterOptions(),
          SizedBox(height: 3.h),
        ],
      ),
    );
  }
}
