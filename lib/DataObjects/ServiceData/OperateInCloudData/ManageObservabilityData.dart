import 'package:codeelan_web/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<ManageObservabilityData> manageObservabilityList =
    <ManageObservabilityData>[
  ManageObservabilityData(
    icon: const Icon(
      Icons.cloud_done,
      color: AppColor.primary,
      size: 60,
    ),
    title: 'Monitoring and Alerting',
    subTitle:
        'Implement robust monitoring solutions to track key metrics, performance indicators, and resource utilization, enabling proactive identification of anomalies and the timely resolution of issues.',
  ),
  ManageObservabilityData(
    icon: const Icon(Icons.screen_search_desktop_outlined,
        color: AppColor.primary, size: 60),
    title: "Log Management and Analysis",
    subTitle:
        'Centralize logs from various sources, perform real-time analysis, and gain valuable insights into system behavior, application performance, and security events for efficient troubleshooting and optimization.',
  ),
  ManageObservabilityData(
    icon: const Icon(Icons.javascript, color: AppColor.primary, size: 60),
    title: 'Incident Management',
    subTitle:
        'Our team manages and responds to incidents, promptly investigating and resolving issues to minimize downtime and ensure uninterrupted operations.',
  ),
  ManageObservabilityData(
    icon: const Icon(Icons.dataset_outlined, color: AppColor.primary, size: 60),
    title: 'Performance Optimization',
    subTitle:
        'Leverage observability data to identify performance bottlenecks, optimize resource utilization, and enhance the overall efficiency and responsiveness of your cloud-based systems.',
  ),
  ManageObservabilityData(
    icon: const Icon(Icons.security, color: AppColor.primary, size: 60),
    title: 'Reporting and Insights',
    subTitle:
        'Generate comprehensive reports and dashboards, providing stakeholders with valuable insights into system performance, trends, and areas for improvement.',
  ),
];

class ManageObservabilityData {
  ManageObservabilityData({
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final Icon icon;
  final String title;
  final String subTitle;
}
