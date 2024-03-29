part of '../../../index.dart';

//GitHub的展示小部件
class GithubWidget extends StatelessWidget {
  const GithubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '本项目已经开源,并且持续更新中,欢迎Start',
            style: context.textTheme.bodyLarge,
          ).marginOnly(bottom: 8),
          ElevatedButton(
              onPressed: () {
                shopGithubUrl.urlLinkTo();
              },
              child: const Text('GitHub地址'))
        ],
      ),
    );
  }
}
