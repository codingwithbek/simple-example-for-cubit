part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.currencyData,
    this.errorText = '',
    this.status = FormzStatus.pure,
  });
  final List<NbuModel> currencyData;
  final String errorText;
  final FormzStatus status;

  HomeState copyWith({
    List<NbuModel>? currencyData,
    String? errorText,
    FormzStatus? status,
  }) =>
      HomeState(
        currencyData: currencyData ?? this.currencyData,
        errorText: errorText ?? this.errorText,
        status: status ?? this.status,
      );

  @override
  List<Object> get props => [currencyData, status, errorText];
}
