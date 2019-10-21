import 'package:fimifirm/bloc/dashboard/bloc.dart';
import 'package:fimifirm/model/firmware.dart';
import 'package:fimifirm/repository/repository.dart';
import 'package:fimifirm/screen/dashboard/firmware_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  DashboardBloc _dashboardBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fimifirm - Get the latest firmware for Fimi X8 SE'),
      ),
      body: BlocProvider(
        builder: (context) => _dashboardBloc,
        child: BlocListener(
          bloc: _dashboardBloc,
          listener: (context, state) {
            if (state is ErrorState) {
              final snackBar =
                  SnackBar(content: Text(state.exception.toString()));
              Scaffold.of(context).showSnackBar(snackBar);
            }
          },
          child: BlocBuilder<DashboardBloc, DashboardState>(
            bloc: _dashboardBloc,
            builder: (context, state) {
              if (state is LoadingState) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state is LatestFirmwaresState) {
                return _buildLatestFirmwaresWidget(context, state.firmwares);
              }

              if (state is ErrorState) {
                return _buildErrorWidget(context, state.exception);
              }

              return Container();
            },
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Repository _repository = RepositoryProvider.of<Repository>(context);
    _dashboardBloc = DashboardBloc(repository: _repository);
    _dashboardBloc.add(StartEvent());
  }

  Widget _buildErrorWidget(BuildContext context, Exception exception) {
    return Container(
      color: Theme.of(context).colorScheme.error,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.error),
            SizedBox(height: 10),
            Text(exception.toString()),
          ],
        ),
      ),
    );
  }

  Widget _buildLatestFirmwaresWidget(
      BuildContext context, List<Firmware> firmwares) {
    return GridView.extent(
      maxCrossAxisExtent: 400,
      children: List.generate(firmwares.length, (index) {
        return FirmwareWidget(
          firmware: firmwares[index],
        );
      }),
    );
  }
}
