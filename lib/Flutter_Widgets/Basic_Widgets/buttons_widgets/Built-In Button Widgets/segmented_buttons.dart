import 'package:flutter/material.dart';

class SegmentedButtons extends StatefulWidget {
  const SegmentedButtons({super.key});

  @override
  State<SegmentedButtons> createState() => _SegmentedButtonsState();
}

enum gender { Boy, Girl }

class _SegmentedButtonsState extends State<SegmentedButtons> {
  gender SelectedGender = gender.Boy;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Segmented Buttons",
          ),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Center(
          child: SegmentedButton(
            segments: const <ButtonSegment<gender>>[
              ButtonSegment<gender>(
                value: gender.Boy,
                label: Text("Black"),
                icon: Icon(Icons.boy),
              ),
              ButtonSegment<gender>(
                  value: gender.Girl,
                  label: Text("Girls"),
                  icon: Icon(Icons.girl)),
            ],
            selected: <gender>{SelectedGender},
            onSelectionChanged: (Set<gender> value) {
              setState(() {
                SelectedGender = value.first;
              });
            },
          ),
        ));
  }
}
