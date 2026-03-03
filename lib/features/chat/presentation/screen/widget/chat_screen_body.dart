import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/features/chat/presentation/screen/widget/chat_messages_bloc_builder.dart';
import 'package:shajara_tech/features/chat/presentation/screen/widget/send_message_bloc_listener.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/get_profile_info_cubit/get_profile_info_cubit.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({super.key, required this.tribesDetailsEntity});
  final TribesDetailsEntity tribesDetailsEntity;
  @override
  Widget build(BuildContext context) {
    final myId =
        context.read<GetProfileInfoCubit>().state is GetProfileInfoSuccess
        ? (context.read<GetProfileInfoCubit>().state as GetProfileInfoSuccess)
              .profileInfoEntity
              .userId
        : null;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(height: 18.h),
          CustomAppBar(
            title: 'محادثة ${tribesDetailsEntity.tribeName}',
            onBackTap: () => GoRouter.of(context).pop(),
          ),
          SizedBox(height: 20.h),
          ChatMessagesBlocBuilder(myId: myId),
          SizedBox(height: 10.h),
          SendMessageBlocListener(tribesDetailsEntity: tribesDetailsEntity),
          SizedBox(height: 28.h),
        ],
      ),
    );
  }
}
