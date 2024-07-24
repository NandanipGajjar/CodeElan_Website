import 'package:codeelan_web/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<ProductCloudServiceData> productCloudServiceList =
    <ProductCloudServiceData>[
  ProductCloudServiceData(
    icon: const Icon(
      Icons.cloud_done,
      color: AppColor.primary,
      size: 60,
    ),
    title: 'Ideation and Conceptualization',
    subTitle:
        'Collaborate with our team of experts to refine your ideas and conceptualize a product that aligns with your vision and market demands.',
  ),
  ProductCloudServiceData(
    icon: const Icon(Icons.screen_search_desktop_outlined,
        color: AppColor.primary, size: 60),
    title: "Agile Development Methodology",
    subTitle:
        "Our experienced architects design scalable and secure cloud architectures to optimize performance, enhance reliability, and minimize costs. We leverage best practices and industry standards to ensure a resilient foundation for your cloud infrastructure.",
  ),
  ProductCloudServiceData(
    icon: const Icon(Icons.javascript, color: AppColor.primary, size: 60),
    title: 'Full-Stack Development',
    subTitle:
        'Leverage our expertise in front-end and back-end development, ensuring comprehensive product development that meets functional and technical requirements.',
  ),
  ProductCloudServiceData(
      icon:
          const Icon(Icons.dataset_outlined, color: AppColor.primary, size: 60),
      title: 'User-Centric Design',
      subTitle:
          'Create intuitive and engaging user experiences through user-centric design principles, enhancing usability and customer satisfaction.'),
  ProductCloudServiceData(
      icon: const Icon(Icons.security, color: AppColor.primary, size: 60),
      title: 'Quality Assurance and Testing',
      subTitle:
          'Ensure the reliability, functionality, and performance of your product with our comprehensive quality assurance and testing services, covering unit testing, integration testing, and user acceptance testing.')
];

class ProductCloudServiceData {
  ProductCloudServiceData({
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final Icon icon;
  final String title;
  final String subTitle;
}
