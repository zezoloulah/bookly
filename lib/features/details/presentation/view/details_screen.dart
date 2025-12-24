import 'package:bookly/features/details/presentation/view/widget/details_view_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:DetailsViewBody() ,
    );
  }
}