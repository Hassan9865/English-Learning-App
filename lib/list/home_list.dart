class ProfileList {
  final String title;
  final String subtitle;
  final String image;

  ProfileList({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

final List<ProfileList> profilelist = [
  ProfileList(
      title: "Dr Hassan ",
      subtitle: "Heart Specialist",
      image: 'assets/images/pic1.jpg'),
  ProfileList(
      title: "Dr Haseeb ",
      subtitle: "Orthopedic",
      image: 'assets/images/pic2.png'),
  ProfileList(
      title: "Dr Hashir ",
      subtitle: "Bone Specialist",
      image: 'assets/images/pic3.jpg'),
  ProfileList(
    title: "Dr Saad ",
    subtitle: "Eye Specialist",
    image: 'assets/images/pic4.jpg',
  ),
  ProfileList(
      title: "Dr Bilal ",
      subtitle: "Heart Specialist",
      image: 'assets/images/pic2.png'),
  ProfileList(
      title: "Dr Bilal ",
      subtitle: "Heart Specialist",
      image: 'assets/images/pic2.png'),
];
