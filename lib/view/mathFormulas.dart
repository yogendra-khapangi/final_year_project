import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyFormulas extends StatefulWidget {
  const MyFormulas({super.key});

  @override
  State<MyFormulas> createState() => _MyFormulasState();
}

class _MyFormulasState extends State<MyFormulas> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Math formulas"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SfPdfViewer.asset(
        'assets/images/12.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
