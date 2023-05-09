import 'package:chat_screen/core/appColors.dart';
import 'package:flutter/material.dart';

class SearchAndSettingsWidget extends StatelessWidget {
  const SearchAndSettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SizedBox(
        height: 45,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: const TextStyle(fontSize: 14),
                  contentPadding: const EdgeInsets.only(top: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 3.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 25,
                  ),
                  // prefixIconConstraints:
                  //     BoxConstraints.tight(const Size(45, 25)),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Stack(alignment: Alignment.center, children: [
                Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.roseColors,
                          spreadRadius: 1,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                    )),
                const Icon(
                  Icons.format_align_left_sharp,
                  color: AppColors.roseColors,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
