import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class MYformdf extends StatefulWidget {
  const MYformdf({super.key});

  @override
  State<MYformdf> createState() => _MYformdf();
}

class _MYformdf extends State<MYformdf> {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('assets/form.pdf'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfView(
        controller: pdfController,
      ),
      appBar: AppBar(
        title: const Text(
          'NCBA&E PDF FORM',
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }

// @override
//   Widget build(BuildContext context) {
//     return PdfView(
//       controller: pdfController,
//     );
//   }
}
