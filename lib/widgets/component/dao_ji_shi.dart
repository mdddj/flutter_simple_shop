part of '../index.dart';

typedef TimerBuilder = Widget Function(int h, int m, int s);
typedef TimeBuilderTurn = Widget Function(int m, int s);

///
/// @Author 梁典典
/// @Github 开源地址 https://github.com/mdddj/flutter_simple_shop
/// @Description 功能描述 倒计时组件
/// @Date 创建时间 2021年6月19日 17:38:45
///
class Daojishi extends StatefulWidget {
  final List<int> times;
  final TimerBuilder? builder;
  final TimeBuilderTurn? builderTurn;

  const Daojishi({super.key, required this.times, this.builder, this.builderTurn});

  @override
  DaojishiState createState() => DaojishiState();
}

class DaojishiState extends State<Daojishi> {
  late Timer _timer;

  int _m = 0; // 分
  int _s = 0; // 秒
  int _h = 0; // 小时

  int _m2 = 0;
  int _s2 = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        final now = DateTime.now();
        final m = now.minute;
        final s = now.second;
        final h = now.hour;

        djs();

        if (_m != m) {
          if (mounted) {
            setState(() {
              _m = m;
            });
          }
        }
        if (_s != s) {
          if (mounted) {
            setState(() {
              _s = s;
            });
          }
        }
        if (_h != h) {
          if (mounted) {
            setState(() {
              _h = h;
            });
          }
        }
      });
    });
  }

  /// 计算倒计时
  void djs() {
    final index = widget.times.indexWhere((element) {
      final s = element - _m;
      return s >= 0 && s < 20 && element >= _m;
    });
    if (index != -1) {
      final findnum = widget.times[index];
      final y = DateUtil.formatDate(DateTime.now(), format: 'yyyy-MM-dd');
      final timestr = '$y${' $_h:$findnum'}';
      final m = DateUtil.getDateTime(timestr)!.difference(DateTime.now());
      // print(' 下一次更新时间 ${m.inMinutes} : ${m.inSeconds % 60}');
      if (mounted) {
        setState(() {
          _m2 = m.inMinutes;
          _s2 = m.inSeconds % 60;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_s == 0 && _m == 0 && _h == 0) return Container();
    if (widget.builderTurn != null) {
      return widget.builderTurn!(_m2, _s2);
    }
    if (widget.builder != null) {
      return widget.builder!(_h, _m, _s);
    }
    return Container();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}
