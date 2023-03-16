part of 'Widgets_Imports.dart';


class Foreground_Splash extends StatelessWidget {
  const Foreground_Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuildAppLogo(),
            RichText(text:
            TextSpan(
              children: [
                TextSpan(
                  text: "Welcome to \n",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                      fontSize:48.sp,
                  )
                ),
                TextSpan(
                  text: "ACATANCE",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize:52.sp

                  )
                ),
              ]
            )
            ),
          ],
        );
      },
    );
  }
}
