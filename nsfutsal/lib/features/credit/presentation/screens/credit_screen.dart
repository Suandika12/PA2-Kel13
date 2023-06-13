import 'package:auto_route/auto_route.dart';
import 'package:nsfutsal/routes/app_routers.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../shared/theme.dart';
import '../bloc/credit_bloc.dart';
import '../bloc/credit_state.dart';
import '../bloc/credit_event.dart';
import '../shared/custom_text_form_field.dart';
import 'credit_item.dart';

List<Ogrenci> tumOgrenciler = List.generate(
  500,
  (index) => Ogrenci(
      index + 1, "Ogrenci Adi ${index + 1}", "Ogrenci Soyad ${index + 1}"),
);

const List<String> _Telkomsel = [
  '0811',
  '0812',
  '0813',
  '0821',
  '0822',
  '0823',
  '0852',
  '0853',
  '0851',
];

const List<String> _Indosat = [
  '0814',
  '0815',
  '0816',
  '0855',
  '0856',
  '0857',
  '0858',
];

const List<String> _XL = [
  '0817',
  '0818',
  '0819',
  '0859',
  '0877',
  '0878',
];

const List<String> _Axis = [
  '0831',
  '0832',
  '0838',
];

const List<String> _Three = [
  '0895',
  '0896',
  '0897',
  '0898',
  '0899',
];

const List<String> _Smartfren = [
  '0881',
  '0882',
  '0883',
  '0884',
  '0885',
  '0886',
  '0887',
  '0888',
  '0889',
];

const List<String> _Tri = [
  '0895',
  '0896',
  '0897',
  '0898',
  '0899',
];

class CreditScreen extends StatefulWidget {
  static const routeName = '/credit';
  const CreditScreen({super.key});

  @override
  State<CreditScreen> createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {
  String _provider = '';
  final _searchController = TextEditingController();

  void _findProvider(String number) {
    setState(() {
      if (_Telkomsel.contains(number)) {
        _provider = 'Telkomsel';
      } else if (_Indosat.contains(number)) {
        _provider = 'Indosat';
      } else if (_XL.contains(number)) {
        _provider = 'XL';
      } else if (_Axis.contains(number)) {
        _provider = 'Axis';
      } else if (_Three.contains(number)) {
        _provider = 'Three';
      } else if (_Smartfren.contains(number)) {
        _provider = 'Smartfren';
      } else if (_Tri.contains(number)) {
        _provider = 'Tri';
      }
      context.read<CreditBloc>().add(
            GetDataEvent(_provider),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: chocolate2,
        elevation: 0,
        title: Text(
          'Pinjam Ruangan',
          style: TextStyle(
            color: white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: white,
            size: 30,
          ),
          onPressed: () {
            AutoRouter.of(context).pushAndPopUntil(
              const HomeScreen(),
              predicate: (_) => false,
            );
          },
        ),
      ),  
      body: ListView.separated(
        itemBuilder: (context, index) {
          var oankiOgrenci = tumOgrenciler[index];
          return Card(
            color: index % 2 == 0 ? Colors.green[300] : Colors.cyan[200],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              title: Text(oankiOgrenci.isim),
              subtitle: Text(oankiOgrenci.soyIsim),
              leading: CircleAvatar(
                child: Text(oankiOgrenci.id.toString()),
              ),
              onTap: () {
                EasyLoading.showToast(
                  "Eleman Tiklandi",
                  toastPosition: EasyLoadingToastPosition.bottom,
                );
              },
              onLongPress: () {
                _alertDialogIslemleri(context, oankiOgrenci.isim);
              },
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.blueGrey,
            thickness: 2,
            indent: 50,
            endIndent: 50,
          );
        },
        itemCount: tumOgrenciler.length,
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyIsim;

  Ogrenci(this.id, this.isim, this.soyIsim);
}

void _alertDialogIslemleri(BuildContext myContext, String name) {
  showDialog(
      context: myContext,
      builder: (contex) {
        return AlertDialog(
          title: Text(name),
          content: const Text("Icerik"),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Kapat",
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Tamam",
                  ),
                ),
              ],
            )
          ],
        );
      });
}
