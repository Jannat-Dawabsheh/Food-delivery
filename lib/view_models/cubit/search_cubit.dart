import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/models/food_item.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
 // final homeServices=HomeServicesImpl();
  Future<void>search(String foodType)async{
    // emit(SearchLoading());
    // try{
    //   final response=await homeServices.getTopHeadline(TopHeadlinesRequest(country: 'us', q:query), 'Bearer ${AppConstants.token}');
    //   emit(SearchLoaded(response.articles));
    // }catch(e){
    //   emit(searchError(e.toString()));
    // }
  }
}
