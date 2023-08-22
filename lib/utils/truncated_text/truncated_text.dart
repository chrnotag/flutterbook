import 'package:flutter/material.dart';
import 'package:flutterbook/utils/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class TruncatedTextWithMoreButton extends StatefulWidget {
  final String text;
  final int maxLines;
  final Color? textColor;

  const TruncatedTextWithMoreButton({super.key, required this.text, this.maxLines = 2, this.textColor});

  @override
  _TruncatedTextWithMoreButtonState createState() =>
      _TruncatedTextWithMoreButtonState();
}

class _TruncatedTextWithMoreButtonState
    extends State<TruncatedTextWithMoreButton> {
  bool _showMore = false;
  bool _isTextOverflowing =
      false; // Variável para armazenar o valor de verificação

  @override
  void initState() {
    super.initState();
    _calculateTextHeights();
  }

  void _calculateTextHeights() {
    final textSpan = TextSpan(
      text: widget.text,
      style: TextStyle(fontSize: 16.0, color: Colors.white),
    );

    final textPainterCollapsed = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      maxLines: widget.maxLines,
    );

    textPainterCollapsed.layout();

    final textPainterExpanded = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    setState(() {
      _isTextOverflowing = textPainterCollapsed
          .didExceedMaxLines; // Atualiza a variável _isTextOverflowing
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final provider = Provider.of<AppProvider>(context);
        Color textColor() {
          switch (provider.isDarkMode) {
            case false:
              if(widget.textColor == null)
                return Colors.black;
              else
                return widget.textColor!;
            case true:
              if(widget.textColor == null)
                return Colors.white;
              else
                return widget.textColor!;
          }
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                final textSpan = TextSpan(
                  text: widget.text,
                  style: TextStyle(fontSize: 16.0, color: textColor()),
                );

                final textPainter = TextPainter(
                  text: textSpan,
                  textDirection: TextDirection.ltr,
                  maxLines: widget.maxLines,
                );

                textPainter.layout(maxWidth: constraints.maxWidth);

                final isTextOverflowing = textPainter.didExceedMaxLines;

                return RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: widget.text,
                        style: TextStyle(fontSize: 16.0, color: textColor()),
                      ),
                      if (isTextOverflowing && !_showMore)
                        TextSpan(
                          text: ' ... ',
                          style: TextStyle(fontSize: 16.0, color: textColor()),
                        ),
                    ],
                  ),
                  maxLines: _showMore ? null : widget.maxLines,
                  overflow:
                      _showMore ? TextOverflow.visible : TextOverflow.ellipsis,
                );
              },
            ),
            if (_isTextOverflowing) // Verifica se o texto está ultrapassando o limite de linhas
              _showMore
                  ? TextButton(
                      onPressed: () {
                        setState(() {
                          _showMore = !_showMore;
                        });
                      },
                      child: Text(
                        'Ver menos',
                        style: TextStyle(color: textColor()),
                      ),
                    )
                  : TextButton(
                      onPressed: () {
                        setState(() {
                          _showMore = !_showMore;
                        });
                      },
                      child: Text(
                        'Ver mais',
                        style: TextStyle(color: Colors.blue.shade800),
                      ),
                    ),
          ],
        );
      },
    );
  }
}
