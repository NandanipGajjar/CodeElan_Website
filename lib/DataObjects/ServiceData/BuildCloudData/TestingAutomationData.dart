import 'package:codeelan_web/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<TestingAutomationData> testingAutomationList = <TestingAutomationData>[
  TestingAutomationData(
      icon: const Icon(
        Icons.cloud_done,
        color: AppColor.primary,
        size: 60,
      ),
      title: 'Test Strategy and Planning',
      subTitle:
          'Collaborate with our testing experts to define a comprehensive test strategy, including test objectives, scope, and test coverage, tailored to your specific application requirements.'),
  TestingAutomationData(
      icon: const Icon(Icons.javascript, color: AppColor.primary, size: 60),
      title: 'Test Automation Framework Development',
      subTitle:
          "We develop customized test automation frameworks using industry-leading tools and technologies, enabling efficient test script creation, execution, and maintenance."),
  TestingAutomationData(
      icon:
          const Icon(Icons.dataset_outlined, color: AppColor.primary, size: 60),
      title: 'Regression Testing',
      subTitle:
          "Automate regression testing to quickly and accurately validate the functionality of your applications after code changes, ensuring that new updates do not introduce unexpected issues."),
  TestingAutomationData(
      icon:
          const Icon(Icons.padding_outlined, color: AppColor.primary, size: 60),
      title: 'Continuous Integration and Testing',
      subTitle:
          "Integrate testing into your continuous integration and delivery pipelines, enabling automated testing at every stage to detect and address issues early in the development cycle."),
  TestingAutomationData(
      icon: const Icon(Icons.security, color: AppColor.primary, size: 60),
      title: 'Performance Testing',
      subTitle:
          "Conduct comprehensive performance testing to assess system behavior under various load conditions, identifying bottlenecks and optimizing application performance."),
  TestingAutomationData(
      icon: const Icon(Icons.screen_search_desktop_outlined,
          color: AppColor.primary, size: 60),
      title: "Mobile and Cross-Browser Testing",
      subTitle:
          "Ensure optimal user experience across different mobile devices and web browsers by automating mobile and cross-browser testing, detecting compatibility issues, and ensuring consistent functionality."),
];

class TestingAutomationData {
  TestingAutomationData({
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final Icon icon;
  final String title;
  final String subTitle;
}
