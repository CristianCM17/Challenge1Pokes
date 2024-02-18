import 'package:challenge1/models/shoes.dart';
import 'package:challenge1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key, required this.pokes}): super(key: key);

  final Pokes pokes;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top:  -size.height * 0.15,
            right: -size.height * 0.20,
            child: AnimatedContainer(
              duration: const Duration(milliseconds:400),
              height: size.height * 0.5,
              width: size.height * 0.5,
              decoration: BoxDecoration(
                color: widget.pokes.listImage[0].color,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: kToolbarHeight,
            left: 16,
            right: 16 ,
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onTap: ()=> Navigator.pop(context) ,
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  )
                  ),
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.favorite),
                  )
              ],
              )
          ),
          Positioned(
            top: size.height *0.2,
            right: 0,
            left: 0,
            child: FittedBox(
              child: Text(
                widget.pokes.generation,
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
                ),
            )
          ),
          Positioned(
            top: size.height *0.22,
            right: size.height *0.07,
            left: size.height *0.07,
            child: Hero(
              tag: widget.pokes.name,
              child: Image(
                image:AssetImage(
                  widget.pokes.listImage[0].image
                ),  
              ),
            )
          ),
          Positioned(
            top: size.height *0.6,
            right: 16,
            left: 16,
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                      Text(
                        widget.pokes.generation,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,

                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                         widget.pokes.name,
                         style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                         ),
                      )
                    ],)
                  ],
                )
              ],
            )
          )
        ],
      )
      );
  }
}