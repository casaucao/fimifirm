import 'package:fimifirm/model/firmware.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirmwareWidget extends StatelessWidget {
  final Firmware _firmware;

  FirmwareWidget({@required Firmware firmware})
      : assert(firmware != null),
        _firmware = firmware;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: ListTile(
                  leading: Icon(Icons.system_update),
                  title: Text(_firmware.sysNameI18N),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Version: ${_firmware.logicVersion}'),
                      Text(
                        _firmware.updateContentI18N,
                        style: TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: ButtonTheme.fromButtonThemeData(
                    data: ButtonTheme.of(context),
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Download'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
