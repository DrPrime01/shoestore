import 'package:flutter/material.dart';
import 'package:shoestore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shoestore/common/widgets/custom_shapes/containers/curved_edges/curved_edge_widget.dart';
import 'package:shoestore/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [PrimaryHeaderContainer(child: Container())]),
      ),
    );
  }
}

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: CustomColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularWidget(
                  backgroundColor: CustomColors.textWhite.withValues(
                    alpha: 0.1,
                  ),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularWidget(
                  backgroundColor: CustomColors.textWhite.withValues(
                    alpha: 0.1,
                  ),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
