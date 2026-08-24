import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_bloc.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_event.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_state.dart';
import 'package:go_router/go_router.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100) {
      context.read<PostBloc>().add(const GetPostsEvent());
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts Screen')),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (BuildContext context, state) {
          if (state.isLoading && state.posts.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          // Error when there are no posts.
          if (state.error != null && state.posts.isEmpty) {
            return Center(child: Text(state.error!));
          }

          return ListView.builder(
            controller: _scrollController,
            padding: const EdgeInsets.all(8),
            itemCount:
                state.posts.length + (state.isLoading && state.hasMore ? 1 : 0),
            itemBuilder: (context, index) {
              // Bottom loading indicator.
              if (index == state.posts.length) {
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              final post = state.posts[index];

              return ListTile(
                onTap: () => context.push('/posts/${post.id}'),
                title: Text(post.title),
                subtitle: Text(
                  post.body,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/posts/create');
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
