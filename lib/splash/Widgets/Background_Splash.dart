part of 'Widgets_Imports.dart';

class Background_Splash extends StatelessWidget {
  Background_Splash({Key? key,required this.scaleval  }):super(key: key);

   double scaleval;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Transform.scale(
        scale:scaleval,
        child: Image.asset(
          'assets/images/Vector 2.png',

        ),
      ),
    );
  }
}
