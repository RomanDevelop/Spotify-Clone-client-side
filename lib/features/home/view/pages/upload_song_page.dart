import 'package:client/core/theme/app_pallete.dart';
import 'package:client/core/widgets/custom_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UploadSongPage extends ConsumerStatefulWidget {
  const UploadSongPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UploadSongPageState();
}

class _UploadSongPageState extends ConsumerState<UploadSongPage> {
  final songNameController = TextEditingController();
  final artistController = TextEditingController();
  Color selectedColor = Pallete.cardColor;
  // File? selectedImage;
  // File? selectedAudio;
  final formKey = GlobalKey<FormState>(); // 5.10.30
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Song'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DottedBorder(
              color: Pallete.borderColor,
              radius: const Radius.circular(10),
              borderType: BorderType.RRect,
              dashPattern: const [10, 4],
              strokeCap: StrokeCap.round,
              child: const SizedBox(
                height: 150,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.folder_open,
                      size: 40,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Select the thumbnail for your song',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),

            CustomField(
              hintText: 'Pick Song',
              controller: null,
              readOnly: true,
              onTap: () {},
            ),
            const SizedBox(height: 20),
            CustomField(
              hintText: 'Artist',
              controller: artistController,
            ),
            const SizedBox(height: 20),
            CustomField(
              hintText: 'Song Name',
              controller: songNameController,
            ),
            const SizedBox(height: 20),
            // ColorPicker(
            //   pickersEnabled: const {
            //     ColorPickerType.wheel: true,
            //   },
            //   color: selectedColor,
            //   onColorChanged: (Color color) {
            //     setState(() {
            //       selectedColor = color;
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
