import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyTabPage extends StatefulWidget {
  const MyTabPage({super.key});

  @override
  State<MyTabPage> createState() => _MyTabPageState();
}

class _MyTabPageState extends State<MyTabPage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  // final String pdfPath = 'assets\\images\\hero.pdf';

//❤️❤️
//  late PdfViewerController _pdfViewerController;

//   @override
//   void initState() {
//     super.initState();
//     _pdfViewerController = PdfViewerController();
//     _preloadPDF();
//   }

//   Future<void> _preloadPDF() async {
//     final PdfDocument document = PdfDocument(file: widget.pdfPath);
//     await document.loadDocument();
//     _pdfViewerController.loadDocument(document);
//   }

//   @override
//   void dispose() {
//     _pdfViewerController.dispose();
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          bottom: const TabBar(
            isScrollable: true,
            dividerColor: Colors.white,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                text: "SYLLABUS",
              ),
              Tab(
                text: "CHAPTERS",
              ),
              Tab(
                text: "TEXT BOOK",
              ),
              Tab(
                text: "QUESTION BANK",
              ),
              Tab(
                text: "QUESTIONS",
              ),
              Tab(
                text: "PRACTICAL",
              ),
              Tab(
                text: "VIVA QUESTIONS",
              ),
            ],
          ),
          title: const ListTile(
            title: Text(
              "Subject",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            subtitle: Text(
              "Math",
              style: TextStyle(
                  color: Color.fromARGB(255, 196, 189, 189),
                  fontSize: 15,
                  height: .5),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              height: 300,
              width: 300,
              child: SfPdfViewer.asset(
                'assets/images/12.pdf',
                key: _pdfViewerKey,
              ),
            ),
            const Icon(Icons.directions_transit),
            const Icon(Icons.directions_bike),
            const Icon(Icons.directions_bike),
            const Icon(Icons.directions_bike),
            const Icon(Icons.directions_bike),
            const Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
