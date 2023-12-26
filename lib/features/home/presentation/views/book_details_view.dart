import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:booky_app/features/home/presentation/manger/similarbook/similarbook_cubit.dart';
import 'package:booky_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarbookCubit>(context).fetchSimilarBook(
        category: widget.bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BooKDetailsBody(),
      ),
    );
  }
}
