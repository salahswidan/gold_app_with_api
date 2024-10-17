import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_app_with_api/cubit/cubit.dart';
import 'package:gold_app_with_api/cubit/states.dart';
import 'package:gold_app_with_api/network/dio_helper.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MainCubit()
          ..getGoldPrice()
          ..getSilverPrice()
          ..getGold24kPrice()
          ..getGold21kPrice()
          ..getGold18kPrice()
          ..getSilver24KPrice()
          ..getSilver21KPrice()
          ..getSilver18KPrice(),
        child: BlocConsumer<MainCubit, States>(
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                backgroundColor: Colors.grey[800],
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'TODAY ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            shadows: [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(1, 1),
                                blurRadius: 5,
                              )
                            ],
                          ),
                        ),
                        Text(
                          'PRICE',
                          style: TextStyle(
                            color: Colors.orange[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            shadows: [
                              BoxShadow(
                                color: Colors.orange,
                                offset: Offset(1, 1),
                                blurRadius: 5,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                body: Container(
                  padding:
                      EdgeInsets.only(top: 50, right: 8, left: 8, bottom: 8),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/gold.png',
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                          ),
                          Text(
                            'GOLD',
                            style: TextStyle(
                              color: Colors.orange[800],
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width / 8,
                              shadows: [
                                BoxShadow(
                                  color: Colors.yellow[300]!,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '   ${MainCubit.get(context).goldI}💲',
                            style: TextStyle(
                              color: Colors.orange[800],
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width / 16,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            ' gram 24K ${MainCubit.get(context).gram24I}💲',
                            style: TextStyle(
                                color: Colors.orange[800],
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 23),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'gram 21K ${MainCubit.get(context).gram21I}💲',
                            style: TextStyle(
                                color: Colors.orange[800],
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 23),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'gram 18K ${MainCubit.get(context).gram18I}💲',
                            style: TextStyle(
                                color: Colors.orange[800],
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 23),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/silver.png',
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                          ),
                          Text(
                            'SILVER',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width / 8,
                              shadows: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '   ${MainCubit.get(context).silverI}💲',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width / 16,
                              shadows: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'gram 24K ${MainCubit.get(context).silver24I}💲',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 23),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'gram 21K ${MainCubit.get(context).silver21I}💲',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 23),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'gram 18K ${MainCubit.get(context).silver18I}💲',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 23),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
