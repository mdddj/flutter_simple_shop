part of pages;

class UserHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.line_axis,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {
              context.push(pagerUtil.setting.routername);
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            )),
        const SizedBox(width: 12)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
