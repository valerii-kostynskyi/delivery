import 'package:delivery/presentation/blocks/farm_info/farm_info_bloc.dart';
import 'package:delivery/presentation/pages/general_info/widget/general_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneralInfoPage extends StatelessWidget {
  const GeneralInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            FarmInfoBloc()..add(const FarmInfoEvent.loadFarmInfo()),
        child: const GeneralInfoView());
  }
}
