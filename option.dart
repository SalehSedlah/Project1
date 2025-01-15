import 'package:app_courses/screen/screen_teacher/teacher_signup/signUp_teach.dart';
import 'package:flutter/material.dart';
import 'screen/screen_student/student_signup/signUp.dart';
import 'package:animate_do/animate_do.dart';

class Option extends StatefulWidget {
  const Option({super.key});

  @override
  State<Option> createState() => _OprionState();
}

class _OprionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FadeInDown(
                duration: const Duration(microseconds: 1400),
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Wellcome to',
                          style: TextStyle(color: Colors.black, fontSize: 50),
                        ),
                        TextSpan(
                          text: ' A',
                          style: TextStyle(
                              color: Color.fromARGB(255, 244, 103, 2),
                              fontSize: 50,
                              fontFamily: AutofillHints
                                  .sublocality), // Change color for "A" section
                        ),
                        TextSpan(
                          text: 'courses',
                          style: TextStyle(color: Colors.black, fontSize: 50),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FadeInDown(
              duration: const Duration(microseconds: 1400),
              child: Image.asset(
                'assets/images/img.jpg',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    var route = MaterialPageRoute(
                        builder: (context) => const SignUpTeacher());
                    Navigator.push(context, route);
                  },
                  child: FadeInDown(
                    duration: const Duration(microseconds: 1400),
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Teacher',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                FadeInDown(
                  duration: const Duration(microseconds: 1400),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 33, 243, 170),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        var route =
                            MaterialPageRoute(builder: (context) => const SignUp());
                        Navigator.push(context, route);
                      },
                      child: const Center(
                        child: Text(
                          'Student',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
