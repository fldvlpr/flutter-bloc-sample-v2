import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_form_cubit.dart';
import 'package:go_router/go_router.dart';

class PostFormScreen extends StatefulWidget {
  const PostFormScreen({super.key});

  @override
  State<PostFormScreen> createState() => _PostFormScreenState();
}

class _PostFormScreenState extends State<PostFormScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post Form')),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: titleController,
                        decoration: const InputDecoration(labelText: 'Title'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a title';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: bodyController,
                        decoration: const InputDecoration(labelText: 'Body'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a body';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    String title = titleController.text.trim();
                    String body = bodyController.text.trim();

                    await context.read<PostFormCubit>().createPost(
                      title: title,
                      body: body,
                    );

                    if (mounted) {
                      context.pop();
                    }
                  }
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
