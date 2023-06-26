import 'package:flutter/material.dart';
import 'package:study_app/features/crypto_list/widgets/widgets.dart';
import 'package:study_app/repositories/crypto_coins/crypto_coins_repository.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({Key? key}) : super(key: key);

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crypto Currencies List"),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) {
          const coinName = "Bitcoin";
          return const CryptoCoinTile(coinName: coinName);
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 15,
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.download),
          onPressed: () {
            CryptoCoinsRepository().getCoinsList();
          }),
    );
  }
}
