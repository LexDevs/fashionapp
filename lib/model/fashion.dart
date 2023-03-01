//Model to hold fashion data and define the contructor
class Fashion {
  //model variables
  final int id;
  final String url;
  final String name;
  final String location;
  final String description;
  bool isFavorite;

  //Constructor
  Fashion(this.id, this.url, this.name, this.location, this.description,
      this.isFavorite);

  //List of fashion data
  static List<Fashion> fashionList = [
    Fashion(
        1,
        'assets/img1.jpg',
        'Patrick',
        'Paris',
        'Ut et ex enim ea sint ex velit et et dolor deserunt nostrud non dolore. Fugiat minim veniam nostrud deserunt Lorem id. ',
        true),
    Fashion(
        2,
        'assets/img2.jpg',
        'Jane',
        'New York',
        'Proident labore et laboris do anim ut fugiat. Reprehenderit anim ipsum proident est. ',
        true),
    Fashion(
        3,
        'assets/img3.jpg',
        'Justin and Alison',
        'London',
        'Sint officia eiusmod commodo ea ipsum elit irure elit eu velit sunt minim ex adipisicing.',
        false),
    Fashion(4, 'assets/img4.jpg', 'Jacob', 'Brussels',
        'Fugiat excepteur nostrud commodo elit minim nisi.', true),
    Fashion(
        5,
        'assets/img5.jpg',
        'Nathan',
        'Paris',
        'Esse consectetur pariatur consectetur et esse esse incididunt qui reprehenderit sint ullamco aliquip do ea. ',
        true),
    Fashion(
        6,
        'assets/img6.jpg',
        'Thomas',
        'Tokyo',
        'Culpa eiusmod et excepteur eiusmod qui. Irure dolor nostrud ullamco adipisicing amet duis cillum adipisicing quis exercitation velit. ',
        false),
    Fashion(
        7,
        'assets/img7.jpg',
        'Ken',
        'Berlin',
        'Nulla ipsum amet in exercitation cupidatat sint ea sint. Dolor veniam excepteur consequat esse et.',
        true),
    Fashion(
        8,
        'assets/img8.jpg',
        'Madison',
        'Accra',
        'Proident nisi labore laboris aliquip proident excepteur veniam sunt esse labore incididunt id in consequat.',
        false),
  ];
}
