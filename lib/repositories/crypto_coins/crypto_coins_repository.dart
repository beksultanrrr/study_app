import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:study_app/repositories/models/crypto_coin.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    final responce = await Dio().get(
        "https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD,JPY,EUR");
    final data = responce.data as Map<String, dynamic>;
    final cryptoCoinsList = data.entries
        .map((e) => CryptoCoin(
            name: e.key, priceInUSD: (e.value as Map<String, dynamic>)["JPY"] ))
        .toList();
    print(cryptoCoinsList);

    return cryptoCoinsList;
  }
}
