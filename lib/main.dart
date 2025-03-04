import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:let_chat/common/index.dart';
import 'package:let_chat/global.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) => RefreshConfiguration(
          headerBuilder: () => ClassicHeader(),
          footerBuilder: () => ClassicFooter(),
          headerTriggerDistance: 80,
          maxOverScrollExtent: 100,
          maxUnderScrollExtent: 0,
          footerTriggerDistance: 80,
          enableScrollWhenRefreshCompleted: true,
          enableLoadingWhenFailed: true,
          hideFooterWhenNotFull: true,
          enableBallisticLoad: true,
          child: OverlaySupport.global(
              child: GetMaterialApp(
                  title: 'LetChat',
                  theme: ThemeData(
                    // 主题配置
                    primarySwatch: Colors.blue,
                  ),
                  initialRoute: RouteNames.systemSplash, // 初始化路由
                  getPages: RoutePages.list, // 路由配置
                  debugShowCheckedModeBanner: true, // 显示调试模式
                  navigatorObservers: [RoutePages.routeObservers], // 路由监听
                  translations: Translation(), // 国际化翻译
                  localizationsDelegates:
                      Translation.localizationsDelegates, // 国际化代理配置
                  supportedLocales: Translation.supportedLocales, // 支持的语言
                  locale: const Locale('zh', 'CN'), // 当前语言
                  fallbackLocale: Translation.fallbackLocale, // 默认语言
                  builder: (context, widget) {
                    widget = EasyLoading.init()(context, widget); // Loading 初始化
                    return MediaQuery(
                        data: MediaQuery.of(context)
                            .copyWith(textScaler: TextScaler.linear(1.0)),
                        child: widget);
                  }
        ))
      ),
    );
  }
}
