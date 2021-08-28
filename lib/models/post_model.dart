import 'package:facebookclone/models/models.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String? imageUrl;
  final int likes;
  final int comments;
  final int shares;

  const Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.user == user &&
        other.caption == caption &&
        other.timeAgo == timeAgo &&
        other.imageUrl == imageUrl &&
        other.likes == likes &&
        other.comments == comments &&
        other.shares == shares;
  }

  @override
  int get hashCode {
    return user.hashCode ^
        caption.hashCode ^
        timeAgo.hashCode ^
        imageUrl.hashCode ^
        likes.hashCode ^
        comments.hashCode ^
        shares.hashCode;
  }

  @override
  String toString() {
    return 'Post(user: $user, caption: $caption, timeAgo: $timeAgo, imageUrl: $imageUrl, likes: $likes, comments: $comments, shares: $shares)';
  }
}
