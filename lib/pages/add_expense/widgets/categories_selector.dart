import 'package:flutter/material.dart';
import 'package:Khata/consts.dart';
import 'package:Khata/models/category_model.dart';

class CategoriesSelector extends StatelessWidget {
  const CategoriesSelector({
    Key? key,
    this.value = "food",
    required this.onChanged,
  }) : super(key: key);

  final String value;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: categories
            .map(
              (e) => InkWell(
                onTap: () {
                  onChanged(e.code);
                },
                child: Container(
                  width: 120,
                  height: 80,
                  margin: const EdgeInsets.all(MConst.padding / 2),
                  padding: const EdgeInsets.all(MConst.padding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: e.code == value
                        ? Colors.pinkAccent
                        : Colors.pinkAccent.withOpacity(.2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        e.icon,
                        color:
                            e.code == value ? Colors.white : Colors.pinkAccent,
                      ),
                      Text(
                        e.text,
                        style: TextStyle(
                          color: e.code == value
                              ? Colors.white
                              : Colors.pinkAccent,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
