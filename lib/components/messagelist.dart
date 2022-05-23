enum MessageListType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class MessageList {
  final String text;
  final  MessageListType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  MessageList({
    this.text = '',
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });
}

List messagelist = [
  MessageList(
    text: "Hi Sajol,",
    messageType: MessageListType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  MessageList(
    text: "Hello, How are you?",
    messageType: MessageListType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  MessageList(
    text: "",
    messageType: MessageListType.audio,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  MessageList(
    text: "",
    messageType: MessageListType.video,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  MessageList(
    text: "Error happend",
    messageType: MessageListType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: true,
  ),
  MessageList(
    text: "This looks great man!!",
    messageType: MessageListType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  MessageList(
    text: "Glad you like it",
    messageType: MessageListType.text,
    messageStatus: MessageStatus.not_view,
    isSender: true,
  ),
];
