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
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.system_update),
                    SizedBox(width: 4.0),
                    Flexible(
                      child: Text(
                        _firmware.sysNameI18N,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Version: ${_firmware.logicVersion}'),
                      Flexible(
                        child: Text(
                          _firmware.updateContentI18N,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ],
                  ),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: const Text('Download'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
