class LeaderList {
  const LeaderList(
      {required this.image, required this.name, required this.designation});

  final String image;
  final String name;
  final String designation;
}

const List<LeaderList> leadershipData = <LeaderList>[
  LeaderList(
    image: 'images/deepak.png',
     name: 'DEEPAK MATHUR',
    designation: 'Founder and Designated Partner',
  ),
  LeaderList(
    image: 'images/chandrakant.jpg',
      name: 'CHANDRAKANT DOLLIN',
    designation: 'Chief Executive Officer(CEO)',
  ),
  LeaderList(
    image: 'images/Shailesh.png',
     name: 'SHAILESH AMDEKAR',
    designation: 'Consultant Strategic Business Partner',
  ),
  LeaderList(
    image: 'images/Rajesh-Kanade.png',
     name: 'RAJESH KANADE',
    designation: 'Chief Technical Officer',
  ),
];
