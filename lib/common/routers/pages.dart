import 'package:get/get.dart';
import 'package:let_chat/common/routers/names.dart';
import 'package:let_chat/common/routers/observer.dart';
import 'package:let_chat/pages/index.dart';

class RoutePages {
  static final RouteObservers routeObservers = RouteObservers();
  static List<String> history = [];

  static List<GetPage> list = [
    
      GetPage(
        name: RouteNames.blogBlogIndex,
        page: () => const BlogIndexPage(),
      ),
      GetPage(
        name: RouteNames.blogPost,
        page: () => const PostPage(),
      ),
      GetPage(
        name: RouteNames.chatChat,
        page: () => const ChatPage(),
      ),
      GetPage(
        name: RouteNames.chatChatFindUser,
        page: () => const ChatFindUserPage(),
      ),
      GetPage(
        name: RouteNames.chatChatIndex,
        page: () => const ChatIndexPage(),
      ),
      GetPage(
        name: RouteNames.courseCourseIndex,
        page: () => const CourseIndexPage(),
      ),
      GetPage(
        name: RouteNames.courseDetail,
        page: () => const DetailPage(),
      ),
      GetPage(
        name: RouteNames.courseLearn,
        page: () => const LearnPage(),
      ),
      GetPage(
        name: RouteNames.messageMessage,
        page: () => const MessagePage(),
      ),
      GetPage(
        name: RouteNames.messageMessageIndex,
        page: () => const MessageIndexPage(),
      ),
      GetPage(
        name: RouteNames.myChangeEmail,
        page: () => const ChangeEmailPage(),
      ),
      GetPage(
        name: RouteNames.myChangePwd,
        page: () => const ChangePwdPage(),
      ),
      GetPage(
        name: RouteNames.myLanguage,
        page: () => const LanguagePage(),
      ),
      GetPage(
        name: RouteNames.myMyIndex,
        page: () => const MyIndexPage(),
      ),
      GetPage(
        name: RouteNames.myProfile,
        page: () => const ProfilePage(),
      ),
      GetPage(
        name: RouteNames.mySubscribe,
        page: () => const SubscribePage(),
      ),
      GetPage(
        name: RouteNames.myTheme,
        page: () => const ThemePage(),
      ),
      GetPage(
        name: RouteNames.stylesStyleIndex,
        page: () => const StyleIndexPage(),
      ),
      GetPage(
        name: RouteNames.systemFindpwdPin,
        page: () => const FindpwdPinPage(),
      ),
      GetPage(
        name: RouteNames.systemFindPwd,
        page: () => const FindPwdPage(),
      ),
      GetPage(
        name: RouteNames.systemLogin,
        page: () => const LoginPage(),
      ),
      GetPage(
        name: RouteNames.systemMain,
        page: () => const MainPage(),
      ),
      GetPage(
        name: RouteNames.systemRegister,
        page: () => const RegisterPage(),
      ),
      GetPage(
        name: RouteNames.systemRegisterPin,
        page: () => const RegisterPinPage(),
      ),
      GetPage(
        name: RouteNames.systemSplash,
        page: () => const SplashPage(),
      ),
      GetPage(
        name: RouteNames.systemUserAgreement,
        page: () => const UserAgreementPage(),
      ),
      GetPage(
        name: RouteNames.systemWelcome,
        page: () => const WelcomePage(),
      ),
  ];
}
