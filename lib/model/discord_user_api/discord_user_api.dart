import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DiscordUserAPI extends BaseModel {
  final String id;
  final String username;
  final String discriminator;
  final String avatar;
  final bool verified;
  final String email;
  final int flags;
  final String banner;
  final int accentColor;
  final int premiumType;
  final int publicFlags;

  const DiscordUserAPI(this.id, this.username, this.discriminator, this.avatar, this.verified, this.email, this.flags, this.banner, this.accentColor, this.premiumType, this.publicFlags) : super(id);

  @override
  DiscordUserAPI clone() => DiscordUserAPI(id, username, discriminator, avatar, verified, email, flags, banner, accentColor, premiumType, publicFlags);

  @override
  String toString() {
    return "DiscordUserAPI(id: $id, username: $username, discriminator: $discriminator, avatar: $avatar, verified: $verified, email: $email, flags: $flags, banner: $banner, accentColor: $accentColor, premiumType: $premiumType, publicFlags: $publicFlags)";
  }
}