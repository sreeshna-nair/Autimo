class Itemdata {
  final String name;
  final String address;
  Itemdata({required this.name, required this.address});
}

List<Itemdata> itemlist = [
  Itemdata(name: "1", address: "assets/octo.svg"),
  Itemdata(name: "2", address: "assets/shark.svg"),
  Itemdata(name: "3", address: "assets/whale.svg")
];
