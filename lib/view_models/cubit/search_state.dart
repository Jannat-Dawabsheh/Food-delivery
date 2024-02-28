
part of 'search_cubit.dart';

sealed class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchLoaded extends SearchState {
  final List<FoodItem>foodList;
  SearchLoaded(this.foodList);
}
final class searchError extends SearchState{
  final String message;
  searchError(this.message);
}