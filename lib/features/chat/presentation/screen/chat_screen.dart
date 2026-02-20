import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/chat/presentation/manager/cubit/get_messages_cubit/get_messages_cubit.dart';
import 'package:shajara_tech/features/chat/presentation/manager/cubit/send_message_cubit/send_message_cubit.dart';
import 'package:shajara_tech/features/chat/presentation/screen/widget/chat_screen_body.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/get_profile_info_cubit/get_profile_info_cubit.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.tribesDetailsEntity});
  final TribesDetailsEntity tribesDetailsEntity;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<GetProfileInfoCubit>()..getProfileInfo(),
        ),
        BlocProvider(
          create: (context) =>
              sl<GetMessagesCubit>()
                ..getMessages(treeId: tribesDetailsEntity.id),
        ),
        BlocProvider(create: (context) => sl<SendMessageCubit>()),
      ],
      child: Scaffold(
        backgroundColor: AppColors.kbackGroundColor,
        body: SafeArea(
          child: ChatScreenBody(tribesDetailsEntity: tribesDetailsEntity),
        ),
      ),
    );
  }
}
