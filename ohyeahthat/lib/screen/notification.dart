import 'package:ohyeahthat/widget/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> createPlantFoodNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title: '${Emojis.emotion_red_heart} Buy Plant Food',
      body: 'Florist has 2 in stock',
      notificationLayout: NotificationLayout.BigText,
    ),
  );
}
