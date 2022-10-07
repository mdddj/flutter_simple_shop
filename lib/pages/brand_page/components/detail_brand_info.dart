import 'package:dataoke_sdk/model/brand_detail_result.dart';
import 'package:flutter/material.dart';
import '../../../common/utils.dart';
import '../../../util/image_util.dart';

/// 品牌信息卡片
class BrandDetailView extends StatelessWidget {
  final BrandDetail brandDetailModel;

  const BrandDetailView(
      {Key? key, required this.brandDetailModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _biuldLogo(context),
          utils.widgetUtils.marginTop(),
          Text(brandDetailModel.brandDesc!)
        ],
      ),
    );
  }

  Widget _buildName(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          brandDetailModel.brandName!,
          style: const TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 12,),
        InkWell(onTap:()=> showInfo(context),child: Icon(Icons.info_outline_rounded,color: Colors.black.withOpacity(.5),size: 15,),)
      ],
    );
  }

  Widget _biuldLogo(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(55),
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade200)
          ),
          child: Image.network(
            MImageUtils.magesProcessor(brandDetailModel.brandLogo!),
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 12,),
        _buildName(context)
      ],
    );
  }

  void showInfo(BuildContext context){
    showDialog(context: context,builder: (context){
      return AlertDialog(
        title: const Text('关于品牌'),
        content: Text(brandDetailModel.brandDesc!),
      );
    });
  }
}
