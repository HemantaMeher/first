import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qr_code_tools/qr_code_tools.dart';

class QRCodeScanner extends StatefulWidget {
  @override
  _QRCodeScannerState createState() => _QRCodeScannerState();
}

class _QRCodeScannerState extends State<QRCodeScanner> {
  Future<void> _scanQRFromImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // File selected, process it for QR code
      // Call a function to decode QR code from image
      decodeQRCode(pickedFile.path);
    } else {
      // User canceled the picker
    }
  }

  Future<void> decodeQRCode(String imagePath) async {
    final decoded = await QrCodeToolsPlugin.decodeFrom(imagePath);
    if (decoded != null) {
      // QR code decoded successfully
      print(decoded);
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('QR Code Decoded'),
          content: Text(decoded),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        ),
      );
    } else {
      // Failed to decode QR code
      print('Failed to decode QR code from image');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Failed to Decode QR Code'),
          content: Text('No QR code found in the selected image.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _scanQRFromImage,
          child: Text('Pick Image from Gallery'),
        ),
      ),
    );
  }
}
