// ignore_for_file: unused_import

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/buttons_widgets/Built-In%20Button%20Widgets/elevated_button_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/buttons_widgets/Built-In%20Button%20Widgets/floating_action_button_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/buttons_widgets/Built-In%20Button%20Widgets/icon_button.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/buttons_widgets/Built-In%20Button%20Widgets/outlined_button_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/buttons_widgets/Built-In%20Button%20Widgets/text_button_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/buttons_widgets/Custom%20Buttons/custom_button_using_container.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/column_widgett.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/icon_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/image_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/padding_align_center_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/row_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/text_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Input_Widgets/checkBox_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Input_Widgets/check_box_list_tile.dart';
import 'package:flutter_basics/Flutter_Widgets/Input_Widgets/radio_list_tiles.dart';
import 'package:flutter_basics/Flutter_Widgets/Input_Widgets/radio_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Input_Widgets/switch_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Input_Widgets/textfield_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Input_Widgets/toggel_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Layout_Widgets/expanded_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Layout_Widgets/flexible_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Layout_Widgets/grid_view_builder_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Layout_Widgets/grid_view_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Layout_Widgets/indexed_stack_widgte.dart';
import 'package:flutter_basics/Flutter_Widgets/Layout_Widgets/list_view_builder_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Layout_Widgets/list_view_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Layout_Widgets/stack_widget.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToggleButtonWidget(),
    );
  }
}
