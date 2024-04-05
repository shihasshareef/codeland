import 'package:codeland/files_model.dart';
import 'package:flutter/material.dart';

import '../../common/assets.dart';
import '../../common/colors.dart';
import '../../common/theme.dart';
import '../../common/utils.dart';
import 'package:codeland/common/secondary_button.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  FilesModel? file;
  bool isZoomed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: isZoomed
            ? fullImage(file)
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Upload a Image',
                      style: appTextTheme().labelMedium,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    file != null
                        ? Image(
                            image: FileImage(file!.file),
                            fit: BoxFit.cover,
                          )
                        : const Image(
                            image: AssetImage(
                              AppAssets.image,
                            ),
                            fit: BoxFit.cover,
                          ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SecondaryButton(
                            height: 35,
                            width: 119,
                            color: AppColors.orange,
                            onPressed: () async {
                              file = await Utils.pickImage('CAMERA');
                              setState(() {});
                            },
                            text: 'Upload',
                            borderRadius: 12),
                        SecondaryButton(
                            height: 35,
                            width: 112,
                            color: AppColors.grey,
                            textColor: AppColors.black,
                            onPressed: () async {
                              if(file!=null)
                              setState(() {
                                isZoomed = !isZoomed;
                              });
                            },
                            text: 'View',
                            borderRadius: 12),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Widget fullImage(FilesModel? image) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isZoomed = !isZoomed;
            });
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.file(
              image!.file,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          right: 24,
          top: 40,
          child: InkWell(
            onTap: () {
              setState(() {
                isZoomed = !isZoomed;
              });
            },
            child: const Icon(
              Icons.close,
              color: AppColors.white,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
