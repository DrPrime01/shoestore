import 'package:flutter/material.dart';
import 'package:shoestore/utils/constants/colors.dart';

import 'circular_container.dart';
import 'curved_edges/curved_edge_widget.dart';

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
