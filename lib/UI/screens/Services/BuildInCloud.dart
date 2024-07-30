import 'package:codeelan_web/UI/screens/Services/BuildInCloudCategories/DevOpsServices.dart';
import 'package:codeelan_web/UI/screens/contact-us.dart';
import 'package:codeelan_web/Utils/app_colors.dart';
import 'package:codeelan_web/main.dart';
import 'package:flutter/material.dart';
import '../../../DataObjects/TestimonialListData.dart';
import '../../../Utils/Responsive.dart';
import '../../../Utils/widgets.dart';
import 'AdoptCloudCategories/BuildCloudFoundation.dart';
import 'AdoptCloudCategories/CLoudMigration.dart';
import 'BuildInCloudCategories/ProductDevelopmentServices.dart';

class BuildInCloud extends StatefulWidget {
  const BuildInCloud({Key? key}) : super(key: key);

  @override
  State<BuildInCloud> createState() => _BuildInCloudState();
}

class _BuildInCloudState extends State<BuildInCloud> {
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
                : const SizedBox(),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'images/Build-in-Cloud-banner.jpg',
                  height: 300,
                  width: width,
                  fit: BoxFit.cover,
                  // color: const Color.fromRGBO(3, 28, 5, 1.0),
                  // opacity: const AlwaysStoppedAnimation(.1),
                  colorBlendMode: BlendMode.dstOver,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: width * .1,
                            child: Divider(
                              thickness: 1,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "BUILD IN CLOUD",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            width: width * .1,
                            child: Divider(
                              thickness: 1,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Our “Build in Cloud” services focus on enabling efficient and effective software development on cloud platforms. We provide comprehensive support for building new products or modernizing existing ones, leveraging the power and scalability of cloud technology.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ],
            ),
            AdoptCloud(),
            productDevelopmentWidget(),
            devOpsWidget(),
            testingAutomationWidget(),
            Column(
              children: [
                SizedBox(
                  height: height * .05,
                ),
                RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                        text: 'TRANSFORMATION TO ',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: AppColor.primary,
                          fontSize: 35,
                          height: height * .002,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'CLOUD ENGINEERING',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                color: AppColor.subHeadingColor,
                                fontSize: 35,
                                height: height * .002,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1,
                              )),
                        ])),
                SizedBox(
                    width: width * .2,
                    child: Divider(
                      thickness: 4,
                      color: AppColor.buttonBlueColor,
                    )),
                SizedBox(
                  height: height * .05,
                ),
                Image.asset(
                  'images/Transformation-to-Cloud-Engineering.jpg',
                  height: height * .8,
                ),
              ],
            ),
            SizedBox(
              height: height * .08,
            ),
            Center(
              child: Text(
                "Why Choose US",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            whyChoose(),
            testimonials(),
            testimonialSlider(),
            CompaniesSliderWidget()
          ],
        ),
      ),
    );
  }

  Widget AdoptCloud() {
    return Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: Responsive.isDesktop(context) ||
                            Responsive.isk4Desktop(context)
                        ? width * .3
                        : width * .3,
                    child: Text(
                      "Streamlining Cloud Product Development",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: Responsive.isDesktop(context) ||
                                Responsive.isk4Desktop(context)
                            ? 50
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
                        ? width * .3
                        : width * .5,
                    child: Text(
                      'Building a strong foundation in the cloud is essential for businesses seeking to leverage its numerous benefits. Our “Adopt Cloud” services are designed to guide you through this transformational journey with expertise and precision.',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Arial',
                          fontSize: 20,
                          letterSpacing: .5,
                          height: 1.8),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: height * .1,
                  ),
                  blueButton(
                    context,
                    "Contact Us",
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)   => Contactus(), settings: RouteSettings(name:  RouterGenerate.contactUs_Route)));
                    },
                  ),
                ],
              ),
              Image.asset(
                'images/Streamlining-Cloud-Product-Development.jpg',
                height: height * .8,
              ),
            ],
          )
        : Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Streamlining Cloud Product Development",
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 24,
                    color: Color.fromRGBO(29, 27, 76, 1),
                    letterSpacing: .4,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: height * .01,
                ),
                SizedBox(
                  child: Text(
                    "Building a strong foundation in the cloud is essential for businesses seeking to leverage its numerous benefits. Our “Adopt Cloud” services are designed to guide you through this transformational journey with expertise and precision.",
                    style: TextStyle(
                        color: AppColor.subHeadingColor,
                        fontFamily: 'Arial',
                        fontSize: 18,
                        letterSpacing: .4,
                        height: 1.5),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: height * .1,
                ),
                blueButton(
                  context,
                  "Contact Us",
                  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)   => Contactus(), settings: RouteSettings(name:  RouterGenerate.contactUs_Route)));
                  },
                ),
                Image.asset(
                  'images/Streamlining-Cloud-Product-Development.jpg',
                  height: height * .8,
                )
              ],
            ),
          );
  }

  Widget productDevelopmentWidget() {
    return Container(
      color: AppColor.lightGrey,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/Product-Development.jpg',
                  height: height * .6,
                ),
                SizedBox(width: width * .05),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .3
                          : width * .3,
                      child: Text(
                        "Product Development",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? 40
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
                          ? width * .3
                          : width * .5,
                      child: Text(
                        'Our comprehensive software development services on cloud platforms cover new product creation and modernization. With a flexible approach, we provide complete Scrum teams, including software architects, engineers, DevOps specialists, testers, and UI/UX designers. We seamlessly integrate into existing teams to deliver high-quality software solutions on the cloud.',
                        style: TextStyle(
                            color: AppColor.subHeadingColor,
                            fontFamily: 'Arial',
                            fontSize: 18,
                            letterSpacing: .5,
                            height: 1.5),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    blueButton(
                      context,
                      "Learn More",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDevelopmentServices()));
                      },
                    ),
                  ],
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/Product-Development.jpg',
                    // height: height * .7,
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  Text(
                    "Product Development",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? 40
                          : 26,
                      color: Color.fromRGBO(29, 27, 76, 1),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: width * .01,
                  ),
                  Text(
                    'Our comprehensive software development services on cloud platforms cover new product creation and modernization. With a flexible approach, we provide complete Scrum teams, including software architects, engineers, DevOps specialists, testers, and UI/UX designers. We seamlessly integrate into existing teams to deliver high-quality software solutions on the cloud.',
                    style: TextStyle(
                        color: AppColor.subHeadingColor,
                        fontFamily: 'Arial',
                        fontSize: 18,
                        letterSpacing: .5,
                        height: 1.5),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  blueButton(
                    context,
                    "Learn More",
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDevelopmentServices()));
                    },
                  ),
                ],
              ),
            ),
    );
  }

  Widget testingAutomationWidget() {
    return Container(
      color: AppColor.lightGrey,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/Testing-Automation.jpeg',
                  width: width * .4,
                ),
                SizedBox(
                  width: width * .05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .3
                          : width * .3,
                      child: Text(
                        "Testing Automation",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? 40
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
                          ? width * .4
                          : width * .5,
                      child: Text(
                        'We automate testing processes, integrating them into CI/CD pipelines for improved software quality. Our expertise includes selecting testing tools and frameworks, reducing errors, and ensuring efficient and reliable software delivery.',
                        style: TextStyle(
                            color: AppColor.subHeadingColor,
                            fontFamily: 'Arial',
                            fontSize: 18,
                            letterSpacing: .5,
                            height: 1.5),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    blueButton(
                      context,
                      "Learn More",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)   => Contactus(), settings: RouteSettings(name:  RouterGenerate.contactUs_Route)));
                      },
                    ),
                  ],
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/Testing-Automation.jpeg',
                    // fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: height * .1,
                  ),
                  Text(
                    "Testing Automation",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 26,
                      color: Color.fromRGBO(29, 27, 76, 1),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  Text(
                    'We automate testing processes, integrating them into CI/CD pipelines for improved software quality. Our expertise includes selecting testing tools and frameworks, reducing errors, and ensuring efficient and reliable software delivery.',
                    style: TextStyle(
                        color: AppColor.subHeadingColor,
                        fontFamily: 'Arial',
                        fontSize: 18,
                        letterSpacing: .5,
                        height: 1.5),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  blueButton(
                    context,
                    "Learn More",
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)   => Contactus(), settings: RouteSettings(name:  RouterGenerate.contactUs_Route)));
                    },
                  ),
                ],
              ),
            ),
    );
  }

  Widget devOpsWidget() {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 30),
      child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .3
                          : width * .3,
                      child: Text(
                        "DevOps",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? 40
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
                          ? width * .3
                          : width * .5,
                      child: Text(
                        "We excel in deploying and migrating applications and data to the cloud. Our expertise allows for a seamless transition, ensuring minimal disruption and enabling you to leverage the benefits of cloud technology.",
                        style: TextStyle(
                            color: AppColor.subHeadingColor,
                            fontFamily: 'Arial',
                            fontSize: 18,
                            letterSpacing: .5,
                            height: 1.5),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: height * .1,
                    ),
                    blueButton(
                      context,
                      "Learn More",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DevOpsServices(), settings: RouteSettings(name:  RouterGenerate.cloud_migration_services_Route)));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: width * .05,
                ),
                Image.asset(
                  'images/Cloud-migration.png',
                  height: height * .5,
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    'images/Cloud-migration.png',
                    height: height * .5,
                  ),
                  Text(
                    "Cloud Migration",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? 40
                          : 26,
                      color: Color.fromRGBO(29, 27, 76, 1),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "We excel in deploying and migrating applications and data to the cloud. Our expertise allows for a seamless transition, ensuring minimal disruption and enabling you to leverage the benefits of cloud technology.",
                    style: TextStyle(
                        color: AppColor.subHeadingColor,
                        fontFamily: 'Arial',
                        fontSize: 18,
                        letterSpacing: .5,
                        height: 1.5),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: height * .1,
                  ),
                  blueButton(
                    context,
                    "Learn More",
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CloudMigration(), settings: RouteSettings(name:  RouterGenerate.cloud_migration_services_Route)));
                    },
                  ),
                ],
              ),
            ),
    );
  }

  Widget whyChoose() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                iconBox('images/icons-server.png', 'Comprehensive Services'),
                iconBox('images/user-setting.png', 'Engineering-Led Methodology'),
                iconBox(
                    'images/swiftTengibleResult.png', 'Swift And Tangible Results'),
                iconBox('images/process-icon.png', 'Value-Driven Operations'),
              ],
            )
          : Column(children: [
              iconBox('images/icons-server.png', 'Comprehensive Services'),
              SizedBox(
                height: height * .1,
              ),
              iconBox('images/user-setting.png', 'Engineering-Led Methodology'),
              SizedBox(
                height: height * .1,
              ),
              iconBox('images/swiftTengibleResult.png', 'Swift And Tangible Results'),
              SizedBox(
                height: height * .1,
              ),
              iconBox('images/process-icon.png', 'Value-Driven Operations'),
              SizedBox(
                height: height * .1,
              ),
            ]),
    );
  }

  Widget iconBox(String imageString, String label) {
    return Container(
      alignment: Alignment.center,
      // height: 150,
      width: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? 200
          : width,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              imageString,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: height * .015,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget testimonials() {
    return Container(
        width: 100,
        alignment: Alignment.center,
        color: Color.fromRGBO(235, 235, 235, 1),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Testimonials",
                        style: TextStyle(color: AppColor.green, fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          width: 40,
                          child: Divider(
                            thickness: 3,
                            color: AppColor.green,
                          )),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .28
                          : width * .3,
                      child: Text(
                        "We are very glad to get client review.",
                        style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: Responsive.isDesktop(context) ||
                                    Responsive.isk4Desktop(context)
                                ? 36
                                : 26,
                            color: Color.fromRGBO(29, 27, 76, 1),
                            letterSpacing: .5,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      width: width * .05,
                    ),
                    SizedBox(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .4
                          : width * .5,
                      child: Text(
                        "Let our success stories highlight why our clients trust us for all their software development queries, quality engineering initiatives and digital transformation implementation.",
                        style: TextStyle(
                          color: Color.fromRGBO(79, 79, 103, 1),
                          fontFamily: 'Arial',
                          fontSize: 16,
                          letterSpacing: .5,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  Widget testimonialSlider() {
    return Container(
      height: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? 440
          : 400,
      width: double.infinity,
      alignment: Alignment.center,
      color: Color.fromRGBO(235, 235, 235, 1),
      padding: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? EdgeInsets.only(left: 100, right: 100, top: 20, bottom: 20)
          : EdgeInsets.all(20),
      child: ListView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: testimonialData.length,
          itemBuilder: (BuildContext context, int index) => Container(
                child: Stack(children: [
                  Positioned(
                    child: Container(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .3
                          : width * .6,
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? EdgeInsets.only(
                                  left: 50, right: 50, top: 20, bottom: 20)
                              : EdgeInsets.all(10),
                          child: Column(children: [
                            Card(
                              margin: EdgeInsets.all(5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25), // Adjust the radius as needed
                              ),
                              child: Image.asset(
                                testimonialData[index].image,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              clipBehavior: Clip.antiAlias,
                              elevation: 5.0,
                            ),
                            SizedBox(
                              height: height * .03,
                            ),
                            Text(
                              testimonialData[index].description,
                              style: TextStyle(
                                color: Color.fromRGBO(79, 79, 103, 1),
                                fontFamily: 'Arial',
                                fontSize: Responsive.isDesktop(context) ||
                                        Responsive.isk4Desktop(context)
                                    ? 16
                                    : 10,
                                letterSpacing: .5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            Text(
                              testimonialData[index].name,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.bold,
                                fontSize: Responsive.isDesktop(context) ||
                                        Responsive.isk4Desktop(context)
                                    ? 20
                                    : 16,
                                letterSpacing: .5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: height * .001,
                            ),
                            Text(
                              testimonialData[index].designation,
                              style: TextStyle(
                                color: Color.fromRGBO(79, 79, 103, 1),
                                fontFamily: 'Arial',
                                fontSize: Responsive.isDesktop(context) ||
                                        Responsive.isk4Desktop(context)
                                    ? 16
                                    : 10,
                                letterSpacing: .5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Positioned(
                    top: -10,
                    left: 50,
                    child: Image.asset(
                      "images/get-quote.png",
                      color: AppColor.grey,
                      height: 60,
                    ),
                  ),
                ]),
              )),
    );
    /*  return   Container(width: width, height: 500,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
                child: Center(child: Column(children: [PositionedDirectional(child: Image.asset("images/get-quote.png",height: 100,))],)),
              ),
            ),
          ),
        ],
      ),
    );*/
  }

  Widget blueButton(BuildContext context, String text, Function() onTap) {
    return Container(
      width: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? width * .15
          : width * .4,
      // alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.only(left: 30, right: 30)),
          overlayColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.white;
            }
            return AppColor.buttonBlueColor;
          }),
          foregroundColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return AppColor.buttonBlueColor;
            }
            return Colors.white;
          }),
          backgroundColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.white;
            }
            return AppColor.buttonBlueColor;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: AppColor.buttonBlueColor)),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          height: 40,
          child: Text(text,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  // color: AppColor.buttonBlueColor,
                  letterSpacing: 1)),
        ),
      ),
    );
  }
}
