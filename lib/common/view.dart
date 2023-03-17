import 'package:dataoke_sdk/model/category.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../freezed/application.dart';
import '../index.dart';

part 'view.freezed.dart';

///启动参数
@freezed
class ApplocationContext with _$ApplocationContext {
  const factory ApplocationContext(BuildContext context, WidgetRef ref) = _ApplocationContext;
}

/// app全局模型
@freezed
class ApplicationModel with _$ApplicationModel {
  const factory ApplicationModel({
    required BuildContext context,
    required WidgetRef ref,
    required FavoritesRepository favoritesRepository,
    @Default(IListConst([])) IList<Category> categorys,
  }) = _ApplicationModel;
}

ApplicationModel builderDefaultApplication(ApplocationContext ctx) {
  return ApplicationModel(context: ctx.context, ref: ctx.ref, favoritesRepository: FavoritesRepository());
}


extension ApplicationModelEx on ApplicationModel {
  IList<Category> get watchCategory => ref.watch(categoryRiverpod.select((value) => value.categorys));
}

///自定义封装view
abstract class View extends ConsumerWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ctx = ApplocationContext(context, ref);
    final applicationModel = ref.read(application(ctx)).value ?? builderDefaultApplication(ctx);
    return renderView(context, applicationModel);
  }

  Widget renderView(BuildContext context, ApplicationModel appCore);
}

/// app启动模块
abstract class ApplicationWidget extends ConsumerWidget {
  const ApplicationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ctx = ApplocationContext(context, ref);
    return ref
        .watch(application(ctx))
        .when(data: buildApplication, error: (e, s) => buildErrorWidget(e, s, ref), loading: () => buildInitLoadingWidget(ref));
  }

  Widget buildErrorWidget(Object e, Object s, WidgetRef ref);

  Widget buildInitLoadingWidget(WidgetRef ref);

  Widget buildApplication(ApplicationModel applicationModel);
}
