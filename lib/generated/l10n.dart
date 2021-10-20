// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to DoctorFinder`
  String get welcome_text {
    return Intl.message(
      'Welcome to DoctorFinder',
      name: 'welcome_text',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `LOG IN`
  String get login {
    return Intl.message(
      'LOG IN',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login2 {
    return Intl.message(
      'Login',
      name: 'login2',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Find over a million health practitioners in one place.`
  String get find_practitioners {
    return Intl.message(
      'Find over a million health practitioners in one place.',
      name: 'find_practitioners',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get email_address {
    return Intl.message(
      'Email Address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgot_password {
    return Intl.message(
      'Forgot Password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_str {
    return Intl.message(
      'Continue',
      name: 'continue_str',
      desc: '',
      args: [],
    );
  }

  /// `Continue with social`
  String get continue_social {
    return Intl.message(
      'Continue with social',
      name: 'continue_social',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get signin_fb {
    return Intl.message(
      'Sign in with Facebook',
      name: 'signin_fb',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get signin_apple {
    return Intl.message(
      'Sign in with Apple',
      name: 'signin_apple',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_password {
    return Intl.message(
      'Reset Password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email address associated with your account, and we will send reset instructions.`
  String get reset_instructions {
    return Intl.message(
      'Enter the email address associated with your account, and we will send reset instructions.',
      name: 'reset_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get first_name {
    return Intl.message(
      'First Name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message(
      'Last Name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_account',
      desc: '',
      args: [],
    );
  }

  /// `Check your email`
  String get check_mail {
    return Intl.message(
      'Check your email',
      name: 'check_mail',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a password recovery mail to your email address.`
  String get password_sent {
    return Intl.message(
      'We have sent a password recovery mail to your email address.',
      name: 'password_sent',
      desc: '',
      args: [],
    );
  }

  /// `Open mail app`
  String get open_mail {
    return Intl.message(
      'Open mail app',
      name: 'open_mail',
      desc: '',
      args: [],
    );
  }

  /// `Did not receive the email? Check your spam folder.`
  String get didnt_receive_mail {
    return Intl.message(
      'Did not receive the email? Check your spam folder.',
      name: 'didnt_receive_mail',
      desc: '',
      args: [],
    );
  }

  /// `Looking For Your Desire Specialist Doctor ?`
  String get looking_doctor {
    return Intl.message(
      'Looking For Your Desire Specialist Doctor ?',
      name: 'looking_doctor',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get see_all {
    return Intl.message(
      'See all',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Find Your`
  String get find_your {
    return Intl.message(
      'Find Your',
      name: 'find_your',
      desc: '',
      args: [],
    );
  }

  /// `Specialist`
  String get specialist {
    return Intl.message(
      'Specialist',
      name: 'specialist',
      desc: '',
      args: [],
    );
  }

  /// `Available Doctors`
  String get available_doctors {
    return Intl.message(
      'Available Doctors',
      name: 'available_doctors',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get experience {
    return Intl.message(
      'Experience',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `Patients`
  String get patients {
    return Intl.message(
      'Patients',
      name: 'patients',
      desc: '',
      args: [],
    );
  }

  /// `Pediatrician`
  String get pediatrician {
    return Intl.message(
      'Pediatrician',
      name: 'pediatrician',
      desc: '',
      args: [],
    );
  }

  /// `Neurosurgeon`
  String get neurosurgeon {
    return Intl.message(
      'Neurosurgeon',
      name: 'neurosurgeon',
      desc: '',
      args: [],
    );
  }

  /// `Cardiologist`
  String get cardiologist {
    return Intl.message(
      'Cardiologist',
      name: 'cardiologist',
      desc: '',
      args: [],
    );
  }

  /// `Psychiatrist`
  String get psychiatrist {
    return Intl.message(
      'Psychiatrist',
      name: 'psychiatrist',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Doctors`
  String get doctors {
    return Intl.message(
      'Doctors',
      name: 'doctors',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Book Appointment`
  String get book_appointment {
    return Intl.message(
      'Book Appointment',
      name: 'book_appointment',
      desc: '',
      args: [],
    );
  }

  /// `Voice Call`
  String get voice_call {
    return Intl.message(
      'Voice Call',
      name: 'voice_call',
      desc: '',
      args: [],
    );
  }

  /// `Video Call`
  String get video_call {
    return Intl.message(
      'Video Call',
      name: 'video_call',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get january {
    return Intl.message(
      'January',
      name: 'january',
      desc: '',
      args: [],
    );
  }

  /// `February`
  String get february {
    return Intl.message(
      'February',
      name: 'february',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get march {
    return Intl.message(
      'March',
      name: 'march',
      desc: '',
      args: [],
    );
  }

  /// `April`
  String get april {
    return Intl.message(
      'April',
      name: 'april',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get may {
    return Intl.message(
      'May',
      name: 'may',
      desc: '',
      args: [],
    );
  }

  /// `June`
  String get june {
    return Intl.message(
      'June',
      name: 'june',
      desc: '',
      args: [],
    );
  }

  /// `July`
  String get july {
    return Intl.message(
      'July',
      name: 'july',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get august {
    return Intl.message(
      'August',
      name: 'august',
      desc: '',
      args: [],
    );
  }

  /// `September`
  String get september {
    return Intl.message(
      'September',
      name: 'september',
      desc: '',
      args: [],
    );
  }

  /// `October`
  String get october {
    return Intl.message(
      'October',
      name: 'october',
      desc: '',
      args: [],
    );
  }

  /// `November`
  String get november {
    return Intl.message(
      'November',
      name: 'november',
      desc: '',
      args: [],
    );
  }

  /// `December`
  String get december {
    return Intl.message(
      'December',
      name: 'december',
      desc: '',
      args: [],
    );
  }

  /// `Morning Slot`
  String get morning_slot {
    return Intl.message(
      'Morning Slot',
      name: 'morning_slot',
      desc: '',
      args: [],
    );
  }

  /// `Afternoon Slot`
  String get afternoon_slot {
    return Intl.message(
      'Afternoon Slot',
      name: 'afternoon_slot',
      desc: '',
      args: [],
    );
  }

  /// `Evening Slot`
  String get evening_slot {
    return Intl.message(
      'Evening Slot',
      name: 'evening_slot',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Appointment`
  String get confirm_appointment {
    return Intl.message(
      'Confirm Appointment',
      name: 'confirm_appointment',
      desc: '',
      args: [],
    );
  }

  /// `Sun`
  String get sunday {
    return Intl.message(
      'Sun',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `Mon`
  String get monday {
    return Intl.message(
      'Mon',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Tue`
  String get tuesday {
    return Intl.message(
      'Tue',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Wed`
  String get wednesday {
    return Intl.message(
      'Wed',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Thu`
  String get thursday {
    return Intl.message(
      'Thu',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Fri`
  String get friday {
    return Intl.message(
      'Fri',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `Sat`
  String get saturday {
    return Intl.message(
      'Sat',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Appointment`
  String get appointment {
    return Intl.message(
      'Appointment',
      name: 'appointment',
      desc: '',
      args: [],
    );
  }

  /// `Booking Successful`
  String get booking_successful {
    return Intl.message(
      'Booking Successful',
      name: 'booking_successful',
      desc: '',
      args: [],
    );
  }

  /// `Your booking was successful, you will be notified when your appointment is accepted.`
  String get booking_successful_subtitle {
    return Intl.message(
      'Your booking was successful, you will be notified when your appointment is accepted.',
      name: 'booking_successful_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Browse Appointments`
  String get browse_appointments {
    return Intl.message(
      'Browse Appointments',
      name: 'browse_appointments',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get upcoming {
    return Intl.message(
      'Upcoming',
      name: 'upcoming',
      desc: '',
      args: [],
    );
  }

  /// `Past`
  String get past {
    return Intl.message(
      'Past',
      name: 'past',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Doctor`
  String get doctor {
    return Intl.message(
      'Doctor',
      name: 'doctor',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Place`
  String get place {
    return Intl.message(
      'Place',
      name: 'place',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Reschedule`
  String get reschedule {
    return Intl.message(
      'Reschedule',
      name: 'reschedule',
      desc: '',
      args: [],
    );
  }

  /// `My Appointment`
  String get my_appointment {
    return Intl.message(
      'My Appointment',
      name: 'my_appointment',
      desc: '',
      args: [],
    );
  }

  /// `My Appointments`
  String get my_appointments {
    return Intl.message(
      'My Appointments',
      name: 'my_appointments',
      desc: '',
      args: [],
    );
  }

  /// `Type a message`
  String get type_message {
    return Intl.message(
      'Type a message',
      name: 'type_message',
      desc: '',
      args: [],
    );
  }

  /// `Connect with thousands of physicians and specialists with easy from your phone.`
  String get welcome_subtitle {
    return Intl.message(
      'Connect with thousands of physicians and specialists with easy from your phone.',
      name: 'welcome_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Buy Drugs Online`
  String get buy_drug_online {
    return Intl.message(
      'Buy Drugs Online',
      name: 'buy_drug_online',
      desc: '',
      args: [],
    );
  }

  /// `Purchase drugs based on your prescriptions from out online store and make instant payment`
  String get buy_drug_subtitle {
    return Intl.message(
      'Purchase drugs based on your prescriptions from out online store and make instant payment',
      name: 'buy_drug_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Arrange appointments between you and your specialist based on your availability`
  String get book_appointment_subtitle {
    return Intl.message(
      'Arrange appointments between you and your specialist based on your availability',
      name: 'book_appointment_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Chat with Specialists`
  String get chat_with_specialists {
    return Intl.message(
      'Chat with Specialists',
      name: 'chat_with_specialists',
      desc: '',
      args: [],
    );
  }

  /// `Chat, Call, Video call specialists before concluding on appointments.`
  String get chat_specialist_subtitle {
    return Intl.message(
      'Chat, Call, Video call specialists before concluding on appointments.',
      name: 'chat_specialist_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Switch to`
  String get switch_to {
    return Intl.message(
      'Switch to',
      name: 'switch_to',
      desc: '',
      args: [],
    );
  }

  /// `Payment Detail`
  String get payment_detail {
    return Intl.message(
      'Payment Detail',
      name: 'payment_detail',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get dark_mode {
    return Intl.message(
      'Dark Mode',
      name: 'dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Call Option`
  String get call_option {
    return Intl.message(
      'Call Option',
      name: 'call_option',
      desc: '',
      args: [],
    );
  }

  /// `Video Option`
  String get video_option {
    return Intl.message(
      'Video Option',
      name: 'video_option',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Options`
  String get privacy_options {
    return Intl.message(
      'Privacy Options',
      name: 'privacy_options',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message(
      'Version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message(
      'Available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Specialists`
  String get specialists {
    return Intl.message(
      'Specialists',
      name: 'specialists',
      desc: '',
      args: [],
    );
  }

  /// `Psychologist`
  String get psychologist {
    return Intl.message(
      'Psychologist',
      name: 'psychologist',
      desc: '',
      args: [],
    );
  }

  /// `Optician`
  String get optician {
    return Intl.message(
      'Optician',
      name: 'optician',
      desc: '',
      args: [],
    );
  }

  /// `Dentist`
  String get dentist {
    return Intl.message(
      'Dentist',
      name: 'dentist',
      desc: '',
      args: [],
    );
  }

  /// `Search Here`
  String get search_here {
    return Intl.message(
      'Search Here',
      name: 'search_here',
      desc: '',
      args: [],
    );
  }

  /// `Search Your`
  String get search_your {
    return Intl.message(
      'Search Your',
      name: 'search_your',
      desc: '',
      args: [],
    );
  }

  /// `Select Area`
  String get select_area {
    return Intl.message(
      'Select Area',
      name: 'select_area',
      desc: '',
      args: [],
    );
  }

  /// `Doctor, Specialist`
  String get doctor_specialist {
    return Intl.message(
      'Doctor, Specialist',
      name: 'doctor_specialist',
      desc: '',
      args: [],
    );
  }

  /// `Select Date`
  String get select_date {
    return Intl.message(
      'Select Date',
      name: 'select_date',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Selected Area`
  String get selected_area {
    return Intl.message(
      'Selected Area',
      name: 'selected_area',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Update Profile`
  String get update_profile {
    return Intl.message(
      'Update Profile',
      name: 'update_profile',
      desc: '',
      args: [],
    );
  }

  /// `Your Cards`
  String get your_cards {
    return Intl.message(
      'Your Cards',
      name: 'your_cards',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get credit_card {
    return Intl.message(
      'Credit Card',
      name: 'credit_card',
      desc: '',
      args: [],
    );
  }

  /// `Card Holder`
  String get card_holder {
    return Intl.message(
      'Card Holder',
      name: 'card_holder',
      desc: '',
      args: [],
    );
  }

  /// `Expires`
  String get expires {
    return Intl.message(
      'Expires',
      name: 'expires',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get transactions {
    return Intl.message(
      'Transactions',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get payments {
    return Intl.message(
      'Payments',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `Drug`
  String get drug {
    return Intl.message(
      'Drug',
      name: 'drug',
      desc: '',
      args: [],
    );
  }

  /// `Store Online`
  String get store_online {
    return Intl.message(
      'Store Online',
      name: 'store_online',
      desc: '',
      args: [],
    );
  }

  /// `Available Drugs`
  String get available_drugs {
    return Intl.message(
      'Available Drugs',
      name: 'available_drugs',
      desc: '',
      args: [],
    );
  }

  /// `Make Payment`
  String get make_payment {
    return Intl.message(
      'Make Payment',
      name: 'make_payment',
      desc: '',
      args: [],
    );
  }

  /// `Payment Methods`
  String get payment_methods {
    return Intl.message(
      'Payment Methods',
      name: 'payment_methods',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get card_number {
    return Intl.message(
      'Card Number',
      name: 'card_number',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get expiry_date {
    return Intl.message(
      'Expiry Date',
      name: 'expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Card Holder Name`
  String get cardholder_name {
    return Intl.message(
      'Card Holder Name',
      name: 'cardholder_name',
      desc: '',
      args: [],
    );
  }

  /// `Choose another payment method`
  String get another_payment {
    return Intl.message(
      'Choose another payment method',
      name: 'another_payment',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Go Home`
  String get go_home {
    return Intl.message(
      'Go Home',
      name: 'go_home',
      desc: '',
      args: [],
    );
  }

  /// `Payment Successful`
  String get payment_successful {
    return Intl.message(
      'Payment Successful',
      name: 'payment_successful',
      desc: '',
      args: [],
    );
  }

  /// `We have gotten your payment. Order processing for item paid will be started immediately.`
  String get payment_success_subtitle {
    return Intl.message(
      'We have gotten your payment. Order processing for item paid will be started immediately.',
      name: 'payment_success_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Your cart is empty. \n Please add a few items.`
  String get cart_empty {
    return Intl.message(
      'Your cart is empty. \n Please add a few items.',
      name: 'cart_empty',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es', countryCode: 'ES'),
      Locale.fromSubtags(languageCode: 'fr', countryCode: 'FR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}