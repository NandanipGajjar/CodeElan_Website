import 'package:codeelan_web/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<DevOpsData> devOpsList = <DevOpsData>[
  DevOpsData(
      icon: const Icon(
        Icons.cloud_done,
        color: AppColor.primary,
        size: 60,
      ),
      title: 'Continuous Integration and Deployment',
      subTitle:
          'Implement automated CI/CD pipelines to accelerate software delivery, ensuring frequent and reliable releases while maintaining quality standards.'),
  DevOpsData(
      icon: const Icon(Icons.screen_search_desktop_outlined,
          color: AppColor.primary, size: 60),
      title: "Infrastructure as Code",
      subTitle:
          "Leverage the power of infrastructure automation and configuration management tools to provision, manage, and scale infrastructure resources efficiently."),
  DevOpsData(
      icon: const Icon(Icons.javascript, color: AppColor.primary, size: 60),
      title: 'Automated Testing and Quality Assurance',
      subTitle:
          "Integrate automated testing frameworks into your development process to achieve comprehensive test coverage and deliver high-quality software."),
  DevOpsData(
      icon:
          const Icon(Icons.dataset_outlined, color: AppColor.primary, size: 60),
      title: 'Release Management',
      subTitle:
          "Streamline the release process, enabling controlled deployments, rollbacks, and versioning, ensuring smooth transitions from development to production environments."),
  DevOpsData(
      icon: const Icon(Icons.security, color: AppColor.primary, size: 60),
      title: 'Monitoring and Performance Optimization',
      subTitle:
          "Implement robust monitoring and analytics solutions to gain insights into application performance, troubleshoot issues, and optimize resource utilization."),
  DevOpsData(
      icon: const Icon(Icons.security, color: AppColor.primary, size: 60),
      title: 'Collaboration and Communication',
      subTitle:
          "Foster collaboration and communication among development and operations teams, breaking down silos and ensuring seamless coordination throughout the software development lifecycle."),
  DevOpsData(
      icon: const Icon(Icons.mobile_screen_share_rounded,
          color: AppColor.primary, size: 60),
      title: 'Mobile and Cross-Browser Testing',
      subTitle:
          "Ensure optimal user experience across different mobile devices and web browsers by automating mobile and cross-browser testing, detecting compatibility issues, and ensuring consistent functionality."),
];


class DevOpsData {
  DevOpsData({
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final Icon icon;
  final String title;
  final String subTitle;
}
