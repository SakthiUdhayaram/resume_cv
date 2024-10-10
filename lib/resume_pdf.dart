import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Document createResumePdf() {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                'Your Name',
                style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text('Contact: your.email@example.com'),
              pw.SizedBox(height: 20),
              pw.Text(
                'Skills',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text('Flutter, Dart, Firebase, etc.'),
              pw.SizedBox(height: 10),
              pw.Text(
                'Education',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text('Bachelor of Computer Science, XYZ University'),
              pw.SizedBox(height: 10),
              pw.Text(
                'Experience',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text('Software Developer at ABC Company'),
            ],
          ),
        );
      },
    ),
  );
  return pdf;
}
