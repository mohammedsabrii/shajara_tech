import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
import 'package:shajara_tech/features/chat/presentation/manager/cubit/get_messages_cubit/get_messages_cubit.dart';
import 'package:shajara_tech/features/chat/presentation/screen/widget/chat_item.dart';

class ChatMessagesBlocBuilder extends StatelessWidget {
  const ChatMessagesBlocBuilder({super.key, required this.myId});

  final int? myId;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GetMessagesCubit, GetMessagesState>(
        builder: (context, state) {
          if (state is GetMessagesSuccess) {
            return ListView.separated(
              reverse: true,
              itemCount: state.messagesEntity.length,
              separatorBuilder: (context, index) => SizedBox(height: 15.h),
              itemBuilder: (context, index) {
                final message = state.messagesEntity[index];

                if (message.messageSenderId == myId) {
                  return Align(
                    alignment: Alignment.centerRight,
                    child: ChatUserItem(message: message.messageContent),
                  );
                } else {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: ChatFriendItem(message: message.messageContent),
                  );
                }
              },
            );
          } else if (state is GetMessagesFailure) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          }
          return const CustomCircularProgressIndicatorWidget();
        },
      ),
    );
  }
}
