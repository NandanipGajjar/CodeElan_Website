import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:codeelan_web/UI/homePage.dart';
import 'package:codeelan_web/UI/screens/Services/AdoptCloudCategories/BuildCloudFoundation.dart';
import 'package:codeelan_web/UI/screens/Services/AdoptCloudCategories/CLoudMigration.dart';
import 'package:codeelan_web/UI/screens/Services/AdoptCloudCategories/KubernetAdoption.dart';
import 'package:codeelan_web/UI/screens/Services/adopt_cloud.dart';
import 'package:codeelan_web/UI/screens/Solutions/IPSolutions/IPSolutionsUI.dart';
import 'package:codeelan_web/UI/screens/aboutUs.dart';
import 'package:codeelan_web/UI/screens/contact-us.dart';
import 'package:flutter/material.dart';
import '../UI/screens/Services/BuildInCloud.dart';
import '../UI/screens/Services/OperateInCloud.dart';
import '../UI/screens/Services/service.dart';
import '../main.dart';
import 'Responsive.dart';
import 'app_colors.dart';

class Scafold_Dekstop_widget extends StatefulWidget {
  final Widget body;

  Scafold_Dekstop_widget({Key? key, required this.body}) : super(key: key);

  @override
  State<Scafold_Dekstop_widget> createState() => _Scafold_Dekstop_widgetState();
}

class _Scafold_Dekstop_widgetState extends State<Scafold_Dekstop_widget> {
  double height = 0.0;

  double width = 0.0;

  double size = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    size = MediaQuery.of(context).size.longestSide;
    return SafeArea(
        child: Scaffold(
      appBar: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? PreferredSize(preferredSize: Size.fromHeight(0), child: SizedBox())
          : AppBar(
              backgroundColor: Colors.white,
              elevation: 3,
              surfaceTintColor: Colors.white,
              leading: InkWell(
                onTap: (() {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(),
                        settings: RouteSettings(name: '/')),
                  );
                }),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/cd-logo.jpg',
                    height: 50.0, alignment: Alignment.centerLeft,
                    // width: 100.0,
                  ),
                ),
              ),
              leadingWidth: 200,
              automaticallyImplyLeading: false,
            ),
      endDrawer: Drawer(
        child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? SizedBox()
            : Mobile_Header(),
      ),
      body: widget.body,
    ));
  }
}

class TabsWidget extends StatefulWidget {
  TabsWidget({Key? key}) : super(key: key);

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  double height = 0.0;

  double width = 0.0;

  double size = 0.0;
  bool isHover = false;
  String status = "";

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    size = MediaQuery.of(context).size.longestSide;

    return menuBar(context);
  }

  // Widget title(BuildContext context) {
  //   return Container(
  //     alignment: Alignment.center,
  //     color: const Color.fromRGBO(255, 255, 255, 1),
  //     padding: EdgeInsets.only(
  //       left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
  //           ? width * .1
  //           : width * .02,
  //       right: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
  //           ? width * .1
  //           : width * .02,
  //       top: MediaQuery.of(context).size.height * .02,
  //       // bottom: MediaQuery.of(context).size.width * .1s,
  //     ),
  //     child: Row(
  //       children: [
  //         //tital image
  //         Expanded(
  //           child: InkWell(
  //             onTap: () {
  //               Navigator.push(context,
  //                   MaterialPageRoute(builder: (context) => const HomePage()));
  //             },
  //             child: Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Image.asset(
  //                 'images/cd-logo.jpg',
  //                 height: 50.0, alignment: Alignment.centerLeft,
  //                 // width: 100.0,
  //               ),
  //             ),
  //           ),
  //         ),
  //         //tital email
  //         Expanded(
  //           flex:
  //               Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
  //                   ? 0
  //                   : 3,
  //           child: SizedBox(
  //             height: height * .1,
  //             child: Row(
  //               children: [
  //                 Icon(
  //                   Icons.email_outlined,
  //                   color: Colors.green,
  //                   size: 38,
  //                 ),
  //                 SizedBox(
  //                   width: width * .01,
  //                 ),
  //                 Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Container(
  //                       decoration: BoxDecoration(
  //                           border: Border(
  //                               bottom: BorderSide(color: Colors.black))),
  //                       child: Text('Mail us for help:',
  //                           style: TextStyle(
  //                               fontWeight: FontWeight.bold,
  //                               fontSize: 16,
  //                               letterSpacing: 1)),
  //                     ),
  //                     Container(
  //                       child: Text('info@codeelan.com',
  //                           style: TextStyle(
  //                               fontSize: 14,
  //                               color: Colors.grey.shade600,
  //                               letterSpacing: 1)),
  //                     ),
  //                   ],
  //                 ),
  //                 SizedBox(
  //                   width: width * .02,
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(top: 20, bottom: 20),
  //                   child: VerticalDivider(
  //                     color: Colors.grey,
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: width * .02,
  //                 ),
  //                 Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Container(
  //                       decoration: BoxDecoration(
  //                           border: Border(
  //                               bottom: BorderSide(color: Colors.black))),
  //                       child: Text('Pune, MH',
  //                           style: TextStyle(
  //                               fontWeight: FontWeight.bold,
  //                               fontSize: 17,
  //                               letterSpacing: 1)),
  //                     ),
  //                     Text('India',
  //                         style: TextStyle(
  //                             fontSize: 15,
  //                             color: Colors.grey.shade600,
  //                             letterSpacing: 1)),
  //                   ],
  //                 ),
  //                 SizedBox(
  //                   width: width * .02,
  //                 ),
  //                 Icon(
  //                   Icons.call,
  //                   color: Colors.green,
  //                   size: 32,
  //                 ),
  //                 SizedBox(
  //                   width: width * .01,
  //                 ),
  //                 Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Text('Requesting a call:',
  //                         style: TextStyle(
  //                             fontSize: size * .009, letterSpacing: 1)),
  //                     Text('(848) 4914 105',
  //                         style: TextStyle(
  //                             fontSize: 17,
  //                             fontWeight: FontWeight.bold,
  //                             color: Colors.black,
  //                             letterSpacing: 1)),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  final serviceFocusNode = FocusNode();

  Widget menuBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .08
            : width * .02,
        right: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .08
            : width * .02,
        top: 0,
      ),
      height: height * .1,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        new BoxShadow(
          color: Colors.black,
          blurRadius: 20.0,spreadRadius: 0.5
        ),
      ]),
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
              HoverMenuWidget(
                title: _menuTextButton(
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ServicePage(),
                            settings: RouteSettings(
                                name: RouterGenerate.services_Route))),
                    'Services'),
                items: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColor.lightGrey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _subMenuTextButton(
                            () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AdoptCloudUI(),
                                    settings: RouteSettings(
                                        name: RouterGenerate
                                            .adopt_cloud_services_Route))),
                            'Adopt Cloud'),
                        _subMenuTextButton(
                            () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BuildInCloud())),
                            'Operate in Cloud'),
                        _subMenuTextButton(
                            () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        OperateInCloudService(),
                                    settings: RouteSettings(
                                        name: RouterGenerate.services_Route))),
                            'Built in Cloud'),
                      ],
                    ),
                  ),
                ],
              ),
              HoverMenuWidget(
                title: _menuTextButton(() {}, 'Solutions'),
                items: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColor.lightGrey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _subMenuTextButton(
                            () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IPSoolutionsUI(),
                                    settings: RouteSettings(
                                        name:
                                            RouterGenerate.IPSolution_Route))),
                            'IP Solutions'),
                        _subMenuTextButton(() {}, 'Industry Solutions'),
                      ],
                    ),
                  ),
                ],
              ),
              HoverMenuWidget(
                title: _menuTextButton(() {}, 'Insights'),
                items: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColor.lightGrey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _subMenuTextButton(() {}, 'Case Study'),
                        _subMenuTextButton(() {}, 'Blog'),
                        _subMenuTextButton(() {}, 'Press Release'),
                      ],
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Aboutus(),
                          settings: RouteSettings(
                              name: RouterGenerate.aboutUs_Route)));
                },
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  overlayColor: WidgetStateColor.resolveWith(
                      (states) => Colors.transparent),
                  backgroundColor:
                      WidgetStateColor.resolveWith((states) => Colors.white),
                  foregroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.hovered)) {
                      return AppColor.green;
                    }
                    return AppColor.darkGrey;
                  }),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: height * .08,
                  width: width * .08,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Text('About Us',
                      style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          // color: Colors.black,
                          letterSpacing: 1)),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Contactus(),
                          settings: RouteSettings(
                              name: RouterGenerate.contactUs_Route)));
                },
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  overlayColor: WidgetStateColor.resolveWith(
                      (states) => Colors.transparent),
                  backgroundColor:
                      WidgetStateColor.resolveWith((states) => Colors.white),
                  foregroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.hovered)) {
                      return AppColor.green;
                    }
                    return AppColor.darkGrey;
                  }),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: height * .08,
                  width: width * .08,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Text('Contact Us',
                      style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          // color: Colors.black,
                          letterSpacing: 1)),
                ),
              ),
              SizedBox(
                width: 24,
              ),
              GradientButton(onPressed: () {}, btnText: 'Request a Demo')
            ],
          ),
        ],
      ),
    );
  }

  Widget _menuTextButton(VoidCallback onPressed, String menuTitle) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        overlayColor:
            WidgetStateColor.resolveWith((states) => Colors.transparent),
        backgroundColor: WidgetStateColor.resolveWith((states) => Colors.white),
        foregroundColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.hovered)) {
            return AppColor.green;
          }
          return AppColor.darkGrey;
        }),
      ),
      child: Container(
        alignment: Alignment.center,
        height: height * .08,
        width: width * .08,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(menuTitle,
                style: TextStyle(
                    fontSize: 16,
                    // fontWeight: FontWeight.bold,
                    // color: Colors.black,
                    letterSpacing: 1)),
            Icon(
              Icons.keyboard_arrow_down,
              weight: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget _subMenuTextButton(VoidCallback onPressed, String menuTitle) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding:
            WidgetStateProperty.all<EdgeInsets>(EdgeInsets.only(right: 10)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        overlayColor:
            WidgetStateColor.resolveWith((states) => Colors.transparent),
        backgroundColor: WidgetStateColor.resolveWith((states) => Colors.white),
        foregroundColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
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
        child: Text(menuTitle,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14, letterSpacing: 1, height: 1)),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;
  final double? height;
  final EdgeInsets? padding;

  GradientButton(
      {required this.onPressed,
      required this.btnText,
      this.height,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height ?? 40,
      onPressed: onPressed,
      padding: padding ??
          const EdgeInsets.only(left: 25, top: 15, bottom: 15, right: 25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: AppColor.primary,
      hoverColor: AppColor.green,
      child: Text(btnText,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.white,
              letterSpacing: 1)),
    );
  }
}

class Mobile_Header extends StatefulWidget {
  Mobile_Header({Key? key}) : super(key: key);

  @override
  State<Mobile_Header> createState() => _Mobile_HeaderState();
}

class _Mobile_HeaderState extends State<Mobile_Header> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 600,
        color: Colors.white,
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: ListView(children: <Widget>[
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'images/cd-logo.jpg',
                              height: 40.0,
                              // width: 100.0,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 10,
                            child: IconButton(
                              icon: Icon(
                                Icons.cancel,
                              ),
                              onPressed: () =>
                                  Scaffold.of(context).openDrawer(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                  tilePadding: EdgeInsets.only(
                      left: 20, right: 20, top: 0.001, bottom: 0.001),
                  // childrenPadding: EdgeInsets.only(left: 20,right: 20,top: 0.001,bottom: 0.001),
                  title: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServicePage(),
                                settings: RouteSettings(
                                    name: RouterGenerate.services_Route)));
                      },
                      child: Text(
                        'Services',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  trailing: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.lightGrey)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                  children: <Widget>[
                    GestureDetector(
                      child: ExpansionTile(
                        title: Text('Adopt Cloud'),
                        trailing: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.lightGrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            )),
                        children: [
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Build Cloud Foundation")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BuildCloudFoundation(),
                                      settings: const RouteSettings(
                                          name: RouterGenerate
                                              .build_cloud_foundation_services_Route)));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Cloud Migration")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CloudMigration(),
                                      settings: RouteSettings(
                                          name: RouterGenerate
                                              .cloud_migration_services_Route)));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Kubernetes Adoption")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KubernetAdoption(),
                                      settings: RouteSettings(
                                          name: RouterGenerate
                                              .kubernet_adoption_services_Route)));
                            },
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdoptCloudUI(),
                                settings: RouteSettings(
                                    name: RouterGenerate
                                        .adopt_cloud_services_Route)));
                      },
                    ),
                    GestureDetector(
                      child: ExpansionTile(
                        title: Text('Build in Cloud'),
                        trailing: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.lightGrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            )),
                        children: [
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Product Development")),
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             BuildCloudFoundation()));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("DevOps")),
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => CloudMigration(), settings: RouteSettings(name:  RouterGenerate.cloud_migration_services_Route)));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Testing Automation")),
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             KubernetAdoption()));
                            },
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BuildInCloud()));
                      },
                    ),
                  ]),
            ),
            Divider(
              color: AppColor.lightGrey,
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                  tilePadding: EdgeInsets.only(
                      left: 20, right: 20, top: 0.001, bottom: 0.001),
                  title: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServicePage(),
                                settings: RouteSettings(
                                    name: RouterGenerate.services_Route)));
                      },
                      child: Text(
                        'Solution',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  trailing: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.lightGrey)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                  children: <Widget>[
                    GestureDetector(
                      child: ExpansionTile(
                        title: Text('Adopt Cloud'),
                        trailing: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.lightGrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            )),
                        children: [
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Build Cloud Foundation")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BuildCloudFoundation(),
                                      settings: const RouteSettings(
                                          name: RouterGenerate
                                              .build_cloud_foundation_services_Route)));
                            },
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdoptCloudUI(),
                                settings: RouteSettings(
                                    name: RouterGenerate
                                        .adopt_cloud_services_Route)));
                      },
                    ),
                  ]),
            ),
            Divider(
              color: AppColor.lightGrey,
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                  title: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServicePage(),
                                settings: RouteSettings(
                                    name: RouterGenerate.services_Route)));
                      },
                      child: Text(
                        'Insights',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  trailing: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.lightGrey)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                  children: <Widget>[
                    GestureDetector(
                      child: ExpansionTile(
                        title: Text('Adopt Cloud'),
                        trailing: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.lightGrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            )),
                        children: [
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Build Cloud Foundation")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BuildCloudFoundation()));
                            },
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdoptCloudUI(),
                                settings: RouteSettings(
                                    name: RouterGenerate
                                        .adopt_cloud_services_Route)));
                      },
                    ),
                  ]),
            ),
            Divider(
              color: AppColor.lightGrey,
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Aboutus(),
                              settings: RouteSettings(
                                  name: RouterGenerate.aboutUs_Route)));
                    },
                    child: Text(
                      'About Us',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                trailing: const SizedBox(),
              ),
            ),
            Divider(
              color: AppColor.lightGrey,
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Contactus(),
                              settings: RouteSettings(
                                  name: RouterGenerate.contactUs_Route)));
                    },
                    child: Text(
                      'Contact Us',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                trailing: const SizedBox(),
              ),
            ),
            Divider(
              color: AppColor.lightGrey,
            ),
          ]),
        ),
      ),
    );
  }
}

class CompaniesSliderWidget extends StatefulWidget {
  const CompaniesSliderWidget({Key? key}) : super(key: key);

  @override
  State<CompaniesSliderWidget> createState() => _CompaniesSliderWidgetState();
}

class _CompaniesSliderWidgetState extends State<CompaniesSliderWidget> {
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: companiesSlider(context));
  }

  List<String> carouselImages = [
    'images/ACMEMinds-logo.png',
    'images/Idea-bridge-Logo.png',
    'images/LoadShare-Logo.png',
    'images/ParentPayGroup.png',
    'images/PlusInnovation-Logo.png',
    'images/SunPower-Logo.png',
    'images/Unique-Solutions.png',
    'images/VoniGo-Logo.png'
  ];
  int _current = 0;

  Widget companiesSlider(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: carouselImages.length,
      options: CarouselOptions(
          height: 200,
          aspectRatio: 16 / 9,
          viewportFraction:
              Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                  ? 0.2
                  : 0.5,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          autoPlayCurve: Curves.linear,
          // autoPlayInterval: const Duration(seconds: 5),
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          initialPage: 0),
      carouselController: controller,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        child: Center(
          child: Image.asset(carouselImages[itemIndex]),
        ),
      ),
    );
  }
}

class HoverMenuWidget extends StatefulWidget {
  final Widget title;
  final double? width;
  final List<Widget> items;
  final HoverMenuController? controller;

  const HoverMenuWidget({
    Key? key,
    required this.title,
    this.items = const [],
    this.width,
    this.controller,
  }) : super(key: key);

  @override
  HoverMenuWidgetState createState() => HoverMenuWidgetState();
}

class HoverMenuWidgetState extends State<HoverMenuWidget> {
  OverlayEntry? _overlayEntry;
  final _focusNode = FocusNode();
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChanged);

    if (widget.controller != null) {
      widget.controller?.currentState = this;
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    if (_focusNode.hasFocus) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _overlayEntry?.remove();
      _removeOverlay();
    }
  }

  void _removeOverlay() {
    _isHovered = false;
  }

  void hideSubMenu() {
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        overlayColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.hovered)) {
            return Colors.white;
          }
          return Colors.white;
        }),
        backgroundColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.hovered)) {
            return Colors.white;
          }
          return Colors.white;
        }),
        foregroundColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.hovered)) {
            return AppColor.green;
          }
          return Colors.black;
        }),
      ),
      focusNode: _focusNode,
      onHover: (isHovered) {
        if (isHovered && !_isHovered) {
          setState(() {
            _focusNode.requestFocus();
            _isHovered = true;
          });
        }
      },
      onPressed: () {},
      child: widget.title,
    );
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      maintainState: true,
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height,
        width: widget.width ?? 200,
        child: TextButton(
            style: ButtonStyle(
              padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              overlayColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.hovered)) {
                  return Colors.white;
                }
                return Colors.white;
              }),
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.hovered)) {
                  return Colors.white;
                }
                return Colors.white;
              }),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.hovered)) {
                  return AppColor.green;
                }
                return Colors.black;
              }),
            ),
            onPressed: () {},
            onHover: (isHovered) {
              if (isHovered && _isHovered) {
                _focusNode.requestFocus();
              } else {
                _focusNode.unfocus();
              }
            },
            child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: widget.items)),
      ),
    );
    /*  return OverlayEntry(
      maintainState: true,
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height,
        width: widget.width ?? 200,
        child: TextButton(
            style: ButtonStyle(
              padding:  WidgetStateProperty.all<EdgeInsets>(
            EdgeInsets.zero),

          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              overlayColor:
                  WidgetStateColor.resolveWith((states) => Colors.transparent),
            ),
            onPressed: () {},
            onHover: (isHovered) {
              if (isHovered && _isHovered) {
                _focusNode.requestFocus();
              } else {
                _focusNode.unfocus();
              }
            },
            child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: widget.items)),
      ),
    );*/
  }
}

class HoverMenuController {
  HoverMenuWidgetState? currentState;

  void hideSubMenu() {
    currentState?.hideSubMenu();
  }
}

Widget ServicesGrid(Widget icon, String title, String subTitle) {
  return Container(
      color: Colors.black,
      width: 500,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          SizedBox(
            height: height * .01,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: height * .01,
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 16, color: Colors.white, height: 2),
            overflow: TextOverflow.clip,
            // maxLines: 4,
          )
        ],
      ));
}

Widget howWorkWidget(String title, String subTitle) {
  return ListTile(
    leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.lightGreen,
        ),
        padding: EdgeInsets.all(10),
        child: Icon(
          Icons.add,
          color: AppColor.primary,
        )),
    title: Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    subtitle: Text(subTitle,
        style: TextStyle(fontSize: 16, color: AppColor.subHeadingColor)),
  );
}
