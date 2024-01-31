import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class TextEditor extends StatefulWidget {
  final String hint;
  const TextEditor({super.key, required this.hint});

  @override
  State<TextEditor> createState() => _TextEditorState();
}

QuillController _ctrl = QuillController.basic();

class _TextEditorState extends State<TextEditor> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1, color: Color(0xFF898A8D)),
                    right: BorderSide(width: 1, color: Color(0xFF898A8D)),
                    left: BorderSide(width: 1, color: Color(0xFF898A8D)))),
            child: QuillToolbar.simple(
              configurations: QuillSimpleToolbarConfigurations(
                toolbarIconAlignment: WrapAlignment.start,
                toolbarSectionSpacing: -4,
                showBackgroundColorButton: false,
                showFontFamily: false,
                showFontSize: false,
                showDividers: false,
                showDirection: false,
                showLink: false,
                showRedo: false,
                showUndo: false,
                showQuote: false,
                showSearchButton: false,
                showSmallButton: false,
                showSubscript: false,
                showSuperscript: false,
                showStrikeThrough: false,
                showClearFormat: false,
                showCodeBlock: false,
                showHeaderStyle: false,
                showInlineCode: false,
                showListCheck: false,
                showIndent: false,
                controller: _ctrl,
                sharedConfigurations: const QuillSharedConfigurations(
                  locale: Locale('vi'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFF898A8D))),
              child: QuillEditor.basic(
                configurations: QuillEditorConfigurations(
                  controller: _ctrl,
                  placeholder: widget.hint,
                  readOnly: false,
                  sharedConfigurations: const QuillSharedConfigurations(
                    locale: Locale('vi'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
