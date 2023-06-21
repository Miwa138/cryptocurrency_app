import 'package:bloc/bloc.dart';
import 'package:cryptocurrency_app/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:cryptocurrency_app/repositories/crypto_coins/crypto_coins.dart';
import 'package:get_it/get_it.dart';

part 'crypto_list_state.dart';

part 'crypto_list_event.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  CryptoListBloc(this.coinsRepository) : super (CryptoListInitial()) {
    on<loadCryptoList>((event, emit) async
    {
      final coinsList = await coinsRepository.getCoinsList();
      emit(CryptoListLoaded(coinsList: coinsList));
      });
  }

  final AbstractCoinsRepository coinsRepository;
}