import 'dart:math';
import 'package:flutter/material.dart';
import '../../constants/colors/colors.dart';
import '../../models/storie_model.dart';

class StorieCard extends StatefulWidget {
  final StorieModel storieModel;

  StorieCard({Key? key, required this.storieModel}) : super(key: key);

  @override
  _StorieCardState createState() => _StorieCardState();
}

class _StorieCardState extends State<StorieCard> {
  @override
  Widget build(BuildContext context) {
    StorieModel data = widget.storieModel;
    return Container(
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            data.stories[0].isImage
                ? Container(
              height: double.maxFinite,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        data.stories[0].content,
                        fit: BoxFit.cover,
                      ),
                    ),
                )
                : Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _getRandomColor(),
                    ),
                    child: Text(
                      data.stories[0].content,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: NetworkImage(widget.storieModel.imgProfile),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: AppColors.azul700, width: 2),
                ),
              ),
            ),
            Positioned(
              bottom: 4,
              left: 8,
              right: 8,
              child: Text(
                widget.storieModel.nameUser,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Função para gerar uma cor aleatória
  Color _getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }
}
