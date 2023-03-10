import 'package:clap/app_exports.dart';
import 'package:clap/views/discover/discover.dart';
import 'package:clap/views/more/more.dart';
import 'package:clap/views/purchase_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeProvider = ChangeNotifierProvider<HomeProvider>(
  (ref) => HomeProvider(),
);

class HomeProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  List<Widget> navScreens = <Widget>[
    const Discover(),
    Container(color: Colors.red),
    const PurchaseData(),
    const More(),
  ];
}
