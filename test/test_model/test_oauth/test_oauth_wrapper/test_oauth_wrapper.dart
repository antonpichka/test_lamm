import 'package:test/test.dart';
import 'package:test_lamm/model/oauth/oauth_wrapper/oauth_wrapper.dart';

void main() {
  test("createModel", () {
    final oAuthWrapper = OAuthWrapper([
      "e6dfa7a8-cf9b-11ef-9cd2-0242ac120002",
      "f4588c6a-cf9b-11ef-9cd2-0242ac120002",
      DateTime.fromMillisecondsSinceEpoch(1736516582),
      "Discord",
      "5yXh46WqZ9grY7urxMlbypoSGa3KbifcUBrtTbrmaJVvO1ImD8xfB8uq6vHi0c8oofzkuz8dYe1BS93kgwArjfgzQjD6icQ2cHVTi6YbzJ1gOuz12Llij0qPcwbgGPlgOKRub2RGfoGcQiBiUtRPGpAmGm1lQDqrVTmgWE9e4KjqJIA84ghL6bDPDau5s7DAKmC7srOhks45lFd653RmS4xDMiyssAki7yRMw0HKQku7BrEkqODDRPKTmCco33DaSx6pl3XETIvofBkY4wSMUpjiT7W5WeCA5xbXba6UA7MGChlxcAteJDXXi00gihmp7c4McOAkaDRBtOJUxXr0IfUmEXd6IcPoqRDh24jzpA9q2JzFX7C2mqRJiMZRPQMV8jTpvMdgbkPPQXR74lCS3U6LaS8o107tWGOjpvPHdD0oFwrzYVYhYV5Yjtg8jEeT2WhIouLMLPZtj0WDmKiSjaQH1XTaLhi40Zlf8CeO0wli6hmJMzXZlGzdrVfUha3w",
      "Bearer",
      DateTime.fromMillisecondsSinceEpoch(1736516582),
    ]);
    final createModel = oAuthWrapper.createModel();
    expect('OAuth(uniqueId: e6dfa7a8-cf9b-11ef-9cd2-0242ac120002, user: User(uniqueId: f4588c6a-cf9b-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), accessToken: 5yXh46WqZ9grY7urxMlbypoSGa3KbifcUBrtTbrmaJVvO1ImD8xfB8uq6vHi0c8oofzkuz8dYe1BS93kgwArjfgzQjD6icQ2cHVTi6YbzJ1gOuz12Llij0qPcwbgGPlgOKRub2RGfoGcQiBiUtRPGpAmGm1lQDqrVTmgWE9e4KjqJIA84ghL6bDPDau5s7DAKmC7srOhks45lFd653RmS4xDMiyssAki7yRMw0HKQku7BrEkqODDRPKTmCco33DaSx6pl3XETIvofBkY4wSMUpjiT7W5WeCA5xbXba6UA7MGChlxcAteJDXXi00gihmp7c4McOAkaDRBtOJUxXr0IfUmEXd6IcPoqRDh24jzpA9q2JzFX7C2mqRJiMZRPQMV8jTpvMdgbkPPQXR74lCS3U6LaS8o107tWGOjpvPHdD0oFwrzYVYhYV5Yjtg8jEeT2WhIouLMLPZtj0WDmKiSjaQH1XTaLhi40Zlf8CeO0wli6hmJMzXZlGzdrVfUha3w, tokenType: Bearer, expiresIn: 1970-01-21 05:21:56.582)', createModel.toString());
  });
}