import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Denem extends StatefulHookWidget {

  @override
  State<StatefulWidget> createState() {
    return _DenemState();
  }

}

class _DenemState extends State<Denem> with AutomaticKeepAliveClientMixin {

  @override
  Widget build(BuildContext context) {

    return Container();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => throw UnimplementedError();
}
