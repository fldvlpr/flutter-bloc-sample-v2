import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_detail_cubit.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_detail_state.dart';
import 'package:flutter_bloc_sample_v2/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v2/features/posts/presentation/pages/post_detail_screen.dart';

class MockPostDetailCubit extends MockCubit<PostDetailState> implements PostDetailCubit {}

void main() {
  late MockPostDetailCubit mockPostDetailCubit;

  setUp(() {
    mockPostDetailCubit = MockPostDetailCubit();
  });

  Widget buildWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<PostDetailCubit>.value(
        value: mockPostDetailCubit,
        child: const PostDetailScreen(postId: '1'),
      ),
    );
  }

  group('PostDetailScreen', () {
    testWidgets('renders CircularProgressIndicator on initial and loading state', (tester) async {
      when(() => mockPostDetailCubit.state).thenReturn(const PostDetailState.loading());

      await tester.pumpWidget(buildWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders Post content on loaded state', (tester) async {
      const tPost = Post(id: 1, title: 'Detail Title', body: 'Detail Body');
      when(() => mockPostDetailCubit.state).thenReturn(const PostDetailState.loaded(tPost));

      await tester.pumpWidget(buildWidgetUnderTest());

      expect(find.text('Title: Detail Title'), findsOneWidget);
      expect(find.text('Detail Body'), findsOneWidget);
      expect(find.text('ID: 1'), findsOneWidget);
    });

    testWidgets('renders error text on error state', (tester) async {
      when(() => mockPostDetailCubit.state).thenReturn(const PostDetailState.error('Detail fetch failed'));

      await tester.pumpWidget(buildWidgetUnderTest());

      expect(find.text('Error: Detail fetch failed'), findsOneWidget);
    });
  });
}
