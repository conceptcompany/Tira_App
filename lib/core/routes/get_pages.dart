import 'package:get/get.dart';
import 'package:tira_app/controllers/home_controller.dart';
import 'package:tira_app/screens/auth/presentation/view/auth.dart';
import 'package:tira_app/screens/auth/presentation/widget/send_code_widget.dart';
import 'package:tira_app/screens/auth/presentation/widget/send_phone_screen.dart';
import 'package:tira_app/screens/landing_page.dart';
import 'package:tira_app/screens/splash_screen.dart';

import '../../screens/auth/binding/auth_binding.dart';
import '../../screens/navbar_pages/home/agenda/bindings/agenda_binding.dart';
import '../../screens/navbar_pages/home/agenda/persentation/view/agenda.dart';
import '../../screens/navbar_pages/home/citizen_service/persentation/view/citizen_service.dart';
import '../../screens/navbar_pages/home/complaints/presentation/view/complaints.dart';
import '../../screens/navbar_pages/home/emergancy/emergency.dart';
import '../../screens/navbar_pages/home/forms/presentation/view/forms.dart';
import '../../screens/navbar_pages/home/news/persentation/view/news.dart';
import '../../screens/navbar_pages/home/polls/presentation/view/polls.dart';
import '../../screens/navbar_pages/home/sections/presentation/view/sections.dart';
import '../../screens/navbar_pages/home/show_ideas.dart';
import '../../screens/navbar_pages/services/bindings/services_details_binding.dart';
import '../../screens/navbar_pages/services/persentation/view/servicesDetails.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => Splash(),
      // binding: MainBinding(),
    ),
    GetPage(
        name: AppRoutes.auth,
        page: () => const AuthScreen(),
        binding: AuthBinding()),
    GetPage(
        name: AppRoutes.home,
        page: () => const LandingPage(),
        binding: HomeBinding()),
    GetPage(name: AppRoutes.check1, page: () => const SendPhoneScreen()),
    GetPage(name: AppRoutes.check2, page: () => const SendCodeScreen()),
    GetPage(name: AppRoutes.news, page: () => const NewsScreen()),
    GetPage(name: AppRoutes.formScreen, page: () => const Forms()),
    GetPage(name: AppRoutes.surveysScreen, page: () => const Polls()),
    GetPage(name: AppRoutes.sectionsScreen, page: () => const Sections()),
    GetPage(name: AppRoutes.complaintsScreen, page: () => const Complaints()),
    GetPage(
        name: AppRoutes.citizenServiceScreen,
        page: () => const CitizenService()),
    GetPage(
        name: AppRoutes.agendaScreen,
        page: () => const Agenda(),
        binding: AgendaBinding()),
    GetPage(
        name: AppRoutes.servicesDetails,
        page: () => const ServicesDetails(),
        binding: ServicesDetailsBindings()),
    GetPage(name: AppRoutes.emergencyScreen, page: () => const Emergency()),
    GetPage(name: AppRoutes.showIdeasScreen, page: () => const ShowIdeas()),
  ];
}
