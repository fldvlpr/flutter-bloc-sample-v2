import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v2/core/di/injection.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_bloc.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_detail_cubit.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_event.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_form_cubit.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/repositories/post_repository.dart';
import 'package:flutter_bloc_sample_v2/features/posts/presentation/pages/post_detail_screen.dart';
import 'package:flutter_bloc_sample_v2/features/posts/presentation/pages/post_form_screen.dart';
import 'package:flutter_bloc_sample_v2/features/posts/presentation/pages/posts_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/posts',
  routes: [
    GoRoute(
      path: '/posts',
      name: 'posts',
      builder: (context, state) => BlocProvider(
        create: (context) =>
            PostBloc(postRepository: getIt<PostRepository>())
              ..add(GetPostsEvent()),
        child: PostsScreen(),
      ),
    ),

    GoRoute(
      path: '/posts/create',
      name: 'create-post',
      builder: (context, state) {
        return BlocProvider(
          create: (_) => PostFormCubit(postRepository: getIt<PostRepository>()),
          child: PostFormScreen(),
        );
      },
    ),

    GoRoute(
      path: '/posts/:id',
      name: 'post-detail',
      builder: (context, state) {
        final idString = state.pathParameters['id'] ?? '';

        return BlocProvider(
          create: (_) =>
              PostDetailCubit(postRepository: getIt<PostRepository>())
                ..fetchPostDetail(int.parse(idString)),
          child: PostDetailScreen(postId: idString),
        );
      },
    ),
  ],
);
