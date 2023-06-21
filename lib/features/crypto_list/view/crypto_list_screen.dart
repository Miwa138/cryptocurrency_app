import 'package:cryptocurrency_app/features/crypto_list/bloc/crypto_list_block.dart';
import 'package:cryptocurrency_app/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({
    super.key,
  });

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  final _cryptoListBlock = CryptoListBloc(GetIt.I<AbstractCoinsRepository>());

  @override
  void initState() {
    // TODO: implement initState
    _loadCryptoCoins();
    _cryptoListBlock.add(loadCryptoList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:  Text('CryptoCurrenciesList')),
      ),
      body: BlocBuilder<CryptoListBloc, CryptoListState>(
        bloc: _cryptoListBlock,
        builder: (context, state) {
          return Container();
        },
      ),
        // (_cryptoCoinsList == null)
        //   ? Center(child: const CircularProgressIndicator())
        //   : ListView.separated(
        //       padding: const EdgeInsets.only(top: 16),
        //       itemCount: _cryptoCoinsList!.length,
        //       separatorBuilder: (context, index) => Divider(),
        //       itemBuilder: (context, i) {
        //         final coin = _cryptoCoinsList![i];
        //         return CryptoCoinTile(coin: coin);
        //       },
        //     ),
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await GetIt.I<AbstractCoinsRepository>().getCoinsList();
    setState(() {});
  }
}
