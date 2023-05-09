import 'package:chat_screen/appColors.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    leading: Container(
                      constraints:
                          const BoxConstraints(minWidth: 40, maxWidth: 40),
                      height: double.infinity,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: Image.asset('assets/images/b_uil.jpg')
                                    .image,
                                alignment: Alignment.topCenter,
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    title: const Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Last message',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.black),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 22,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.roleColorTwo,
                                spreadRadius: 1,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 3),
                            child: Text(
                              'Help Rsdaaseq.',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                    trailing: const SizedBox(
                      height: double.infinity,
                      // constraints: BoxConstraints(),
                      child: Text(
                        '15:10',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryColor),
                      ),
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
