import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageUtil {
  ImageUtil._();

  static Future<List<File>?> customPickImage(
    BuildContext context, {
    ImageSource source = ImageSource.gallery,
    CameraDevice? cameraDevice,
    bool pickMultiple = false,
  }) async {
    bool isAllowed = Platform.isIOS;

    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      final requiredPermission = androidInfo.version.sdkInt <= 32
          ? Permission.storage
          : Permission.photos;

      isAllowed = await requiredPermission.status.isGranted;
    }

    if (isAllowed) {
      try {
        final picker = ImagePicker();
        if (pickMultiple && source == ImageSource.gallery) {
          final pickedFile = await picker.pickMultiImage();
          return pickedFile.map((e)=>File(e.path)).toList();
        } else {
          final pickedFile = await picker.pickImage(
            source: source,
            preferredCameraDevice: cameraDevice ?? CameraDevice.front,
          );
          if (pickedFile != null) {
            return [File(pickedFile.path)];
          }
        }
        return null;
      } catch (e) {
        return null;
      }
    } else {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      final requiredPermission = androidInfo.version.sdkInt <= 32
          ? Permission.storage
          : Permission.photos;
      final permissionStatus = await requiredPermission.request();
      if (permissionStatus.isGranted) {
        return customPickImage(context, source: source);
      } else if (permissionStatus.isPermanentlyDenied) {
        await openAppSettings();
      }
    }

    return null;
  }
}
