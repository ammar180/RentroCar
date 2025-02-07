import 'package:rentro_car/features/home/models/home_model.dart';

class HomeState {}

final class HomeInitial extends HomeState {}

final class GetCarSuccess extends HomeState {
  final HomeModel homeModel;

  GetCarSuccess({required this.homeModel});
}

final class GetCarLoading extends HomeState {}

final class GetCarFailure extends HomeState {
  final String errMessage;

  GetCarFailure({required this.errMessage});
}
