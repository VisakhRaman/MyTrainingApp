class CourseDetailsModel {
  String courseDate;
  String courseTime;
  String courseAddress;
  String courseAvailability;
  String courseTitle;
  String courseInstructor;
  String courseInstructorImage;
  String courseSummary;

  CourseDetailsModel(
      {this.courseDate,
      this.courseTime,
      this.courseAddress,
      this.courseAvailability,
      this.courseTitle,
      this.courseInstructor,
      this.courseInstructorImage,
      this.courseSummary});
}

List<CourseDetailsModel> courseDetailsData = [
  CourseDetailsModel(
      courseAddress: 'West Des Moines, IA',
      courseAvailability: 'Early Bird!',
      courseDate: 'Oct 30 - 31',
      courseInstructor: 'Archie Lawson',
      courseInstructorImage: 'assets/imageOne.jpg',
      courseTime: '9:00 - 12:00',
      courseTitle: 'Scrum Master',
      courseSummary:
          'The scrum master is the person on the team who is responsible for managing the process. They are not involved in the decision-making, but act as a lodestar to guide the team through the scrum process with their experience and expertise.'),
  CourseDetailsModel(
      courseAddress: 'Windsor Heights, IA',
      courseAvailability: 'Filling Fast!',
      courseDate: 'Jun 3 - 5',
      courseInstructor: 'Bertha Simpson',
      courseInstructorImage: 'assets/imageTwo.jpg',
      courseTime: '10:00 - 13:00',
      courseTitle: 'API & Web service',
      courseSummary:
          'APIs are application interfaces, meaning that one application is able to interact with another application in a standardized way. Web services are a type of API, which must be accessed through a network connection.'),
  CourseDetailsModel(
      courseAddress: 'Merle Hay, IA',
      courseAvailability: 'Available',
      courseDate: 'Feb 6 - 9',
      courseInstructor: 'Chad Lucas',
      courseInstructorImage: 'assets/imageThree.jpg',
      courseTime: '16:00 - 19:00',
      courseTitle: 'SQL Workshop',
      courseSummary:
          'SQL Developers are in charge of building and maintaining computer databases. Common work activities include ensuring data security, testing and troubleshooting databases, merging database information, and eliminating bugs.'),
  CourseDetailsModel(
      courseAddress: 'Urbandale, IA',
      courseAvailability: '3 seats left!',
      courseDate: 'Dec 19-24',
      courseInstructor: 'Sheryl Grant',
      courseInstructorImage: 'assets/imageFour.jpg',
      courseTime: '18:00 - 20:00',
      courseTitle: 'iOS Development',
      courseSummary:
          'Learning the programming languages Swift and Objective-C are necessities. You will need a Mac, and if you\'re developing for iOS, watchOS, or tvOS'),
  CourseDetailsModel(
      courseAddress: 'Otley, IA',
      courseAvailability: 'Sold out!',
      courseDate: 'Feb 14 - 17',
      courseInstructor: 'Melinda Duncan',
      courseInstructorImage: 'assets/imageFive.jpg',
      courseTime: '9:00 - 12:00',
      courseTitle: 'Silicon chip Config',
      courseSummary:
          'A computer chip is a tiny piece of material (usually made of silicon), that contains a complex electronic circuit. The circuit on a computer chip, sometimes called an integrated circuit, is made up of electronic components built into the chip'),
];
