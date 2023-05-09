import 'package:chat_screen/core/fonts.dart';
import 'package:chat_screen/data/messagesList.dart';
import 'package:chat_screen/data/usersList.dart';
import 'package:flutter/material.dart';

import 'package:chat_screen/core/appColors.dart';
import 'package:intl/intl.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var seenMinutesAgo = 0;

    return Expanded(
      child: ListView.builder(
          itemCount: UsersList().chatUsers.length,
          itemBuilder: (BuildContext context, int index) {
            final time = MessagesList()
                .messages
                .firstWhere((element) => (element.idFrom == index))
                .timestamp;
            Duration duration = DateTime.now().difference(
                DateTime.fromMillisecondsSinceEpoch(int.parse(time)));
            seenMinutesAgo = duration.inMinutes;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 0),
                    leading: Container(
                      constraints:
                          const BoxConstraints(minWidth: 40, maxWidth: 60),
                      height: double.infinity,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 60,
                          child: Stack(children: [
                            (MessagesList()
                                        .messages
                                        .firstWhere((element) =>
                                            (element.idFrom == index))
                                        .idFrom ==
                                    0)
                                ? Positioned(
                                    left: 12,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: Image.asset(UsersList()
                                                    .chatUsers[1]
                                                    .avatar)
                                                .image,
                                            alignment: Alignment.topCenter,
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  )
                                : Container(),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.white, spreadRadius: 2),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: Image.asset(
                                            UsersList().chatUsers[index].avatar)
                                        .image,
                                    alignment: Alignment.topCenter,
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    title: Text(
                      UsersList().chatUsers[index].name,
                      style: SafeGoogleFont(
                        'Jost',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            MessagesList()
                                .messages
                                .firstWhere(
                                    (element) => (element.idFrom == index))
                                .content,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: SafeGoogleFont('Jost',
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                        const SizedBox(height: 5),
                        (UsersList().chatUsers[index].profession != null)
                            ? Container(
                                height: 22,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: (UsersList()
                                                  .chatUsers[index]
                                                  .profession ==
                                              'Help Req.')
                                          ? AppColors.roleColorTwo
                                          : (UsersList()
                                                      .chatUsers[index]
                                                      .profession ==
                                                  'Challenge')
                                              ? AppColors.roleColorOne
                                              : AppColors.roleColorThree,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: Text(
                                      UsersList().chatUsers[index].profession ??
                                          '',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: SafeGoogleFont(
                                        'Jost',
                                        fontWeight: FontWeight.w400,
                                        color: (UsersList()
                                                    .chatUsers[index]
                                                    .profession ==
                                                'Help Req.')
                                            ? Colors.black
                                            : Colors.white,
                                      )),
                                ),
                              )
                            : Container()
                      ],
                    ),
                    trailing: SizedBox(
                      height: double.infinity,
                      // constraints: BoxConstraints(),
                      child: Text(
                          (seenMinutesAgo < 1440)
                              ? DateFormat('HH:mm').format(
                                  DateTime.fromMillisecondsSinceEpoch(int.parse(
                                      MessagesList()
                                          .messages
                                          .firstWhere((element) =>
                                              (element.idFrom == index))
                                          .timestamp)))
                              : (seenMinutesAgo < 2880)
                                  ? 'Yesterday'
                                  : '${(seenMinutesAgo / 1440).roundToDouble().toInt()} day ago',
                          style: SafeGoogleFont('Jost',
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryColor)),
                    ),
                  ),
                  const Divider(
                    thickness: 1.5,
                  )
                ],
              ),
            );
          }),
    );
  }
}
