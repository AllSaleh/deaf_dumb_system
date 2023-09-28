import 'package:flutter/material.dart';
class MicSearch extends StatelessWidget {
  const MicSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: 40,
                          width: 35,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: const Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
  }
}