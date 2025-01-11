import 'package:test/test.dart';
import 'package:test_lamm/model/discord_oauth_api/discord_oauth_api_wrapper/list_discord_oauth_api_wrapper.dart';

void main() {
  test("createListModel", () {
    final listDiscordOAuthAPIWrapper = ListDiscordOAuthAPIWrapper([
      [
        "6qrZcUqja7812RVdnEKjpzOL4CvHBFG",
        "Bearer",
        604800,
        "D43f5y0ahjqew82jZ4NViEr2YafMKhue",
        "identify"
      ],
      [
        "6qrZcUqja7812RVdnEKjpzOL4CvHBFG",
        "Bearer",
        604800,
        "D43f5y0ahjqew82jZ4NViEr2YafMKhue",
        "identify"
      ]
    ]);
    final createListModel = listDiscordOAuthAPIWrapper.createListModel();
    expect('ListDiscordOAuthAPI(listModel: [\n'
        'DiscordOAuthAPI(accessToken: 6qrZcUqja7812RVdnEKjpzOL4CvHBFG, tokenType: Bearer, expiresIn: 604800, refreshToken: D43f5y0ahjqew82jZ4NViEr2YafMKhue, scope: identify),\n'
        'DiscordOAuthAPI(accessToken: 6qrZcUqja7812RVdnEKjpzOL4CvHBFG, tokenType: Bearer, expiresIn: 604800, refreshToken: D43f5y0ahjqew82jZ4NViEr2YafMKhue, scope: identify),\n'
        '])', createListModel.toString());
  });
}