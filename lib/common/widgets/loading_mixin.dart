part of common;

mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  bool loadingState = false;

  String error = '';

  void setError(String msg) {
    if (mounted) {
      setState(() {
        error = msg;
      });
    }
  }

  void setLoading(bool value) {
    if (mounted) {
      setState(() {
        loadingState = value;
      });
    }
  }

  Widget errorMsgWidget() {
    return Center(
      child: Text(error),
    );
  }
}
