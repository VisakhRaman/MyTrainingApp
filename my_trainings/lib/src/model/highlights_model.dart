class HighLightsModel {
  String topicTitle;
  String trainingAddress;
  String trainingPrice;
  String trainerImage;

  HighLightsModel(
      {this.topicTitle,
      this.trainingAddress,
      this.trainingPrice,
      this.trainerImage});
}

List<HighLightsModel> highLightsData = [
  HighLightsModel(
      topicTitle: 'Scrum Master',
      trainingAddress: 'West Des Moines, IA - 30 Oct - 31 Oct',
      trainingPrice: '\$825',
      trainerImage: 'assets/tutorImageOne.jpg'),
  HighLightsModel(
      topicTitle: 'API & Web service',
      trainingAddress: 'Windsor Heights, IA - 3 Jun - 5 Jun',
      trainingPrice: '\$750',
      trainerImage: 'assets/tutorImageTwo.png'),
  HighLightsModel(
      topicTitle: 'SQL Workshop',
      trainingAddress: 'Merle Hay, IA - 6 Feb - 9 Feb',
      trainingPrice: '\$350',
      trainerImage: 'assets/tutorImageThree.jpg'),
  HighLightsModel(
      topicTitle: 'iOS Development',
      trainingAddress: 'Urbandale, IA - 19 Dec-24 Dec',
      trainingPrice: '\$699',
      trainerImage: 'assets/tutorImageFour.jpg'),
  HighLightsModel(
      topicTitle: 'Silicon chip Config',
      trainingAddress: 'Otley, IA - 14 Feb-17 Feb',
      trainingPrice: '\$999',
      trainerImage: 'assets/tutorImageFive.jpg')
];
