import 'package:flutter/material.dart';

class SaveEdit extends StatelessWidget {
  const SaveEdit({
    super.key,
    required this.onSave,
  });
  final Function onSave;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    shape:
                        WidgetStateProperty.all(const RoundedRectangleBorder()),
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                    iconColor: WidgetStateProperty.all(Colors.white)),
                onPressed: () {
                  onSave();
                },
                child: const Icon(Icons.check))),
      ],
    );
  }
}
