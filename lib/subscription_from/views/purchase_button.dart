import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PurchaseButton extends StatelessWidget {
  const PurchaseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 7.h,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFBABAD6), Color(0xFF6B66D8)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29),
        ),
      ),
      child: Center(
        child: Text(
          'Купить',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
