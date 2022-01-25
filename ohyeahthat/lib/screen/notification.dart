import 'package:ohyeahthat/widget/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> createPlantFoodNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title: '${Emojis.emotion_red_heart} 새로운 공지가 올라왔습니다!',
      body: '내용이 들어가야하는 부분',
      notificationLayout: NotificationLayout.BigText,
    ),
  );
}
