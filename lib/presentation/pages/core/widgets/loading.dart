import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    const BoxDecoration boxDecoration = BoxDecoration(
      color: Colors.transparent,
    );

    return Container(
      decoration: boxDecoration,
      height: MediaQuery.of(context).size.height -
          AppBar.preferredHeightFor(context, const Size.fromHeight(200)),
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      ),
    );
  }
}
