
import 'package:cryptocurrency_app/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';


class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({super.key, required this.coin});

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  ListTile(
      leading: Image.network(coin.imageUrl),
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '${coin.priceInUSD}\$',
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coin,
        );
      },
    );
  }
}
