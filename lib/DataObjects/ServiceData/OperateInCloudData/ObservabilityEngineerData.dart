import 'package:codeelan_web/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<ObservabilityEngineeringData> observabilityEngineeringList =
<ObservabilityEngineeringData>[
  ObservabilityEngineeringData(
      icon: const Icon(
        Icons.cloud_done,
        color: AppColor.primary,
        size: 60,
      ),
      title: 'Distributed Tracing',
      subTitle:
      'Implement distributed tracing techniques to track and analyze requests across your microservices architecture, enabling you to understand end-to-end transaction flows, identify performance bottlenecks, and improve system reliability.'),
  ObservabilityEngineeringData(
    icon: const Icon(Icons.screen_search_desktop_outlined,
        color: AppColor.primary, size: 60),
    title: "Log Analysis and Management",
    subTitle:
    'Centralize logs from various sources, perform in-depth analysis, and leverage advanced log management techniques to gain insights into system behavior, troubleshoot issues, and optimize performance.',
  ),
  ObservabilityEngineeringData(
    icon: const Icon(Icons.javascript, color: AppColor.primary, size: 60),
    title: 'Metrics Monitoring',
    subTitle:
    'Set up comprehensive metrics monitoring solutions to collect and visualize key performance indicators, enabling you to track system health, identify trends, and make data-driven decisions for continuous improvement.',),
  ObservabilityEngineeringData(
    icon: const Icon(Icons.dataset_outlined, color: AppColor.primary, size: 60),
    title: 'Anomaly Detection and Alerting',
    subTitle:
    'Implement advanced anomaly detection algorithms to identify unusual patterns and behaviors within your cloud environment, generating proactive alerts to enable prompt investigation and resolution.',),
  ObservabilityEngineeringData(
    icon: const Icon(Icons.security, color: AppColor.primary, size: 60),
    title: 'Performance Optimization',
    subTitle:
    'Utilize observability data to identify performance bottlenecks, optimize resource utilization, and enhance the overall efficiency and responsiveness of your cloud-based systems.',),

  ObservabilityEngineeringData(
    icon: const Icon(Icons.dataset_outlined, color: AppColor.primary, size: 60),
  title: 'Observability Strategy and Consulting',
  subTitle:
  'Our observability experts provide strategic guidance and consulting services to help you define an effective observability strategy, select the right tools and techniques, and implement best practices tailored to your specific needs.',),
];

class ObservabilityEngineeringData {
  ObservabilityEngineeringData({
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final Icon icon;
  final String title;
  final String subTitle;
}
