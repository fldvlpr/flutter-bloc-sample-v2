import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_form_cubit.dart';
import 'package:flutter_bloc_sample_v2/features/posts/bloc/post_form_state.dart';
import 'package:flutter_bloc_sample_v2/features/posts/presentation/pages/post_form_screen.dart';

class MockPostFormCubit extends Mock implements PostFormCubit {}
class MockGoRouter extends Mock implements GoRouter {}

void main() {
  late MockPostFormCubit mockPostFormCubit;
  late MockGoRouter mockGoRouter;

  setUp(() {
    mockPostFormCubit = MockPostFormCubit();
    mockGoRouter = MockGoRouter();

    // Default state
    when(() => mockPostFormCubit.state).thenReturn(const PostFormState.initial());
    // Default stream
    when(() => mockPostFormCubit.stream).thenAnswer((_) => const Stream.empty());
  });

  Widget buildWidgetUnderTest() {
    return MaterialApp(
      home: InheritedGoRouter(
        goRouter: mockGoRouter,
        child: BlocProvider<PostFormCubit>.value(
          value: mockPostFormCubit,
          child: const PostFormScreen(),
        ),
      ),
    );
  }

  group('PostFormScreen', () {
    testWidgets('renders input fields correctly', (tester) async {
      await tester.pumpWidget(buildWidgetUnderTest());

      expect(find.byType(TextFormField), findsNWidgets(2));
      expect(find.text('Save'), findsOneWidget);
    });

    testWidgets('shows validation error when submitted empty', (tester) async {
      await tester.pumpWidget(buildWidgetUnderTest());

      await tester.tap(find.text('Save'));
      await tester.pump();

      expect(find.text('Please enter a title'), findsOneWidget);
      expect(find.text('Please enter a body'), findsOneWidget);
      
      // Verify createPost is NOT called
      verifyNever(() => mockPostFormCubit.createPost(title: any(named: 'title'), body: any(named: 'body')));
    });

    testWidgets('calls createPost and pops when form is valid', (tester) async {
      when(() => mockPostFormCubit.createPost(title: 'My Title', body: 'My Body'))
          .thenAnswer((_) async {});

      await tester.pumpWidget(buildWidgetUnderTest());

      await tester.enterText(find.byType(TextFormField).first, 'My Title');
      await tester.enterText(find.byType(TextFormField).last, 'My Body');

      await tester.tap(find.text('Save'));
      await tester.pump();

      verify(() => mockPostFormCubit.createPost(title: 'My Title', body: 'My Body')).called(1);
      verify(() => mockGoRouter.pop()).called(1);
    });
  });
}
