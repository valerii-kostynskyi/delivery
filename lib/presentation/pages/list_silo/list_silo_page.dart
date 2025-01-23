import 'package:delivery/presentation/blocks/list_silo/list_silo_bloc.dart';
import 'package:delivery/presentation/pages/list_silo/widget/list_silo_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSiloPage extends StatelessWidget {
  final int waybillId;
  final String barcode;

  const ListSiloPage({
    super.key,
    required this.waybillId,
    required this.barcode,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          ListSiloBloc()..add(ListSiloEvent.loadSilos(waybillId: waybillId)),
      child: ListSiloView(
        waybillId: waybillId,
        barcode: barcode,
      ),
    );
  }
}
