import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:shajara_tech/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:shajara_tech/features/auth/data/repo/auth_interceptor.dart';
import 'package:shajara_tech/features/auth/data/repo/auth_repo_impl.dart';
import 'package:shajara_tech/features/auth/domain/repo/auth_repo.dart';
import 'package:shajara_tech/features/auth/domain/use_cases/log_out_use_case.dart';
import 'package:shajara_tech/features/auth/domain/use_cases/login_use_case.dart';
import 'package:shajara_tech/features/auth/domain/use_cases/sign_up_use_case.dart';
import 'package:shajara_tech/features/auth/presentation/manager/Cubits/login_cubit/login_cubit.dart';
import 'package:shajara_tech/features/auth/presentation/manager/Cubits/logout_cubit/logout_cubit.dart';
import 'package:shajara_tech/features/auth/presentation/manager/Cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:shajara_tech/features/chat/data/data_source/chat_remote_data_source.dart';
import 'package:shajara_tech/features/chat/data/repo/chat_repo_impl.dart';
import 'package:shajara_tech/features/chat/domain/repo/chat_repo.dart';
import 'package:shajara_tech/features/chat/domain/use_cases/get_messages_use_case.dart';
import 'package:shajara_tech/features/chat/domain/use_cases/send_message_use_case.dart';
import 'package:shajara_tech/features/chat/presentation/manager/cubit/get_messages_cubit/get_messages_cubit.dart';
import 'package:shajara_tech/features/chat/presentation/manager/cubit/send_message_cubit/send_message_cubit.dart';
import 'package:shajara_tech/features/contact_us/data/data_source/contact_us_remote_data_source.dart';
import 'package:shajara_tech/features/contact_us/data/repo/contact_us_repo_impl.dart';
import 'package:shajara_tech/features/contact_us/domain/repo/contact_us_repo.dart';
import 'package:shajara_tech/features/contact_us/domain/use_case/contact_us_use_case.dart';
import 'package:shajara_tech/features/contact_us/presentation/manager/cubit/contact_us_cubit/contact_us_cubit.dart';
import 'package:shajara_tech/features/edit_password/data/data_source/edit_password_remote_data_source.dart';
import 'package:shajara_tech/features/edit_password/data/repo/edit_password_repo_impl.dart';
import 'package:shajara_tech/features/edit_password/domain/repo/edit_password_repo.dart';
import 'package:shajara_tech/features/edit_password/domain/use_cases/edit_password_use_case.dart';
import 'package:shajara_tech/features/edit_password/presentation/manager/cubit/edit_password_cubit/edit_password_cubit.dart';
import 'package:shajara_tech/features/edit_profile/data/data_source/edit_profile_remote_data_source.dart';
import 'package:shajara_tech/features/edit_profile/data/repo/edit_profile_repo_impl.dart';
import 'package:shajara_tech/features/edit_profile/domain/repo/edit_profile_repo.dart';
import 'package:shajara_tech/features/edit_profile/domain/use_cases/edit_profile_info_use_case.dart';
import 'package:shajara_tech/features/edit_profile/domain/use_cases/get_profile_info_use_case.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/edit_profile_info_cubit/edit_profile_info_cubit.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/get_profile_info_cubit/get_profile_info_cubit.dart';
import 'package:shajara_tech/features/home/data/data_source/occasion_remote_data_source.dart';
import 'package:shajara_tech/features/home/data/repo/occasion_repo_impl.dart';
import 'package:shajara_tech/features/home/domain/repo/occasion_repo.dart';
import 'package:shajara_tech/features/home/domain/use_case/get_occasions_use_case.dart';
import 'package:shajara_tech/features/home/presentation/manager/cubit/get_occasions_cubit/get_occasions_cubit.dart';
import 'package:shajara_tech/features/join_us/data/data_source/join_us_remote_data_source.dart';
import 'package:shajara_tech/features/join_us/data/repo/join_us_repo_impl.dart';
import 'package:shajara_tech/features/join_us/domain/repo/join_us_repo.dart';
import 'package:shajara_tech/features/join_us/domain/use_cases/join_us_use_case.dart';
import 'package:shajara_tech/features/join_us/presentation/manager/cubit/join_us_cubit/join_us_cubit.dart';
import 'package:shajara_tech/features/news/data/data_source/news_remote_data_source.dart';
import 'package:shajara_tech/features/news/data/repo/news_repo_impl.dart';
import 'package:shajara_tech/features/news/domain/repo/news_repo.dart';
import 'package:shajara_tech/features/news/domain/use_cases/get_news_use_case.dart';
import 'package:shajara_tech/features/news/presentation/manager/cubit/cubit/get_news_cubit.dart';
import 'package:shajara_tech/features/tribes/data/data_source/tribes_remote_data_source.dart';
import 'package:shajara_tech/features/tribes/data/repo/tribes_repo_impl.dart';
import 'package:shajara_tech/features/tribes/domain/repo/tribes_repo.dart';
import 'package:shajara_tech/features/tribes/domain/use_cases/get_tribe_details_use_case.dart';
import 'package:shajara_tech/features/tribes/domain/use_cases/get_tribes_use_case.dart';
import 'package:shajara_tech/features/tribe_details/presentation/manager/cubit/get_tribe_details_cubit/get_tribe_details_cubit.dart';
import 'package:shajara_tech/features/tribes/presentation/manager/cubits/get_tribes_cubit/get_tribes_cubit.dart';
import 'package:shajara_tech/features/forgot_password/data/data_source/forgot_password_remote_data_source.dart';
import 'package:shajara_tech/features/forgot_password/data/repo/forgot_password_repo_impl.dart';
import 'package:shajara_tech/features/forgot_password/domain/repo/forgot_password_repo.dart';
import 'package:shajara_tech/features/forgot_password/domain/use_cases/reset_password_case.dart';
import 'package:shajara_tech/features/forgot_password/domain/use_cases/send_otp_case.dart';
import 'package:shajara_tech/features/forgot_password/domain/use_cases/verify_otp_code.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/check_reset_code_cubit/check_reset_code_cubit.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/reset_password_cubit/reset_password_cubit.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/send_otp_code_cubit/send_otp_code_cubit.dart';
import 'package:shajara_tech/features/notification/data/data_source/notification_data_source.dart';
import 'package:shajara_tech/features/notification/data/repo/notifications_repo_impl.dart';
import 'package:shajara_tech/features/notification/domain/repo/notification_repo.dart';
import 'package:shajara_tech/features/notification/domain/use_cases/mark_all_notification_as_read_use_case.dart';
import 'package:shajara_tech/features/notification/domain/use_cases/notification_use_case.dart';
import 'package:shajara_tech/features/notification/presentation/manager/cubit/mark_all_notification_as_read_cubit/mark_all_notification_as_read_cubit.dart';
import 'package:shajara_tech/features/notification/presentation/manager/cubit/notifications_cubit/get_notifications_cubit.dart';

final sl = GetIt.instance;
Future<void> initServiceLocator() async {
  _initCore();
  _initAuth();
  _initContactUs();
  _initEditProfile();
  _initEditPassword();
  _initForgotPassword();
  _initNotification();
  _initChat();
  _initTribes();
  _initOccasions();
  _initNews();
  _initJoinUs();
}

void _initCore() {
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(),
  );

  sl.registerLazySingleton<Dio>(() {
    final dio = Dio();

    dio.interceptors.add(
      AuthInterceptor(authLocalDataSource: sl<AuthLocalDataSource>()),
    );

    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    return dio;
  });

  sl.registerLazySingleton<ApiService>(() => ApiService(sl<Dio>()));
}

void _initAuth() {
  //dataSource//

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(
      localDataSource: sl<AuthLocalDataSource>(),
      remoteDataSource: sl<AuthRemoteDataSource>(),
    ),
  );
  //use cases//
  sl.registerLazySingleton(() => LoginUseCase(authRepo: sl<AuthRepo>()));
  sl.registerLazySingleton(() => SignUpUseCase(authRepo: sl<AuthRepo>()));
  sl.registerLazySingleton(() => LogOutUseCase(authRepo: sl<AuthRepo>()));

  //cubit//
  sl.registerFactory(() => LoginCubit(sl<LoginUseCase>()));
  sl.registerFactory(() => SignUpCubit(sl<SignUpUseCase>()));
  sl.registerFactory(() => LogoutCubit(sl<LogOutUseCase>()));
}

void _initContactUs() {
  //dataSource//
  sl.registerLazySingleton<ContactUsRemoteDataSource>(
    () => ContactUsRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<ContactUsRepo>(
    () => ContactUsRepoImpl(
      contactUsRemoteDataSource: sl<ContactUsRemoteDataSource>(),
    ),
  );
  //use cases//
  sl.registerLazySingleton(
    () => ContactUsUseCase(contactUsRepo: sl<ContactUsRepo>()),
  );
  //cubit//
  sl.registerFactory(() => ContactUsCubit(sl<ContactUsUseCase>()));
}

void _initEditProfile() {
  //dataSource//
  sl.registerLazySingleton<EditProfileRemoteDataSource>(
    () => EditProfileRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<EditProfileRepo>(
    () => EditProfileRepoImpl(
      editProfileRemoteDataSource: sl<EditProfileRemoteDataSource>(),
    ),
  );
  //use cases//
  sl.registerLazySingleton(
    () => EditProfileInfoUseCase(editProfileRepo: sl<EditProfileRepo>()),
  );
  sl.registerLazySingleton(
    () => GetProfileInfoUseCase(editProfileRepo: sl<EditProfileRepo>()),
  );
  //cubit//
  sl.registerFactory(() => EditProfileInfoCubit(sl<EditProfileInfoUseCase>()));
  sl.registerFactory(() => GetProfileInfoCubit(sl<GetProfileInfoUseCase>()));
}

void _initEditPassword() {
  //dataSource//
  sl.registerLazySingleton<EditPasswordRemoteDataSource>(
    () => EditPasswordRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<EditPasswordRepo>(
    () => EditPasswordRepoImpl(
      editPasswordRemoteDataSource: sl<EditPasswordRemoteDataSource>(),
    ),
  );
  //use cases//
  sl.registerLazySingleton(
    () => EditPasswordUseCase(editPasswordRepo: sl<EditPasswordRepo>()),
  );
  //cubit//
  sl.registerFactory(() => EditPasswordCubit(sl<EditPasswordUseCase>()));
}

void _initForgotPassword() {
  //dataSource//
  sl.registerLazySingleton<ForgotPasswordRemoteDataSource>(
    () => ForgotPasswordRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<ForgotPasswordRepo>(
    () => ForgotPasswordRepoImpl(
      remoteDataSource: sl<ForgotPasswordRemoteDataSource>(),
    ),
  );
  //use cases//
  sl.registerLazySingleton(
    () => ResetPasswordCase(otpRepo: sl<ForgotPasswordRepo>()),
  );
  sl.registerLazySingleton(
    () => SendOtpCase(otpRepo: sl<ForgotPasswordRepo>()),
  );
  sl.registerLazySingleton(
    () => VerifyOtpCode(otpRepo: sl<ForgotPasswordRepo>()),
  );
  //cubit//
  sl.registerFactory(() => ResetPasswordCubit(sl<ResetPasswordCase>()));
  sl.registerFactory(() => SendOtpCodeCubit(sl<SendOtpCase>()));
  sl.registerFactory(() => CheckResetCodeCubit(sl<VerifyOtpCode>()));
}

void _initNotification() {
  //dataSource//
  sl.registerLazySingleton<NotificationDataSource>(
    () => NotificationDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<NotificationRepo>(
    () => NotificationsRepoImpl(
      notificationDataSource: sl<NotificationDataSource>(),
    ),
  );
  //use cases//
  sl.registerLazySingleton(
    () => MarkAllNotificationAsReadUseCase(
      notificationRepo: sl<NotificationRepo>(),
    ),
  );
  sl.registerLazySingleton(
    () => NotificationUseCase(notificationRepo: sl<NotificationRepo>()),
  );

  //cubit//
  sl.registerFactory(
    () =>
        MarkAllNotificationAsReadCubit(sl<MarkAllNotificationAsReadUseCase>()),
  );
  sl.registerFactory(() => GetNotificationsCubit(sl<NotificationUseCase>()));
}

void _initChat() {
  //dataSource//
  sl.registerLazySingleton<ChatRemoteDataSource>(
    () => ChatRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<ChatRepo>(
    () => ChatRepoImpl(chatRemoteDataSource: sl<ChatRemoteDataSource>()),
  );
  //use cases//
  sl.registerLazySingleton(
    () => SendMessageUseCase(messagesRepo: sl<ChatRepo>()),
  );
  sl.registerLazySingleton(
    () => GetMessagesUseCase(messagesRepo: sl<ChatRepo>()),
  );

  //cubit//
  sl.registerFactory(() => GetMessagesCubit(sl<GetMessagesUseCase>()));
  sl.registerFactory(() => SendMessageCubit(sl<SendMessageUseCase>()));
}

void _initTribes() {
  //dataSource//
  sl.registerLazySingleton<TribesRemoteDataSource>(
    () => TribesRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<TribesRepo>(
    () => TribesRepoImpl(tribesRemoteDataSource: sl<TribesRemoteDataSource>()),
  );
  //use cases//
  sl.registerLazySingleton(
    () => GetTribeDetailsUseCase(tribesRepo: sl<TribesRepo>()),
  );
  sl.registerLazySingleton(
    () => GetTribesUseCase(tribesRepo: sl<TribesRepo>()),
  );

  //cubit//
  sl.registerFactory(() => GetTribeDetailsCubit(sl<GetTribeDetailsUseCase>()));
  sl.registerFactory(() => GetTribesCubit(sl<GetTribesUseCase>()));
}

void _initOccasions() {
  //dataSource//
  sl.registerLazySingleton<OccasionRemoteDataSource>(
    () => OccasionRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<OccasionRepo>(
    () => OccasionRepoImpl(
      occasionRemoteDataSource: sl<OccasionRemoteDataSource>(),
    ),
  );
  //use cases//
  sl.registerLazySingleton(
    () => GetOccasionsUseCase(occasionRepo: sl<OccasionRepo>()),
  );

  //cubit//
  sl.registerFactory(() => GetOccasionsCubit(sl<GetOccasionsUseCase>()));
}

void _initNews() {
  //dataSource//
  sl.registerLazySingleton<NewsRemoteDataSource>(
    () => NewsRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<NewsRepo>(
    () => NewsRepoImpl(newsRemoteDataSource: sl<NewsRemoteDataSource>()),
  );
  //use cases//
  sl.registerLazySingleton(() => GetNewsUseCase(newsRepo: sl<NewsRepo>()));

  //cubit//
  sl.registerFactory(() => GetNewsCubit(sl<GetNewsUseCase>()));
}

void _initJoinUs() {
  //dataSource//
  sl.registerLazySingleton<JoinUsRemoteDataSource>(
    () => JoinUsRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  //repo//
  sl.registerLazySingleton<JoinUsRepo>(
    () => JoinUsRepoImpl(joinUsRemoteDataSource: sl<JoinUsRemoteDataSource>()),
  );
  //use cases//
  sl.registerLazySingleton(() => JoinUsUseCase(joinUsRepo: sl<JoinUsRepo>()));

  //cubit//
  sl.registerFactory(() => JoinUsCubit(sl<JoinUsUseCase>()));
}
