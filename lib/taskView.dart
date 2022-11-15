import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Themes.dart';

class taskView extends StatelessWidget {
  String? taskk;
  taskView({required this.taskk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(),
      body: Center(
          child: Column(
            children: [
              // paddingOnly(top: 20),
              SizedBox(
                height: 40,
              ),
              Text(
                "Hello, Tabish",
                style: Style_,
              ),
              Text(
                "You have a Task",
                style: Style_,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    color: bluish,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Center(
                          child: show_task(
                              Icon(
                                Icons.title,
                                size: 40,
                                color: Colors.white,
                              ),
                              "Your Task is:",
                              taskk!.split('|')[0]),
                        ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // show_task(
                        //     Icon(
                        //       Icons.description,
                        //       size: 40,
                        //       color: Colors.white,
                        //     ),
                        //     "Description",
                        //     taskk!.split('|')[1]),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // show_task(
                        //     Icon(
                        //       Icons.alarm,
                        //       size: 40,
                        //       color: Colors.white,
                        //     ),
                        //     "Start Time",
                        //     taskk!.split('|')[2]),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // show_task(
                        //     Icon(
                        //       Icons.alarm_off_outlined,
                        //       size: 40,
                        //       color: Colors.white,
                        //     ),
                        //     "End Time",
                        //     taskk!.split('|')[3]),
                      ],
                    ),
                  ))
            ],
          )),
    );
  }

  AppBar app_bar() {
    print("in taskview");
    return AppBar(
      //title: Center(child: Text(taskk!.split('|')[0])),
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios),
        onTap: Get.back,
      ),
      elevation: 0,
      backgroundColor: bluish,
    );
  }

  Widget show_task(Widget icon, String title, String subtitle) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  TextStyle get Style_ {
    return GoogleFonts.lato(
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
  }
}



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'task.dart';
//
// import 'Themes.dart';
//
// class taskView extends StatelessWidget {
//   String? taskk;
//   taskView({required this.taskk});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: app_bar(),
//       body: Center(
//           child: Column(
//         children: [
//           // paddingOnly(top: 20),
//           SizedBox(
//             height: 40,
//           ),
//           Text(
//             "Hello, Tabish",
//             style: Style_,
//           ),
//           Text(
//             "You have a Task",
//             style: Style_,
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Container(
//               height: 400,
//               width: 300,
//               decoration: BoxDecoration(
//                 color: bluish,
//                 borderRadius: BorderRadius.all(Radius.circular(20)),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 20, left: 20),
//                 child: Column(
//                   children: [
//                     show_task(
//                         Icon(
//                           Icons.title,
//                           size: 40,
//                           color: Colors.white,
//                         ),
//                         "Title"
//                             "Learn Something",
//                         taskk!.split('|')[0]
//
//                 ),
//
//
//
//
//                     SizedBox(
//                       height: 20,
//                     ),
//                     show_task(
//                         Icon(
//                           Icons.description,
//                           size: 40,
//                           color: Colors.white,
//                         ),
//                         "Description"
//                             "It is time to learn Something new Buddy",
//                         taskk!.split('|')[1]),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     show_task(
//                         Icon(
//                           Icons.alarm,
//                           size: 40,
//                           color: Colors.white,
//                         ),
//                         "Start Time"
//                             "8:30",
//
//                         taskk!.split('|')[2]),
//
//                     SizedBox(
//                       height: 20,
//                     ),
//                     show_task(
//                         Icon(
//                           Icons.alarm_off_outlined,
//                           size: 40,
//                           color: Colors.white,
//                         ),
//                         "End Time"
//                             "9:30",
//                         taskk!.split('|')[3]),
//                   ],
//                 ),
//               ))
//         ],
//       )
//       ),
//     );
//   }
//
//   AppBar app_bar() {
//     print("in taskview");
//     return AppBar(
//       title: Center(child: Text(taskk!.split('|')[0])),
//       leading: GestureDetector(
//         child: Icon(Icons.arrow_back_ios),
//         onTap: Get.back,
//       ),
//       elevation: 0,
//       backgroundColor: bluish,
//     );
//   }
//
//   Widget show_task(Widget icon, String title, String subtitle) {
//     return ListTile(
//       leading: icon,
//       title: Text(
//         title,
//         style: TextStyle(fontSize: 25, color: Colors.white),
//       ),
//       subtitle: Text(
//         subtitle,
//         style: TextStyle(fontSize: 20, color: Colors.white),
//       ),
//     );
//   }
//
//   TextStyle get Style_ {
//     return GoogleFonts.lato(
//         textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
//   }
// }
