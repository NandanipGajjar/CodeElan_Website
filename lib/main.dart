import 'package:codeelan_web/UI/screens/aboutUs.dart';
import 'package:codeelan_web/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'UI/homePage.dart';
import 'UI/screens/Services/AdoptCloudCategories/BuildCloudFoundation.dart';
import 'UI/screens/Services/AdoptCloudCategories/CLoudMigration.dart';
import 'UI/screens/Services/AdoptCloudCategories/KubernetAdoption.dart';
import 'UI/screens/Services/adopt_cloud.dart';
import 'UI/screens/Services/service.dart';
import 'UI/screens/Solutions/IPSolutions/IPSolutionsUI.dart';
import 'UI/screens/contact-us.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodeElan Technologies - You Think IT We Deliver IT',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (settings) => RouterGenerate.generateRoute(settings),
      // home: IPSoolutionsUI(),
      // home: HomePage(),
    );
  }
}

class RouterGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print('setting.name: ${settings.name}');
    switch (settings.name) {
      case RouterGenerate.home_Route:
        return MaterialPageRoute(
            builder: (_) => const HomePage(),
            settings: const RouteSettings(name: '/'));

      case RouterGenerate.services_Route:
        return MaterialPageRoute(
            builder: (_) => const ServicePage(),
            settings: const RouteSettings(name: RouterGenerate.services_Route));

      case RouterGenerate.contactUs_Route:
        return MaterialPageRoute(
          builder: (_) => const Contactus(),
          settings: const RouteSettings(name: RouterGenerate.contactUs_Route),
        );

      case RouterGenerate.aboutUs_Route:
        return MaterialPageRoute(
            builder: (_) => const Aboutus(),
            settings: const RouteSettings(name: RouterGenerate.aboutUs_Route));

      case RouterGenerate.adopt_cloud_services_Route:
        return MaterialPageRoute(
          builder: (_) => const AdoptCloudUI(),
          settings: const RouteSettings(
              name: RouterGenerate.adopt_cloud_services_Route),
        );

      case RouterGenerate.build_cloud_foundation_services_Route:
        return MaterialPageRoute(
            builder: (_) => const BuildCloudFoundation(),
            settings: const RouteSettings(
                name: RouterGenerate.build_cloud_foundation_services_Route));

      case RouterGenerate.cloud_migration_services_Route:
        return MaterialPageRoute(
          builder: (_) => const CloudMigration(),
          settings: const RouteSettings(
              name: RouterGenerate.cloud_migration_services_Route),
        );

      case RouterGenerate.kubernet_adoption_services_Route:
        return MaterialPageRoute(
          builder: (_) => const KubernetAdoption(),
          settings: const RouteSettings(
              name: RouterGenerate.kubernet_adoption_services_Route),
        ); case RouterGenerate.IPSolution_Route:
      return MaterialPageRoute(
        builder: (_) => const IPSoolutionsUI(),
        settings: const RouteSettings(
            name: RouterGenerate.IPSolution_Route),
      );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text('No Route for ${settings.name}'),
              ),
            );
          },
        );
    }
  }

  static const String home_Route = '/';
  static const String contactUs_Route = '/contact-us';
  static const String aboutUs_Route = '/about-us';
  static const String services_Route = '/services';
  static const String adopt_cloud_services_Route = '/adopt-cloud';
  static const String build_cloud_foundation_services_Route =
      '/service/build-cloud-foundation/';
  static const String cloud_migration_services_Route =
      '/service/cloud-migration/';
  static const String kubernet_adoption_services_Route =
      '/service/kubernetes-adoption/';
  static const String IPSolution_Route = '/IP-Solutions';

}
