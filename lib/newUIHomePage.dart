import 'package:codeelan_web/UI/screens/Services/adopt_cloud.dart';
import 'package:codeelan_web/Utils/app_colors.dart';
import 'package:codeelan_web/main.dart';
import 'package:flutter/material.dart';

import 'UI/screens/Services/BuildInCloud.dart';
import 'UI/screens/Services/OperateInCloud.dart';
import 'UI/screens/Services/service.dart';
import 'Utils/Metrix.dart';
import 'Utils/widgets.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> menu = [
      'About Us',
      'Services',
      'Projects',
      'Blog',
      'Contact Us'
    ];

    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 20),
          // height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'images/cd-logo.jpg',
                // width: 36,
                height: 36,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(color: Colors.white,
                    child: HoverMenuWidget(
                      title: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdoptCloudUI(),
                                  settings: RouteSettings(
                                      name: RouterGenerate
                                          .adopt_cloud_services_Route)));
                        },

                        child: Container(
                          // width: 150,
                          // height: 35,
                          alignment: Alignment.centerLeft,
                          child: Text('Services',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 16, letterSpacing: 1, height: 1)),
                        ),
                      ),
                      items: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          // decoration: BoxDecoration(
                          //   color: Colors.black,
                          // ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AdoptCloudUI(),
                                          settings: RouteSettings(
                                              name: RouterGenerate
                                                  .adopt_cloud_services_Route)));
                                },
                                style: ButtonStyle(
                                  padding: WidgetStateProperty.all<EdgeInsets>(
                                      EdgeInsets.zero),
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  overlayColor: WidgetStateColor.resolveWith(
                                      (states) => Colors.transparent),
                                  backgroundColor: WidgetStateColor.resolveWith(
                                      (states) => Colors.white),
                                  foregroundColor:
                                      WidgetStateProperty.resolveWith<Color>(
                                          (Set<WidgetState> states) {
                                    if (states.contains(WidgetState.hovered)) {
                                      return AppColor.green;
                                    }
                                    return Colors.black;
                                  }),
                                ),
                                child: Container(
                                  width: 150,
                                  height: 35,
                                  alignment: Alignment.centerLeft,
                                  child: Text('Adopt Cloud',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 1,
                                          height: 1)),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BuildInCloud()));
                                },
                                style: ButtonStyle(
                                  padding: WidgetStateProperty.all<EdgeInsets>(
                                      EdgeInsets.zero),
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  overlayColor: WidgetStateColor.resolveWith(
                                      (states) => Colors.transparent),
                                  backgroundColor: WidgetStateColor.resolveWith(
                                      (states) => Colors.white),
                                  foregroundColor:
                                      WidgetStateProperty.resolveWith<Color>(
                                          (Set<WidgetState> states) {
                                    if (states.contains(WidgetState.hovered)) {
                                      return AppColor.green;
                                    }
                                    return Colors.black;
                                  }),
                                ),
                                child: Container(
                                  width: 150,
                                  height: 35,
                                  alignment: Alignment.centerLeft,
                                  child: Text('Built in Cloud',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 1,
                                          height: 1)),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OperateInCloudService(),
                                          settings: RouteSettings(
                                              name: RouterGenerate
                                                  .services_Route)));
                                },
                                style: ButtonStyle(
                                  padding: WidgetStateProperty.all<EdgeInsets>(
                                      EdgeInsets.zero),
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  overlayColor: WidgetStateColor.resolveWith(
                                      (states) => Colors.transparent),
                                  backgroundColor: WidgetStateColor.resolveWith(
                                      (states) => Colors.white),
                                  foregroundColor:
                                      WidgetStateProperty.resolveWith<Color>(
                                          (Set<WidgetState> states) {
                                    if (states.contains(WidgetState.hovered)) {
                                      return AppColor.green;
                                    }
                                    return Colors.black;
                                  }),
                                ),
                                child: Container(
                                  width: 150,
                                  height: 35,
                                  alignment: Alignment.centerLeft,
                                  child: Text('Operate in Cloud',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 1,
                                          height: 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // HoverMenuWidget(
                  //   title: TextButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => ServicePage(),
                  //               settings: RouteSettings(
                  //                   name: RouterGenerate.services_Route)));
                  //     },
                  //     style: ButtonStyle(
                  //       overlayColor: WidgetStateColor.resolveWith(
                  //           (states) => Colors.transparent),
                  //       shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  //         RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(0),
                  //         ),
                  //       ),
                  //       backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  //           (Set<WidgetState> states) {
                  //         if (states.contains(WidgetState.hovered)) {
                  //           return Colors.green;
                  //         }
                  //         return const Color.fromARGB(255, 3, 8, 61);
                  //       }),
                  //     ),
                  //     child: Container(
                  //       alignment: Alignment.center,
                  //       height: height * .08,
                  //       width: width * .08,
                  //       decoration: BoxDecoration(shape: BoxShape.rectangle),
                  //       child: Text('Solutions +',
                  //           style: TextStyle(
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.white,
                  //               letterSpacing: 1)),
                  //     ),
                  //   ),
                  //   items: [
                  //     Container(
                  //       width: double.infinity,
                  //       margin: EdgeInsets.zero,
                  //       padding: EdgeInsets.zero,
                  //       decoration: BoxDecoration(
                  //         color: Colors.white,
                  //       ),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         children: [
                  //           TextButton(
                  //             onPressed: () {
                  //               Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                       builder: (context) => IPSoolutionsUI(),
                  //                       settings: RouteSettings(
                  //                           name: RouterGenerate
                  //                               .IPSolution_Route)));
                  //             },
                  //             style: ButtonStyle(
                  //               padding: WidgetStateProperty.all<EdgeInsets>(
                  //                   EdgeInsets.zero),
                  //               shape: WidgetStateProperty.all<
                  //                   RoundedRectangleBorder>(
                  //                 RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(0),
                  //                 ),
                  //               ),
                  //               overlayColor: WidgetStateColor.resolveWith(
                  //                   (states) => Colors.transparent),
                  //               backgroundColor: WidgetStateColor.resolveWith(
                  //                   (states) => Colors.white),
                  //               foregroundColor:
                  //                   WidgetStateProperty.resolveWith<Color>(
                  //                       (Set<WidgetState> states) {
                  //                 if (states.contains(WidgetState.hovered)) {
                  //                   return AppColor.green;
                  //                 }
                  //                 return Colors.black;
                  //               }),
                  //             ),
                  //             child: Container(
                  //               width: 150,
                  //               height: 35,
                  //               alignment: Alignment.centerLeft,
                  //               child: Text('IP Solutions',
                  //                   textAlign: TextAlign.left,
                  //                   style: TextStyle(
                  //                       fontSize: 16,
                  //                       letterSpacing: 1,
                  //                       height: 1)),
                  //             ),
                  //           ),
                  //           TextButton(
                  //             onPressed: () {
                  //               Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                       builder: (context) => ServicePage(),
                  //                       settings: RouteSettings(
                  //                           name: RouterGenerate
                  //                               .services_Route)));
                  //             },
                  //             style: ButtonStyle(
                  //               padding: WidgetStateProperty.all<EdgeInsets>(
                  //                   EdgeInsets.zero),
                  //               shape: WidgetStateProperty.all<
                  //                   RoundedRectangleBorder>(
                  //                 RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(0),
                  //                 ),
                  //               ),
                  //               overlayColor: WidgetStateColor.resolveWith(
                  //                   (states) => Colors.transparent),
                  //               backgroundColor: WidgetStateColor.resolveWith(
                  //                   (states) => Colors.white),
                  //               foregroundColor:
                  //                   WidgetStateProperty.resolveWith<Color>(
                  //                       (Set<WidgetState> states) {
                  //                 if (states.contains(WidgetState.hovered)) {
                  //                   return AppColor.green;
                  //                 }
                  //                 return Colors.black;
                  //               }),
                  //             ),
                  //             child: Container(
                  //               width: 150,
                  //               height: 35,
                  //               alignment: Alignment.centerLeft,
                  //               child: Text('Industry Solutions',
                  //                   textAlign: TextAlign.left,
                  //                   style: TextStyle(
                  //                       fontSize: 16,
                  //                       letterSpacing: 1,
                  //                       height: 1)),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // HoverMenuWidget(
                  //   title: TextButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => ServicePage(),
                  //               settings: RouteSettings(
                  //                   name: RouterGenerate.services_Route)));
                  //     },
                  //     style: ButtonStyle(
                  //       overlayColor: WidgetStateColor.resolveWith(
                  //           (states) => Colors.transparent),
                  //       shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  //         RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(0),
                  //         ),
                  //       ),
                  //       backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  //           (Set<WidgetState> states) {
                  //         if (states.contains(WidgetState.hovered)) {
                  //           return Colors.green;
                  //         }
                  //         return const Color.fromARGB(255, 3, 8, 61);
                  //       }),
                  //     ),
                  //     child: Container(
                  //       alignment: Alignment.center,
                  //       height: height * .08,
                  //       width: width * .08,
                  //       decoration: BoxDecoration(shape: BoxShape.rectangle),
                  //       child: Text('Insights +',
                  //           style: TextStyle(
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.white,
                  //               letterSpacing: 1)),
                  //     ),
                  //   ),
                  //   items: [
                  //     Container(
                  //       width: double.infinity,
                  //       margin: EdgeInsets.zero,
                  //       padding: EdgeInsets.zero,
                  //       decoration: BoxDecoration(
                  //         color: Colors.white,
                  //       ),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         children: [
                  //           TextButton(
                  //             onPressed: () {
                  //               Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                       builder: (context) => ServicePage(),
                  //                       settings: RouteSettings(
                  //                           name: RouterGenerate
                  //                               .services_Route)));
                  //             },
                  //             style: ButtonStyle(
                  //               padding: WidgetStateProperty.all<EdgeInsets>(
                  //                   EdgeInsets.zero),
                  //               shape: WidgetStateProperty.all<
                  //                   RoundedRectangleBorder>(
                  //                 RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(0),
                  //                 ),
                  //               ),
                  //               overlayColor: WidgetStateColor.resolveWith(
                  //                   (states) => Colors.transparent),
                  //               backgroundColor: WidgetStateColor.resolveWith(
                  //                   (states) => Colors.white),
                  //               foregroundColor:
                  //                   WidgetStateProperty.resolveWith<Color>(
                  //                       (Set<WidgetState> states) {
                  //                 if (states.contains(WidgetState.hovered)) {
                  //                   return AppColor.green;
                  //                 }
                  //                 return Colors.black;
                  //               }),
                  //             ),
                  //             child: Container(
                  //               width: 150,
                  //               height: 35,
                  //               alignment: Alignment.centerLeft,
                  //               child: Text('Case Study',
                  //                   textAlign: TextAlign.left,
                  //                   style: TextStyle(
                  //                       fontSize: 16,
                  //                       letterSpacing: 1,
                  //                       height: 1)),
                  //             ),
                  //           ),
                  //           TextButton(
                  //             onPressed: () {
                  //               Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                       builder: (context) => ServicePage(),
                  //                       settings: RouteSettings(
                  //                           name: RouterGenerate
                  //                               .services_Route)));
                  //             },
                  //             style: ButtonStyle(
                  //               padding: WidgetStateProperty.all<EdgeInsets>(
                  //                   EdgeInsets.zero),
                  //               shape: WidgetStateProperty.all<
                  //                   RoundedRectangleBorder>(
                  //                 RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(0),
                  //                 ),
                  //               ),
                  //               overlayColor: WidgetStateColor.resolveWith(
                  //                   (states) => Colors.transparent),
                  //               backgroundColor: WidgetStateColor.resolveWith(
                  //                   (states) => Colors.white),
                  //               foregroundColor:
                  //                   WidgetStateProperty.resolveWith<Color>(
                  //                       (Set<WidgetState> states) {
                  //                 if (states.contains(WidgetState.hovered)) {
                  //                   return AppColor.green;
                  //                 }
                  //                 return Colors.black;
                  //               }),
                  //             ),
                  //             child: Container(
                  //               width: 150,
                  //               height: 35,
                  //               alignment: Alignment.centerLeft,
                  //               child: Text('Blog',
                  //                   textAlign: TextAlign.left,
                  //                   style: TextStyle(
                  //                       fontSize: 16,
                  //                       letterSpacing: 1,
                  //                       height: 1)),
                  //             ),
                  //           ),
                  //           TextButton(
                  //             onPressed: () {
                  //               Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                       builder: (context) => ServicePage(),
                  //                       settings: RouteSettings(
                  //                           name: RouterGenerate
                  //                               .services_Route)));
                  //             },
                  //             style: ButtonStyle(
                  //               padding: WidgetStateProperty.all<EdgeInsets>(
                  //                   EdgeInsets.zero),
                  //               shape: WidgetStateProperty.all<
                  //                   RoundedRectangleBorder>(
                  //                 RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(0),
                  //                 ),
                  //               ),
                  //               overlayColor: WidgetStateColor.resolveWith(
                  //                   (states) => Colors.transparent),
                  //               backgroundColor: WidgetStateColor.resolveWith(
                  //                   (states) => Colors.white),
                  //               foregroundColor:
                  //                   WidgetStateProperty.resolveWith<Color>(
                  //                       (Set<WidgetState> states) {
                  //                 if (states.contains(WidgetState.hovered)) {
                  //                   return AppColor.green;
                  //                 }
                  //                 return Colors.black;
                  //               }),
                  //             ),
                  //             child: Container(
                  //               width: 150,
                  //               height: 35,
                  //               alignment: Alignment.centerLeft,
                  //               child: Text('Press Release',
                  //                   textAlign: TextAlign.left,
                  //                   style: TextStyle(
                  //                       fontSize: 16,
                  //                       letterSpacing: 1,
                  //                       height: 1)),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // TextButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => Aboutus(),
                  //             settings: RouteSettings(
                  //                 name: RouterGenerate.aboutUs_Route)));
                  //   },
                  //   style: ButtonStyle(
                  //     overlayColor: WidgetStateColor.resolveWith(
                  //         (states) => Colors.transparent),
                  //     shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  //       RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(0),
                  //       ),
                  //     ),
                  //     backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  //         (Set<WidgetState> states) {
                  //       if (states.contains(WidgetState.hovered)) {
                  //         return Colors.green;
                  //       }
                  //       return const Color.fromARGB(255, 3, 8, 61);
                  //     }),
                  //   ),
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     height: height * .08,
                  //     width: width * .08,
                  //     decoration: BoxDecoration(shape: BoxShape.rectangle),
                  //     child: Text('About Us',
                  //         style: TextStyle(
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.white,
                  //             letterSpacing: 1)),
                  //   ),
                  // ),
                  // TextButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => Contactus(),
                  //             settings: RouteSettings(
                  //                 name: RouterGenerate.contactUs_Route)));
                  //   },
                  //   style: ButtonStyle(
                  //     overlayColor: WidgetStateColor.resolveWith(
                  //         (states) => Colors.transparent),
                  //     shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  //       RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(0),
                  //       ),
                  //     ),
                  //     backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  //         (Set<WidgetState> states) {
                  //       if (states.contains(WidgetState.hovered)) {
                  //         return Colors.green;
                  //       }
                  //       return const Color.fromARGB(255, 3, 8, 61);
                  //     }),
                  //   ),
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     height: height * .08,
                  //     width: width * .08,
                  //     decoration: BoxDecoration(shape: BoxShape.rectangle),
                  //     child: Text('Contact Us',
                  //         style: TextStyle(
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.white,
                  //             letterSpacing: 1)),
                  //   ),
                  // ),

                  GradientButton(onPressed: () {}, btnText: 'Request a Demo')
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

