import 'package:flutteruimediaapp/friends.dart';

class Post {
   Friend friend;
   String imageUrl;
   String timePosted;
   String description;
   String comment;
   String share;

  Post(
      {this.description,
      this.friend,
      this.imageUrl,
      this.timePosted,
      this.comment,
      this.share});
}

List<Post> posts = [
  Post(
      friend:  Friend(
          name: 'Thomas',
          imageUrl: 'assets/images/profile/image01.jpg'
      ),
      imageUrl: 'assets/images/posts/1.jpg',
      timePosted: '2 hour ago',
      share: '20',
      comment: '26',
      description:
          'an example of how to create a Github Search Application and share code between Flutter and AngularDart.'
  ),
  Post(
      friend: Friend(
          name: 'Alex',
          imageUrl: 'assets/images/profile/image02.jpg'
      ),
      imageUrl: 'assets/images/posts/2.jpg',
      timePosted: '2 hour ago',
      share: '20',
      comment: '26',
      description:
      'an example of how to create a Github Search Application and share code between Flutter and AngularDart.'
  ),
  Post(
      friend: Friend(
          name: 'Json',
          imageUrl: 'assets/images/profile/image03.jpg'
      ),
      imageUrl: 'assets/images/posts/3.jpg',
      timePosted: '2 hour ago',
      share: '20',
      comment: '26',
      description:
      'an example of how to create a Github Search Application and share code between Flutter and AngularDart.'
  ),
  Post(
      friend: Friend(
          name: 'John',
          imageUrl: 'assets/images/profile/image04.jpg'
      ),
      imageUrl: 'assets/images/posts/4.jpg',
      timePosted: '2 hour ago',
      share: '20',
      comment: '26',
      description:
      'an example of how to create a Github Search Application and share code between Flutter and AngularDart.'
  ),
  Post(
      friend: Friend(
          name: 'Affred',
          imageUrl: 'assets/images/profile/image05.jpg'
      ),
      imageUrl: 'assets/images/posts/1.jpg',
      timePosted: '2 hour ago',
      share: '20',
      comment: '26',
      description:
      'an example of how to create a Github Search Application and share code between Flutter and AngularDart.'
  ),
  Post(
      friend: Friend(
          name: 'Tokyo',
          imageUrl: 'assets/images/profile/image06.jpg'
      ),
      imageUrl: 'assets/images/posts/2.jpg',
      timePosted: '2 hour ago',
      share: '20',
      comment: '26',
      description:
      'an example of how to create a Github Search Application and share code between Flutter and AngularDart.'
  ),
  Post(
      friend: Friend(
          name: 'Rio',
          imageUrl: 'assets/images/profile/image07.jpg'
      ),
      imageUrl: 'assets/images/posts/3.jpg',
      timePosted: '2 hour ago',
      share: '20',
      comment: '26',
      description:
      'an example of how to create a Github Search Application and share code between Flutter and AngularDart.'
  ),
];
