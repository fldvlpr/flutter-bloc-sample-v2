import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_detail_cubit.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_detail_state.dart';

class PostDetailScreen extends StatelessWidget {
  final String postId;

  const PostDetailScreen({super.key, required this.postId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post Detail')),
      body: BlocBuilder<PostDetailCubit, PostDetailState>(
        builder: (context, state) {
          if (state is PostDetailStateInitial ||
              state is PostDetailStateLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostDetailStateError) {
            return Center(child: Text('Error: ${state.message}'));
          } else if (state is PostDetailStateLoaded) {
            final post = state.post;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ID: ${post.id}', style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 8),
                  Text(
                    'Title: ${post.title}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    post.body,
                    style: const TextStyle(fontSize: 16),
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
