import 'package:test/test.dart';
import 'package:test_lamm/model/discord_oauth/discord_oauth_wrapper/discord_oauth_wrapper.dart';

void main() {
  test("createModel", () {
    final discordOAuthWrapper = DiscordOAuthWrapper([
      "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
      "56df563a-d02c-11ef-9cd2-0242ac120002",
      DateTime.fromMillisecondsSinceEpoch(1736516582),
      "Discord",
      "6qrZcUqja7812RVdnEKjpzOL4CvHBFG",
      "Bearer",
      604800,
      "D43f5y0ahjqew82jZ4NViEr2YafMKhue",
      "identify"
    ]);
    final createModel = discordOAuthWrapper.createModel();
    expect('DiscordOAuth(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, user: User(uniqueId: 56df563a-d02c-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), accessToken: 6qrZcUqja7812RVdnEKjpzOL4CvHBFG, tokenType: Bearer, expiresIn: 604800, refreshToken: D43f5y0ahjqew82jZ4NViEr2YafMKhue, scope: identify)', createModel.toString());
  });
}