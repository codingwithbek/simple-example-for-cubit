import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:exam_five/data/models/nbu_model.dart';
import 'package:exam_five/data/repository/nbu_repository.dart';
import 'package:formz/formz.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required NbuRepository nbuRepository})
      : _nbuRepository = nbuRepository,
        super(const HomeState(currencyData: []));

  final NbuRepository _nbuRepository;
  void getCategories() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final currencyData = await _nbuRepository.getAllData();
      emit(state.copyWith(
        currencyData: currencyData,
        status: FormzStatus.submissionSuccess,
      ));
    } on DioError catch (error) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          errorText: error.toString(),
        ),
      );
    }
  }
}
