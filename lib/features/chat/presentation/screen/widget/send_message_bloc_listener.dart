import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/chat/domain/entity/messages_entity.dart';
import 'package:shajara_tech/features/chat/presentation/manager/cubit/get_messages_cubit/get_messages_cubit.dart';
import 'package:shajara_tech/features/chat/presentation/manager/cubit/send_message_cubit/send_message_cubit.dart';
import 'package:shajara_tech/features/chat/presentation/screen/widget/send_message_item.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/get_profile_info_cubit/get_profile_info_cubit.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

class SendMessageBlocListener extends StatefulWidget {
  const SendMessageBlocListener({super.key, required this.tribesDetailsEntity});
  final TribesDetailsEntity tribesDetailsEntity;
  @override
  State<SendMessageBlocListener> createState() =>
      _SendMessageBlocListenerState();
}

class _SendMessageBlocListenerState extends State<SendMessageBlocListener> {
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SendMessageCubit, SendMessageState>(
      listener: (context, state) {
        if (state is SendMessageSuccess) {
          final messageText = _messageController.text.trim();

          final myId =
              (context.read<GetProfileInfoCubit>().state
                      as GetProfileInfoSuccess)
                  .profileInfoEntity
                  .userId;

          final tempMessage = MessagesEntity(
            messageTime: DateTime.now().toString(),
            messageContent: messageText,
            messageSenderId: myId,
          );

          context.read<GetMessagesCubit>().addLocalMessage(tempMessage);
          _messageController.clear();
        } else if (state is SendMessageFailure) {
          customShowSnackBar(context, title: state.errorMessage);
        }
      },
      child: SendMessageItem(
        messageController: _messageController,
        tribesDetailsEntity: widget.tribesDetailsEntity,
      ),
    );
  }
}