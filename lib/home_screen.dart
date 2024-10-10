import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'resume_pdf.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resume'),
      ),
      body: PdfPreview(
        build: (format) => createResumePdf().save(),
      ),
    );
  }
}
