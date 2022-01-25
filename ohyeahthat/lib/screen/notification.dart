import 'package:ohyeahthat/widget/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> createPlantFoodNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title: '\u{1F514} 아맞다',
      body: '[#키워드] 새로운 공지가 올라왔습니다!',
      notificationLayout: NotificationLayout.BigText,
    ),
  );
}
