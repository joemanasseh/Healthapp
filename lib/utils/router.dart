import 'package:doctor_finder/pages/appointments.dart';
import 'package:doctor_finder/pages/available_specialists.dart';
import 'package:doctor_finder/pages/book_appointment.dart';
import 'package:doctor_finder/pages/cart.dart';
import 'package:doctor_finder/pages/chat_screen.dart';
import 'package:doctor_finder/pages/dashboard.dart';
import 'package:doctor_finder/pages/drug_detail.dart';
import 'package:doctor_finder/pages/drug_home.dart';
import 'package:doctor_finder/pages/drug_store.dart';
import 'package:doctor_finder/pages/home.dart';
import 'package:doctor_finder/pages/payment_detail.dart';
import 'package:doctor_finder/pages/payment_page.dart';
import 'package:doctor_finder/pages/search_result.dart';
import 'package:doctor_finder/pages/video_call.dart';
import 'package:doctor_finder/pages/doctor_profile.dart';
import 'package:doctor_finder/pages/landing_screen.dart';
import 'package:doctor_finder/pages/login_screen.dart';
import 'package:doctor_finder/pages/message_list.dart';
import 'package:doctor_finder/pages/notification_screen.dart';
import 'package:doctor_finder/pages/password_sent.dart';
import 'package:doctor_finder/pages/register_page.dart';
import 'package:doctor_finder/pages/reset_password.dart';
import 'package:doctor_finder/pages/search_doctor.dart';
import 'package:doctor_finder/pages/settings_screen.dart';
import 'package:doctor_finder/pages/user_profile.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart' hide Router;

class AppRouter {
  static final router = Router();
  static String initialRoute = "/";
  static Handler landingPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return LandingScreen();
    },
  );
  static Handler loginPage = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return LoginScreen();
    },
  );

  static Handler registerPage = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return RegisterPage();
    },
  );

  static Handler resetPassword = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return ResetPassword();
    },
  );

  static Handler passwordSent = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return PasswordSent();
    },
  );

  static Handler doctorProfile = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return DoctorProfile();
    },
  );

  static Handler bookAppointmentHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return BookAppointment();
    },
  );

  static Handler notificationHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NotificationScreen();
    },
  );

  static Handler chatScreenHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return ChatScreen();
    },
  );

  static Handler settingsHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return SettingScreen();
    },
  );

  static Handler profileHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return UserProfile();
    },
  );

  static Handler dashboardHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return Dashboard();
    },
  );

  static Handler availableSpecialistHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return AvailableSpecialist();
    },
  );

  static Handler appointmentHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return Appointments();
    },
  );

  static Handler messageListHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return MessageList();
    },
  );

  static Handler searchDoctorHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return SearchDoctor();
    },
  );

  static Handler videoCallHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return VideoCall();
    },
  );

  static Handler searchResultHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return SearchResult();
    },
  );

  static Handler drugStoreHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return DrugStore();
    },
  );

  static Handler drugDetailHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return DrugDetail();
    },
  );

  static Handler paymentDetailHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return PaymentDetail();
    },
  );

  static Handler cartHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return Cart();
    },
  );

  static Handler paymentPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return PaymentPage();
    },
  );

  static Handler drugHomeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return DrugHome();
    },
  );

  static Handler homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      int page;
      if (params["page"] != null) {
        page = int.parse(params["page"][0]);
      }
      print(page);
      return Home(
        selectedIndex: page,
      );
    },
  );

  static void setupRouter() {
    router.define("/", handler: landingPageHandler);
    router.define("home/:page", handler: homeHandler);
    router.define("home", handler: homeHandler);
    router.define("login", handler: loginPage);
    router.define("register", handler: registerPage);
    router.define("forgot-password", handler: resetPassword);
    router.define("password-sent", handler: passwordSent);
    router.define("doctor-profile", handler: doctorProfile);
    router.define("book-appointment", handler: bookAppointmentHandler);
    router.define("notification", handler: notificationHandler);
    router.define("chat-screen", handler: chatScreenHandler);
    router.define("settings", handler: settingsHandler);
    router.define("profile", handler: profileHandler);
    router.define("dashboard", handler: dashboardHandler);
    router.define("available-specialist", handler: availableSpecialistHandler);
    router.define("appointments", handler: appointmentHandler);
    router.define("message-list", handler: messageListHandler);
    router.define("search-doctor", handler: searchDoctorHandler);
    router.define("video-call", handler: videoCallHandler);
    router.define("search-result", handler: searchResultHandler);
    router.define("drug-store", handler: drugStoreHandler);
    router.define("drug-detail", handler: drugDetailHandler);
    router.define("payment-detail", handler: paymentDetailHandler);
    router.define("cart", handler: cartHandler);
    router.define("payment-page", handler: paymentPageHandler);
    router.define("drug-home", handler: drugHomeHandler);
  }
}
