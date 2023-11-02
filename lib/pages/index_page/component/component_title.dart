part of '../../index.dart';

class ComponentTitle extends StatelessWidget {
  final String title;
  final double height;
  final VoidCallback? onTap;

  const ComponentTitle({super.key, required this.title, required this.height, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
            onTap: onTap,
            child: const Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
