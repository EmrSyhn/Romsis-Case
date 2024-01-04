import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/change_color_bloc.dart';

/// Represents the home page of the application.
/// This page displays a text field and a button to navigate to the second page.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);

    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.isRed ? Colors.red : Colors.white,
          appBar: AppBar(
              backgroundColor: state.isRed ? Colors.red : Colors.white,
              title: const Text(
                'Home Page',
              )),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                    onChanged: (text) {
                      colorBloc.add(TextChangedEvent(text));
                    },
                    decoration: const InputDecoration(
                      hintText: 'Enter a search term',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.maxFinite, 50.0)),
                    onPressed: () {
                      context.go('/secondScreen');
                    },
                    child: const Text('Go to second page'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
