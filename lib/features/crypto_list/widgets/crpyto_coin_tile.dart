
import 'package:flutter/material.dart';

import '../../crypto_coin/view/crypto_coin_screen.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName,

  });

  final String coinName;


  @override
  Widget build(BuildContext context) {
      final theme = Theme.of(context);
    return ListTile(
      leading: const Icon(
        Icons.currency_bitcoin,
        color: Colors.orange,
        size: 30,
      ),
      title: Text(
        coinName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text("200000", style: theme.textTheme.labelSmall),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed("/coin",
        arguments: coinName);
      },
    );
  }
}
