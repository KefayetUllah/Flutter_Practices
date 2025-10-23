class Travel {
  final String id;
  final String place;
  final String img;

  Travel(this.id, this.place, this.img);

  static List<Travel> travelinfo() {
    return [
      Travel("01", "Cox's Bazaar", "images/Place1.jpg"),
      Travel("02", "Saint Martin", "images/Place2.jpg"),
      Travel("03", "Sitakunda", "images/Place3.jpg"),
      Travel("04", "HatirJheel", "images/Place4.jpg"),
    ];
  }

  static List<Travel> mostPopularTravel() {
    return [
      Travel("Cox's Bazaar", "Chittagong", "images/Place1.jpg"),
      Travel("Saint Martin", "Saint Martin", "images/Place2.jpg"),
      Travel("Sitakunda", "Sitakunda", "images/Place3.jpg"),
      Travel("Hatirjheel", "Dhaka", "images/Place4.jpg"),
    ];
  }
}
