import 'package:movie/models/github_release.dart';
import 'package:movie/models/response_model.dart';

import 'request.dart';

class GithubApi {
  Request _http = Request('https://api.github.com');

  Future<ResponseModel<GithubReleaseModel>> checkUpdate() async {
    String _parma = '/repos/o1298098/flutter-movie/releases/latest';
    final _result = await _http.request<GithubReleaseModel>(_parma);
    return _result;
  }
}
