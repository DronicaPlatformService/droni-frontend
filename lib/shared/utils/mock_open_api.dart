import 'dart:math';
import 'package:chopper/chopper.dart';
import 'package:droni/api/generated/openAPI.swagger.dart';
import 'package:droni/shared/utils/mock_response.dart';
import 'package:faker/faker.dart';

class MockOpenAPI implements OpenAPI {
  Duration delay = const Duration(seconds: 2);

  @override
  final Type definitionType = OpenAPI;

  @override
  Future<Response<List<DroniFile>>> homeBannerGet() async {
    await Future.delayed(delay);

    const bannerBaseUrl = 'https://picsum.photos/id';
    final List<DroniFile> banners = [];

    for (var i = 0; i < 5; i++) {
      final banner = DroniFile(
        id: i + 1,
        name: 'banner ${i + 1}',
        path: '$bannerBaseUrl/${Random().nextInt(100) + 1}/1200/500',
      );

      banners.add(banner);
    }

    final response = Response(MockResponse(), banners);

    return Future.value(response);
  }

  @override
  Future<Response<List<PilotProfile>>> homePopularPilotGet() async {
    await Future.delayed(delay);

    final List<PilotProfile> pilots = [];

    for (var i = 0; i < 5; i++) {
      var faker = Faker();
      var pilot = PilotProfile(
        expertId: i + 1,
        nickName: faker.internet.userName(),
        imageUrl:
            'https://randomuser.me/api/portraits/${Random().nextBool() ? '' : 'wo'}men/${Random().nextInt(100)}.jpg',
      );

      pilots.add(pilot);
    }

    final response = Response(
      MockResponse(),
      pilots,
    );

    return Future.value(response);
  }

  @override
  ChopperClient client = ChopperClient();

  @override
  Future<Response<List<ArticleSummaryResponse>>>
      articleDroneContentSummaryGet() async {
    await Future.delayed(delay);

    final List<ArticleSummaryResponse> list = [];

    for (var i = 0; i < 5; i++) {
      list.add(
        ArticleSummaryResponse(
          articleImageUri:
              'https://picsum.photos/id/${Random().nextInt(20)}/160/132',
          articleSubject: 'test',
        ),
      );
    }

    final response = Response(
      MockResponse(),
      list,
    );

    return Future.value(response);
  }

  @override
  Future<Response<List<ArticleSummaryResponse>>> articleHowToUseSummaryGet(
      {ArticleHowToUseSummaryGetArticleTarget? articleTarget}) async {
    await Future.delayed(delay);

    final List<ArticleSummaryResponse> list = [];

    for (var i = 0; i < 2; i++) {
      list.add(
        ArticleSummaryResponse(
          articleImageUri:
              'https://picsum.photos/id/${Random().nextInt(20)}/160/120',
          articleSubject: 'test',
        ),
      );
    }

    final response = Response(
      MockResponse(),
      list,
    );

    return Future.value(response);
  }

  @override
  Future<Response<List<PopularExpert>>> expertPopularGet() {
    // TODO: implement expertPopularGet
    throw UnimplementedError();
  }

  @override
  Future<Response<String>> expireTestGet() {
    // TODO: implement expireTestGet
    throw UnimplementedError();
  }

  @override
  Future<Response<TokenRefreshDto>> reissuePost(
      {required TokenRefreshDto? body}) {
    // TODO: implement reissuePost
    throw UnimplementedError();
  }

  @override
  Future<Response<String>> sucessTestGet() {
    // TODO: implement sucessTestGet
    throw UnimplementedError();
  }
}
