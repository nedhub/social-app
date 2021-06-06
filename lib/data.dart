class User {
  final String givenName;
  final String familyName;
  final String imageUrl;

  const User({
    required this.givenName,
    required this.familyName,
    required this.imageUrl,
  });
}

const User currentUser = User(
  givenName: 'Marcus',
  familyName: 'Ng',
  imageUrl:
      'https://images.unsplash.com/photo-1559634759-a42fc4cea8ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=934&q=80',
);

const List<User> _allUsers = [
  User(
    givenName: 'Zara',
    familyName: 'Hughes',
    imageUrl:
        'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
  ),
  User(
    givenName: 'Kenton',
    familyName: 'Urqhart',
    imageUrl:
        'https://images.unsplash.com/photo-1554925434-08faa2f77c00?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=885&q=80',
  ),
  User(
    givenName: 'Denzel',
    familyName: 'Hoy',
    imageUrl:
        'https://images.unsplash.com/photo-1573733661659-e62cf0c7e055?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',
  ),
  User(
    givenName: 'Laticia',
    familyName: 'Branch',
    imageUrl:
        'https://images.unsplash.com/photo-1620281428428-bce2bf9ceee4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fGxpZ2h0JTIwc2tpbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  ),
  User(
    givenName: 'Hosanna',
    familyName: 'Reynolds',
    imageUrl:
        'https://images.unsplash.com/photo-1614968017289-459022d12033?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fGxpZ2h0JTIwc2tpbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  ),
  User(
    givenName: 'Shekeia',
    familyName: 'Wilcox',
    imageUrl:
        'https://images.unsplash.com/photo-1605046357055-e9a280471a46?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80',
  ),
  User(
    givenName: 'Max',
    familyName: 'Grant',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    givenName: 'Paul',
    familyName: 'Pinnock',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      givenName: 'Taylan',
      familyName: 'Sterling',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    givenName: 'James',
    familyName: 'Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    givenName: 'Jamaall',
    familyName: 'Jopp',
    imageUrl:
        'https://images.unsplash.com/photo-1618604500912-4c395720d25e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=930&q=80',
  ),
];

class Room {
  final String club;
  final String name;
  final String time;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

  const Room({
    required this.club,
    required this.name,
    this.time = '',
    this.speakers = const [],
    this.followedBySpeakers = const [],
    this.others = const [],
  });
}

const List<Room> upcomingRoomsList = [
  Room(
    club: 'Hello',
    name: 'We knew you would be back',
    time: '3:00 PM',
  ),
  Room(
    club: 'Welcome back!',
    name: 'Hows your day going?',
    time: '7:00 PM',
  ),
  Room(
    club: 'Glad to have you back',
    name: '😛😛😛😛',
    time: '9:00 PM',
  ),
];

final List<Room> roomsList = [
  Room(
    club: 'Testing 1',
    name: 'This is only a test',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'Testing 2',
    name: 'This is the second test so far',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'Testing 3',
    name: 'This is the third test ',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
];
