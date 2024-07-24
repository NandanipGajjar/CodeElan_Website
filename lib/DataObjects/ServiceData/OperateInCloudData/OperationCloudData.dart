import 'package:codeelan_web/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<OperationCloudData> operationCloudList = <OperationCloudData>[
  OperationCloudData(
    icon: const Icon(
      Icons.cloud_done,
      color: AppColor.primary,
      size: 60,
    ),
    title: 'Infrastructure Monitoring and Management',
    subTitle:
        'Proactively monitor your cloud infrastructure, ensuring its health, availability, and performance. We handle infrastructure provisioning, configuration, and optimization to maintain a stable and scalable environment.',
  ),
  OperationCloudData(
    icon: const Icon(Icons.screen_search_desktop_outlined,
        color: AppColor.primary, size: 60),
    title: "Cost Optimization",
    subTitle:
        'Optimize your cloud costs by analyzing resource utilization, rightsizing instances, implementing cost-saving strategies, and leveraging reserved instances or spot instances where applicable.',
  ),
  OperationCloudData(
    icon: const Icon(Icons.javascript, color: AppColor.primary, size: 60),
    title: 'Architecture Review and Recommendations',
    subTitle:
        'Perform periodic architecture reviews, identify configuration drifts and remediate them. Update infrastructure as code scripts to reflect recommended changes.',
  ),
  OperationCloudData(
    icon: const Icon(Icons.dataset_outlined, color: AppColor.primary, size: 60),
    title: 'Automation and Orchestration',
    subTitle:
        'Streamline and automate routine operational tasks through cloud orchestration, leveraging infrastructure-as-code (IaC) practices to improve efficiency, reduce errors, and enable rapid scalability.',
  ),
  OperationCloudData(
    icon: const Icon(Icons.security, color: AppColor.primary, size: 60),
    title: 'Incident Management',
    subTitle:
        'Our team is available 24/7 to handle incidents, promptly responding to alerts, diagnosing issues, and resolving/escalating them efficiently to minimize downtime and ensure uninterrupted operations.',
  ),
  OperationCloudData(
    icon: const Icon(Icons.dataset_outlined, color: AppColor.primary, size: 60),
    title: 'Disaster Recovery and Service availability',
    subTitle:
        'Ensure backups are configured and data is restorable. Perform periodic recovery tests. Update recovery procedures to reflect changes in the environments.',
  ),
];

class OperationCloudData {
  OperationCloudData({
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final Icon icon;
  final String title;
  final String subTitle;
}
