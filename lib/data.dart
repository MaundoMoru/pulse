import 'package:faker/faker.dart';
import 'package:pulse/model/bookmark.dart';
import 'package:pulse/model/comment.dart';
import 'package:pulse/model/feed.dart';
import 'package:pulse/model/user.dart';
import 'package:pulse/model/vote.dart';
import 'package:uuid/uuid.dart';

List<User> users = [
  User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlSWIZWPwuzKo-7gq6dnakzUoDKAwH5CTpCA&usqp=CAU",
      bio: 'Custom',
      isOnline: false,
      hours: "2 h"),
  User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYhHrDuMJskjWF6QMVprl_-mpfjygsDHz0GYIPmI9uyvPSvGeMNWkssUMiKG9mtOkdbnM&usqp=CAU",
      bio: 'Custom',
      isOnline: false,
      hours: "10 h"),
  User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHUlDTxunSixp8klsBffb2Wkq2o5lNnvi9CA&usqp=CAU",
      bio: 'Custom',
      isOnline: true,
      hours: "2 m"),
  User(
    name: faker.person.name(),
    image: "",
    bio: 'Custom',
    isOnline: false,
    hours: "4 h",
  ),
  User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT72acw8ekcmCJXlz-40D5amGIXhmDyhdxoVw&usqp=CAU",
      bio: 'Custom',
      isOnline: false,
      hours: "3 h"),
  User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI0FjbLgtyHBxM04F2w6WHAEvxc9Kw-qtiPQ&usqp=CAU",
      bio: 'Custom',
      isOnline: true,
      hours: "1 h"),
  User(
      name: faker.person.name(),
      image: "",
      bio: 'Custom',
      isOnline: false,
      hours: "3 s"),
  User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk4WQlNIAH5B_K7qzaZsYK77rT4C1Hz79jxg&usqp=CAU",
      bio: 'Custom',
      isOnline: false,
      hours: "2h"),
  User(
      name: faker.person.name(),
      image: "",
      bio: 'Custom',
      isOnline: false,
      hours: "2h"),
];

List<Feed> feeds = [
  Feed(
    id: const Uuid().v4(),
    user: User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk4WQlNIAH5B_K7qzaZsYK77rT4C1Hz79jxg&usqp=CAU",
    ),
    title: faker.lorem.sentence(),
    description: faker.lorem.sentence(),
    image: '',
    vote: [
      Vote(userId: 1, vote: false),
      Vote(userId: 3, vote: true),
      Vote(userId: 4, vote: false),
      Vote(userId: 6, vote: true),
    ],
    bookmark: [
      Bookmark(userId: 1, bookmark: true),
      Bookmark(userId: 2, bookmark: true),
      Bookmark(userId: 5, bookmark: true),
    ],
    time: '2 h',
  ),
  Feed(
    id: const Uuid().v4(),
    user: User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHUlDTxunSixp8klsBffb2Wkq2o5lNnvi9CA&usqp=CAU",
    ),
    title: faker.lorem.sentence(),
    description: faker.lorem.sentence(),
    image: '',
    vote: [
      Vote(userId: 3, vote: true),
      Vote(userId: 1, vote: false),
      Vote(userId: 6, vote: true),
    ],
    bookmark: [
      Bookmark(userId: 2, bookmark: true),
      Bookmark(userId: 5, bookmark: true),
    ],
    time: '2 h',
  ),
  Feed(
    id: const Uuid().v4(),
    user: User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPi0_c2U7QA0RtMO1sa8n1RVW55ZwBPizOLA&usqp=CAU",
    ),
    title: faker.lorem.sentence(),
    description: faker.lorem.sentence(),
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX5t0-jrlTIKoPlwW8wleQRPrxIDugFE9nNwSU3103P-4UaJG-lmUBv-7wW5t65QkzXp8&usqp=CAU',
    vote: [
      Vote(userId: 3, vote: true),
      Vote(userId: 4, vote: false),
      Vote(userId: 6, vote: true),
    ],
    bookmark: [
      Bookmark(userId: 1, bookmark: true),
      Bookmark(userId: 5, bookmark: true),
    ],
    time: '2 h',
  ),
  Feed(
    id: const Uuid().v4(),
    user: User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_lB0zHrt60hoQLrfN_6yRD38TDrxrhgsw1Q&usqp=CAU",
    ),
    title: faker.lorem.sentence(),
    description: faker.lorem.sentence(),
    image: '',
    vote: [
      Vote(userId: 3, vote: true),
      Vote(userId: 4, vote: false),
      Vote(userId: 6, vote: true),
    ],
    bookmark: [
      Bookmark(userId: 2, bookmark: true),
      Bookmark(userId: 5, bookmark: true),
    ],
    time: '2 h',
  ),
  Feed(
    id: const Uuid().v4(),
    user: User(
      name: faker.person.name(),
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI0FjbLgtyHBxM04F2w6WHAEvxc9Kw-qtiPQ&usqp=CAU",
    ),
    title: faker.lorem.sentence(),
    description: faker.lorem.sentence(),
    image: '',
    vote: [
      Vote(userId: 1, vote: true),
    ],
    bookmark: [
      Bookmark(userId: 2, bookmark: true),
      Bookmark(userId: 5, bookmark: true),
    ],
    time: '2 h',
  ),
];

List<Comment> comments = [
  Comment(
    id: const Uuid().v4(),
    user: User(
      name: faker.person.name(),
      image:
          'https://as1.ftcdn.net/v2/jpg/02/96/20/92/1000_F_296209218_27Eo8NhwL9kPrRCtcjnxiO0SBVMHHtaA.jpg',
    ),
    text: 'This is a comment',
    replies: [
      Comment(
        id: const Uuid().v4(),
        user: User(
          name: faker.person.name(),
          image: '',
        ),
        text: 'Reply 1.1',
        replies: [
          Comment(
            id: const Uuid().v4(),
            user: User(
              name: faker.person.name(),
              image: '',
            ),
            text: 'Reply 1.1.1',
            replies: [],
          ),
          Comment(
            id: const Uuid().v4(),
            user: User(
              name: faker.person.name(),
              image: '',
            ),
            text: 'Reply 1.1.2',
            replies: [],
          ),
        ],
      ),
      Comment(
        id: const Uuid().v4(),
        user: User(
          name: faker.person.name(),
          image: '',
        ),
        text: 'Reply 1.2',
        replies: [],
      ),
    ],
  ),
  Comment(
    id: const Uuid().v4(),
    user: User(
      name: faker.person.name(),
      image: '',
    ),
    text: 'Top-level comment 2',
    replies: [
      Comment(
        id: const Uuid().v4(),
        user: User(
          name: faker.person.name(),
          image: '',
        ),
        text: 'Reply 2.1',
        replies: [],
      ),
      Comment(
        id: const Uuid().v4(),
        user: User(
          name: faker.person.name(),
          image: '',
        ),
        text: 'Reply 2.2',
        replies: [
          Comment(
            id: const Uuid().v4(),
            user: User(
              name: faker.person.name(),
              image: '',
            ),
            text: 'Reply 2.2.1',
            replies: [],
          ),
        ],
      ),
    ],
  ),
  Comment(
    id: const Uuid().v4(),
    user: User(
      name: faker.person.name(),
      image:
          'https://as1.ftcdn.net/v2/jpg/02/96/20/92/1000_F_296209218_27Eo8NhwL9kPrRCtcjnxiO0SBVMHHtaA.jpg',
    ),
    text: 'Top-level comment 3',
    replies: [],
  ),
  Comment(
    id: const Uuid().v4(),
    user: User(
      name: faker.person.name(),
      image:
          'https://as1.ftcdn.net/v2/jpg/02/96/20/92/1000_F_296209218_27Eo8NhwL9kPrRCtcjnxiO0SBVMHHtaA.jpg',
    ),
    text: 'Top-level comment 4',
    replies: [],
  ),
];
