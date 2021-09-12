class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      title: 'assets/images/logo.png',
      image: 'assets/images/one.jpeg',
      description:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "),
  OnboardingContent(
      title: 'assets/images/logo.png',
      image: 'assets/images/two.jpeg',
      description:
          "simply dummy text of the  printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "),
  OnboardingContent(
      title: 'assets/images/logo.png',
      image: 'assets/images/three.jpeg',
      description:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "),
];
