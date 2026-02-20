import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/features/chat/presentation/manager/cubit/send_message_cubit/send_message_cubit.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

class SendMessageButton extends StatefulWidget {
  const SendMessageButton({
    super.key,
    required this.messageController,
    required this.tribesDetailsEntity,
  });
  final TextEditingController messageController;
  final TribesDetailsEntity tribesDetailsEntity;
  @override
  State<SendMessageButton> createState() => _SendMessageButtonState();
}

class _SendMessageButtonState extends State<SendMessageButton> {
  void _sendMessage(BuildContext context) {
    final messageText = widget.messageController.text.trim();

    if (messageText.isEmpty) return;

    context.read<SendMessageCubit>().sendMessage(
      treeId: widget.tribesDetailsEntity.id,
      messageContent: messageText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _sendMessage(context),
      child: SvgPicture.asset(AppIcons.kSendIcon),
    );
  }
}
