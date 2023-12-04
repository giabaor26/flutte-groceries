import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_groceries/view/login/sign_in_view.dart';

import '../../common_widget/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode( SystemUiMode.leanBack );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/img/baonguyen.jpg",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
          
              children: [

                const SizedBox(
                  height: 8,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      "Welcome\nto Bẻo Ngỹn",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      "Tặng em bó hoa\nHoa một cái nhun"

                          ,

                      style: TextStyle(
                          color: const Color(0xffFCFCFC).withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),


                const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundButton(title: "Bắt Đầu", onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInView() ) );
                  },),
                ),
                

                const SizedBox(height: 46,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
