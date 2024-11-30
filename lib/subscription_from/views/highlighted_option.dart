import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HighlightedOption extends StatelessWidget {
  const HighlightedOption({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 32.h,
      child: Stack(
        children: [
          Container(
            width: 80.w,
            height: 30.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/container.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(4.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 9.w,
                        height: 9.w,
                        decoration: const ShapeDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF6B66D8), Color(0xFFBABAD7)],
                          ),
                          shape: OvalBorder(),
                        ),
                        child:
                            Icon(Icons.check, color: Colors.white, size: 5.w),
                      ),
                      SizedBox(width: 3.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '6 месяцев',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 0.5.h),
                          Text(
                            'Описание',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '10 000₽',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 0.5.h),
                          Text(
                            '1̶2̶0̶0̶0̶р̶',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.46),
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  for (var text in ['что входит', 'что входит', 'что входит'])
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.h),
                      child: Row(
                        children: [
                          Container(
                            width: 2.5.w,
                            height: 2.5.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            text,
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 1,
            child: Align(
              heightFactor: -0,
              child: Container(
                width: 75,
                height: 35,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: Center(
                  child: Text(
                    'выгодно',
                    style: TextStyle(
                      color: const Color(0xFF6B66D8),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
