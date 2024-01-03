import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ExampleCubit cubit = ExampleCubit();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExampleCubit, StateChange>(
        bloc: cubit,
        buildWhen: (previous, current) => previous.text != current.text,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: state.text.length >= 4 ? Colors.red : Colors.white,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      onChanged: cubit.changeText,
                      decoration: const InputDecoration(
                        hintText: 'Enter a search term',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          context.go('/secondScreen');
                        },
                        child: const Text('Go to second page'))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
