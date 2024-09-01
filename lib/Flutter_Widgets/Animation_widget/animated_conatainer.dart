import 'package:flutter/material.dart';

class AnimatedConatainer extends StatefulWidget {
  const AnimatedConatainer({super.key});

  @override
  State<AnimatedConatainer> createState() => _AnimatedConatainerState();
}

class _AnimatedConatainerState extends State<AnimatedConatainer> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isTapped = !_isTapped;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 30),
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width:
                      _isTapped ? MediaQuery.of(context).size.width - 60 : 60,
                  height: 60,
                  decoration: BoxDecoration(
                    border: _isTapped
                        ? Border.all(width: 5, color: Colors.green)
                        : Border.all(width: 5, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: _isTapped
                      ? const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              _isTapped = !_isTapped;
                            });
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
