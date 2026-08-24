import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_bloc.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_event.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_state.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v2/features/posts/presentation/pages/posts_screen.dart';

class MockPostBloc extends MockBloc<PostEvent, PostState> implements PostBloc {}

void main() {
  late MockPostBloc mockPostBloc;

  setUp(() {
    mockPostBloc = MockPostBloc();
  });

  Widget buildWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<PostBloc>.value(
        value: mockPostBloc,
        child: const PostsScreen(),
      ),
    );
  }

  group('PostsScreen', () {
    testWidgets('renders CircularProgressIndicator when isLoading is true and posts are empty', (tester) async {
      when(() => mockPostBloc.state).thenReturn(const PostState(isLoading: true, posts: []));

      await tester.pumpWidget(buildWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders list of posts when posts are available', (tester) async {
      const tPost = Post(id: 1, title: 'Test Title', body: 'Test Body');
      when(() => mockPostBloc.state).thenReturn(const PostState(isLoading: false, posts: [tPost]));

      await tester.pumpWidget(buildWidgetUnderTest());

      expect(find.text('Test Title'), findsOneWidget);
      expect(find.text('Test Body'), findsOneWidget);
      expect(find.byType(ListTile), findsOneWidget);
    });

    testWidgets('renders error text when there is an error and posts are empty', (tester) async {
      when(() => mockPostBloc.state).thenReturn(const PostState(isLoading: false, posts: [], error: 'Error occurred'));

      await tester.pumpWidget(buildWidgetUnderTest());

      expect(find.text('Error occurred'), findsOneWidget);
    });
  });
}
