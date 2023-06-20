part of constant;

BoxShadow boxShaow = const BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.3),
    offset: Offset(0.5, 0.5), //阴影xy轴偏移量
    blurRadius: 3.0, //阴影模糊程度
    spreadRadius: 1 //阴影扩散程度
    );

/// 首页顶部分类的高度
const kHomeCateTabHeight = 35.0;

// 默认边距
const kDefaultPadding = 8.0;

// 圆角
const kDefaultRadius = 8.0;
