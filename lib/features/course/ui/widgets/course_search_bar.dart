import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/style/images/app_images.dart';

class CourseSearchBar extends StatefulWidget {
  const CourseSearchBar({super.key});

  @override
  CourseSearchBarState createState() => CourseSearchBarState();
}

class CourseSearchBarState extends State<CourseSearchBar> {
  final TextEditingController _controller = TextEditingController();
  bool _showClearButton = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateClearButtonVisibility);
  }

  @override
  void dispose() {
    _controller
      ..removeListener(_updateClearButtonVisibility)
      ..dispose();
    super.dispose();
  }

  void _updateClearButtonVisibility() {
    setState(() {
      _showClearButton = _controller.text.isNotEmpty;
    });
  }

  void _clearTextField() {
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      width: 335.w,
      decoration: BoxDecoration(
        color: context.color.searchBarcolor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 7.sp),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Image.asset(
                    AppImages.searchIcon,
                    color: context.color.hintTextColor,
                  ),
                  hintText: context.translate(LangKeys.findCourse),
                  hintStyle: AppStyles.font400primary14(context).copyWith(
                    color: context.color.hintTextColor,
                  ),
                ),
              ),
            ),
            if (_showClearButton)
              IconButton(
                onPressed: _clearTextField,
                icon: Image.asset(
                  AppImages.deletIcon,
                  color: context.color.hintTextColor,
                ),
              ),
            IconButton(
              onPressed: () {
                // Add your filter action here
              },
              icon: Image.asset(
                AppImages.filterIcon,
                color: context.color.hintTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
