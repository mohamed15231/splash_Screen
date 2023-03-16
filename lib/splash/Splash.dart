part of 'SplashImports.dart';

class Splash_Screen extends StatefulWidget {
  Splash_Screen({Key? key, required this.notFirstTime}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();

  bool notFirstTime;
}

class _Splash_ScreenState extends State<Splash_Screen> {
  Future scale() async {
    if (Splash_Data.is_First_Time) {
      await Future.delayed(const Duration(milliseconds: 1000), () {});
      Splash_Data.is_First_Time = false;
    }
    while (Splash_Data.scaleval < 20.w) {
      await Future.delayed(const Duration(milliseconds: 3), () {});
      if (mounted)
        setState(() {
          Splash_Data.scaleval += .019;
        });
    }
  }

  Future translation() async {
    if (Splash_Data.is_First_Time) {
      await Future.delayed(const Duration(milliseconds: 1000), () {});
      Splash_Data.is_First_Time = false;
    }
    while (Splash_Data.translationval > -30.w) {
      await Future.delayed(const Duration(milliseconds:3), () {});
      setState(() {
        Splash_Data.translationval -= 1;
      });
    }
    await Future.delayed(const Duration(milliseconds: 1100), () {});

    widget.notFirstTime
        ? Navigator_And_Replace.navigate(
            context: context, page: Screen_Choice())
        : Navigator_And_Replace.navigate(context: context, page: On_Boarding());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scale();
    translation();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(alignment: AlignmentDirectional.center, children: [
        Background_Splash(scaleval: Splash_Data.scaleval),
        Transform(
          transform:
              Matrix4.translationValues(0, Splash_Data.translationval, 0),
          child: Foreground_Splash(),
        ),
      ]),
    );
  }
}
