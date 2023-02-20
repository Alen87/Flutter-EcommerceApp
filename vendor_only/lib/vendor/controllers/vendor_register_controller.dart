import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

class VendorController {
  // FUNCTION TO PICK STORE IMAGE
  pickStoreImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();
    XFile? _file = await _imagePicker.pickImage(source: source);

    if (_file != null) {
      return await _file.readAsBytes();
    } else {
      print('No Image Selected');
    }
  }

  // FUNCTION TO PICK STORE IMAGE ENDS HERE

  String registerVendor(
    String businessName,
    String email,
    String phoneNumber,
    String countryValue,
    String stateValue,
    String cityValue,
    String taxOptions,
    String taxNumber,
    Uint8List? image,
  ) {
    String res = 'Some Error Occured';
    try {
      if (businessName.isNotEmpty &&
          email.isNotEmpty &&
          phoneNumber.isNotEmpty &&
          countryValue.isNotEmpty &&
          stateValue.isNotEmpty &&
          cityValue.isNotEmpty &&
          taxOptions.isNotEmpty &&
          taxNumber.isNotEmpty &&
          image != null) {
        // SAVE DATA TO CLOUD FIRESTORE
      } else {
        res = 'Fields Should Not Be Empty.';
      }
      ;
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
