import 'package:codeelan_web/Utils/Responsive.dart';
import 'package:codeelan_web/Utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/widgets.dart';

class IPSoolutionsUI extends StatefulWidget {
  const IPSoolutionsUI({Key? key}) : super(key: key);

  @override
  State<IPSoolutionsUI> createState() => _IPSoolutionsUIState();
}

class _IPSoolutionsUIState extends State<IPSoolutionsUI> {
  double height = 0.0;
  double width = 0.0;
  double size = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    size = MediaQuery.of(context).size.longestSide;

    return Scafold_Dekstop_widget(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                ? TabsWidget()
                : SizedBox(),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'images/IPsolutions_banner.jpg',
                  height: 250,
                  width: width,
                  fit: BoxFit.cover,
                  color: Color.fromRGBO(3, 28, 5, 1.0),
                  // opacity: const AlwaysStoppedAnimation(.1),
                  colorBlendMode: BlendMode.softLight,
                ),
                Text(
                  "IP Solutions",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            ourServices(),
            customerSolutions(),
            CompaniesSliderWidget()
          ],
        ),
      ),
    );
  }

  Widget ourServices() {
    return Container(
        // width: 100,
        alignment: Alignment.center,
        // color: Color.fromRGBO(235, 235, 235, 1),
        padding: EdgeInsets.all(20),
        child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                                width: 45,
                                child: Divider(
                                  thickness: 2.5,
                                  color: AppColor.primary,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Services",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ]),
                      Row(
                        children: [
                          SizedBox(
                            width: Responsive.isDesktop(context) ||
                                    Responsive.isk4Desktop(context)
                                ? width * .35
                                : width * .3,
                            child: Text(
                              "Providing Cutting Edge Custom Software Solutions Since 2015",
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: Responsive.isDesktop(context) ||
                                        Responsive.isk4Desktop(context)
                                    ? 36
                                    : 26,
                                color: Color.fromRGBO(29, 27, 76, 1),
                                letterSpacing: .5,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            width: width * .01,
                          ),
                          SizedBox(
                            width: Responsive.isDesktop(context) ||
                                    Responsive.isk4Desktop(context)
                                ? width * .35
                                : width * .5,
                            child: Text(
                              'We know first-hand what custom software development solutions are. You can count not only on extensive tech expertise but also on a keen understanding of the world of business, considering that we’ve been building bespoke B2B solutions for small and mid-size businesses since 2015.',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Arial',
                                  fontSize: 16,
                                  letterSpacing: .5,
                                  height: 1.8),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                            width: 45,
                            child: Divider(
                              thickness: 2.5,
                              color: AppColor.primary,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Services",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ]),
                  SizedBox(
                    child: Text(
                      "Accelerate Your Success with CodeElan Services",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: Responsive.isDesktop(context) ||
                                Responsive.isk4Desktop(context)
                            ? 36
                            : 26,
                        color: Color.fromRGBO(29, 27, 76, 1),
                        letterSpacing: .5,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  SizedBox(
                    child: Text(
                      'We know first-hand what custom software development solutions are. You can count not only on extensive tech expertise but also on a keen understanding of the world of business, considering that we’ve been building bespoke B2B solutions for small and mid-size businesses since 2015.',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Arial',
                          fontSize: 16,
                          letterSpacing: .5,
                          height: 1.8),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ));
  }

  double _width = 320;
  double _height = 300;
  Color _color1 = AppColor.primary;
  Color _color2 = AppColor.primary;
  Color _color3 = AppColor.primary;
  Color _iconColor = Colors.white;

  Widget customerSolutions() {
    return Container(
      width: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? width * .8
          : width,
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            SizedBox(
                width: Responsive.isDesktop(context) ||
                        Responsive.isk4Desktop(context)
                    ? width * .2
                    : 30,
                child: Divider(
                  thickness: 2,
                  color: AppColor.grey,
                )),
            SizedBox(
              width: 10,
            ),
            Text(
              "Customer Centric Solutions",
              style: TextStyle(
                color: AppColor.primary,
                fontSize: Responsive.isDesktop(context) ||
                        Responsive.isk4Desktop(context)
                    ? 36
                    : 26,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
                width: Responsive.isDesktop(context) ||
                        Responsive.isk4Desktop(context)
                    ? width * .2
                    : 30,
                child: Divider(
                  thickness: 2,
                  color: AppColor.grey,
                )),
          ]),
          SizedBox(
              width: Responsive.isDesktop(context) ||
                      Responsive.isk4Desktop(context)
                  ? width * .7
                  : width - 50,
              child: Text(
                'We don’t believe in fitting a technology to fix a problem, we believe in finding a digital solution for you, whatever technology it takes. It is not just about incorporating new technology into a business; it’s a seismic change, disrupting almost everything that forms enterprises. Existing products are reinvented, manual processes are swapped for automated models, and decision-making turns more precise with data. Digital Transformation, therefore, is far more than just a technology switch. It’s about training people and changing processes to get more out of the most powerful tool in business.',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.grey,
                ),
                maxLines: 8,
                textAlign: TextAlign.center,
              )),
          SizedBox(
            height: height * .05,
          ),
          Container(
            width:
                Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                    ? width * .8
                    : width,
            child:
                Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 350,
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/IPSolution_WeRecruit.jpg',
                                ),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text('WeRecruit',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primary,
                                    )),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text(
                                    'Attract, hire, and onboard the right people with Pinpoint—the modern applicant tracking system designed for internal talent acquisition teams.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.subHeadingColor,
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/IPSolution_Magic-Inbox.jpg',
                                ),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text('Magic Inbox',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primary,
                                    )),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text(
                                    'Attract, hire, and onboard the right people with Pinpoint—the modern applicant tracking system designed for internal talent acquisition teams.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.subHeadingColor,
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/IPSolution_WeModdle.jpg',
                                ),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text('We Moddel(LMS)',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primary,
                                    )),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text(
                                    'Attract, hire, and onboard the right people with Pinpoint—the modern applicant tracking system designed for internal talent acquisition teams.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.subHeadingColor,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Container(
                            width: 350,
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/IPSolution_Magic-Inbox.jpg',
                                ),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text('CodeElan',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primary,
                                    )),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text(
                                    'Attract, hire, and onboard the right people with Pinpoint—the modern applicant tracking system designed for internal talent acquisition teams.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.subHeadingColor,
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/IPSolution_Magic-Inbox.jpg',
                                ),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text('Magic Inbox',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primary,
                                    )),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text(
                                    'Attract, hire, and onboard the right people with Pinpoint—the modern applicant tracking system designed for internal talent acquisition teams.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.subHeadingColor,
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/IPSolution_WeModdle.jpg',
                                ),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text('We Moddel(LMS)',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primary,
                                    )),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Text(
                                    'Attract, hire, and onboard the right people with Pinpoint—the modern applicant tracking system designed for internal talent acquisition teams.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.subHeadingColor,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
          ),
          Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onHover: (val) {
                        if (val) {
                          setState(() {
                            _width = 380;
                            _height = 300;
                            _color1 = Colors.black;
                          });
                        } else {
                          setState(() {
                            _color1 = AppColor.primary;
                          });
                        }
                      },
                      onPressed: () {},
                      child: AnimatedContainer(
                        // Use the properties stored in the State class.
                        width: 380,
                        height: 280,
                        decoration: BoxDecoration(
                          color: _color1,
                        ),
                        // Define how long the animation should take.
                        duration: const Duration(seconds: 1),
                        // Provide an optional curve to make the animation feel smoother.
                        curve: Curves.fastOutSlowIn,

                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.rocket_launch_outlined,
                                color: _iconColor,
                                size: 70,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Move faster, right from the start",
                                style: TextStyle(
                                    color: _iconColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Accelerate your ROI with expert implementation options for organizations of any size",
                                style:
                                    TextStyle(color: _iconColor, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onHover: (val) {
                        if (val) {
                          setState(() {
                            _width = 380;
                            _height = 300;
                            _color2 = Colors.black;
                          });
                        } else {
                          setState(() {
                            _color2 = AppColor.primary;
                          });
                        }
                      },
                      onPressed: () {},
                      child: AnimatedContainer(
                        // Use the properties stored in the State class.
                        width: 380,
                        height: 280,
                        decoration: BoxDecoration(
                          color: _color2,
                        ),
                        // Define how long the animation should take.
                        duration: const Duration(seconds: 1),
                        // Provide an optional curve to make the animation feel smoother.
                        curve: Curves.fastOutSlowIn,

                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.album_outlined,
                                color: _iconColor,
                                size: 70,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Save critical time, remove barriers",
                                style: TextStyle(
                                    color: _iconColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Solve challenges with fleky tests, high failure rates, or Bugs with help of our experts.",
                                style:
                                    TextStyle(color: _iconColor, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onHover: (val) {
                        if (val) {
                          setState(() {
                            _width = 380;
                            _height = 300;
                            _color3 = Colors.black;
                          });
                        } else {
                          setState(() {
                            _color3 = AppColor.primary;
                          });
                        }
                      },
                      onPressed: () {},
                      child: AnimatedContainer(
                        // Use the properties stored in the State class.
                        width: 380,
                        height: 280,
                        decoration: BoxDecoration(
                          color: _color3,
                        ),
                        // Define how long the animation should take.
                        duration: const Duration(seconds: 1),
                        // Provide an optional curve to make the animation feel smoother.
                        curve: Curves.fastOutSlowIn,

                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.stacked_line_chart_rounded,
                                color: _iconColor,
                                size: 70,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Adopt best practices, accelerate automation",
                                style: TextStyle(
                                    color: _iconColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "From framework development to scripts that accelerate automation, we can help.",
                                style:
                                    TextStyle(color: _iconColor, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Column(children: [
                  TextButton(
                    onHover: (val) {
                      if (val) {
                        setState(() {
                          _width = 380;
                          _height = 300;
                          _color1 = Colors.black;
                        });
                      } else {
                        setState(() {
                          _color1 = AppColor.primary;
                        });
                      }
                    },
                    onPressed: () {},
                    child: AnimatedContainer(
                      // Use the properties stored in the State class.
                      width: 380,
                      height: 280,
                      decoration: BoxDecoration(
                        color: _color1,
                      ),
                      // Define how long the animation should take.
                      duration: const Duration(seconds: 1),
                      // Provide an optional curve to make the animation feel smoother.
                      curve: Curves.fastOutSlowIn,

                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.rocket_launch_outlined,
                              color: _iconColor,
                              size: 70,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Move faster, right from the start",
                              style: TextStyle(
                                  color: _iconColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Accelerate your ROI with expert implementation options for organizations of any size",
                              style: TextStyle(color: _iconColor, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onHover: (val) {
                      if (val) {
                        setState(() {
                          _width = 380;
                          _height = 300;
                          _color2 = Colors.black;
                        });
                      } else {
                        setState(() {
                          _color2 = AppColor.primary;
                        });
                      }
                    },
                    onPressed: () {},
                    child: AnimatedContainer(
                      // Use the properties stored in the State class.
                      width: 380,
                      height: 280,
                      decoration: BoxDecoration(
                        color: _color2,
                      ),
                      // Define how long the animation should take.
                      duration: const Duration(seconds: 1),
                      // Provide an optional curve to make the animation feel smoother.
                      curve: Curves.fastOutSlowIn,

                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.album_outlined,
                              color: _iconColor,
                              size: 70,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Save critical time, remove barriers",
                              style: TextStyle(
                                  color: _iconColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Solve challenges with fleky tests, high failure rates, or Bugs with help of our experts.",
                              style: TextStyle(color: _iconColor, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onHover: (val) {
                      if (val) {
                        setState(() {
                          _width = 380;
                          _height = 300;
                          _color3 = Colors.black;
                        });
                      } else {
                        setState(() {
                          _color3 = AppColor.primary;
                        });
                      }
                    },
                    onPressed: () {},
                    child: AnimatedContainer(
                      // Use the properties stored in the State class.
                      width: 380,
                      height: 280,
                      decoration: BoxDecoration(
                        color: _color3,
                      ),
                      // Define how long the animation should take.
                      duration: const Duration(seconds: 1),
                      // Provide an optional curve to make the animation feel smoother.
                      curve: Curves.fastOutSlowIn,

                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.stacked_line_chart_rounded,
                              color: _iconColor,
                              size: 70,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Adopt best practices, accelerate automation",
                              style: TextStyle(
                                  color: _iconColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "From framework development to scripts that accelerate automation, we can help.",
                              style: TextStyle(color: _iconColor, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
        ],
      ),
    );
  }
}
