import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_app_with_api/cubit/states.dart';
import 'package:gold_app_with_api/network/dio_helper.dart';

class MainCubit extends Cubit<States> {
  MainCubit() : super(InitState());

  static MainCubit get(context) => BlocProvider.of(context);

  double? goldD;
  int? goldI;

  getGoldPrice() {
    Diohelper.getData('XAU/EGP').then((value) {
      goldD = value.data['price'];
      goldI = goldD!.round();
      print(goldI);
      emit(GetGoldPriceState());
    }).catchError((error) {
      print(error.toString());
    });
  }

  double? gram24D;
  int? gram24I;

  getGold24kPrice() {
    Diohelper.getData('XAU/EGP').then((value) {
      gram24D = value.data['price_gram_24k'];
      gram24I = gram24D!.round();
      print(gram24I);
      emit(GetGold24kPriceState());
    }).catchError((error) {
      print(error.toString());
    });
  }

  double? gram21D;
  int? gram21I;

  getGold21kPrice() {
    Diohelper.getData('XAU/EGP').then((value) {
      gram21D = value.data['price_gram_21k'];
      gram21I = gram21D!.round();
      print(gram21I);
      emit(GetGold21kPriceState());
    }).catchError((error) {
      print(error.toString());
    });
  }

  double? gram18D;
  int? gram18I;

  getGold18kPrice() {
    Diohelper.getData('XAU/EGP').then((value) {
      gram18D = value.data['price_gram_18k'];
      gram18I = gram18D!.round();
      print(gram18I);
      emit(GetGold18kPriceState());
    }).catchError((error) {
      print(error.toString());
    });
  }

  double? silverD;
  int? silverI;

  getSilverPrice() {
    Diohelper.getData('XAG/EGP').then((value) {
      silverD = value.data['price'];
      silverI = silverD!.round();
      print(silverI);
      emit(GetSilverPriceState());
    }).catchError((error) {
      print(error.toString());
    });
  }

  double? silver24D;
  int? silver24I;

  getSilver24KPrice() {
    Diohelper.getData('XAG/EGP').then((value) {
      silver24D = value.data['price_gram_24k'];
      silver24I = silver24D!.round();
      print(silver24I);
      emit(GetSilver24kPriceState());
    }).catchError((error) {
      print(error.toString());
    });
  }

  double? silver21D;
  int? silver21I;

  getSilver21KPrice() {
    Diohelper.getData('XAG/EGP').then((value) {
      silver21D = value.data['price_gram_21k'];
      silver21I = silver21D!.round();
      print(silver21I);
      emit(GetSilver21kPriceState());
    }).catchError((error) {
      print(error.toString());
    });
  }

  double? silver18D;
  int? silver18I;

  getSilver18KPrice() {
    Diohelper.getData('XAG/EGP').then((value) {
      silver18D = value.data['price_gram_18k'];
      silver18I = silver18D!.round();
      print(silver18I);
      emit(GetSilver18kPriceState());
    }).catchError((error) {
      print(error.toString());
    });
  }
}
