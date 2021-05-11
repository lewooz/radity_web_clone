class TechnologyStackModel implements Comparable{
  String name, type, imageLink;
  bool isBig;

  TechnologyStackModel({required this.name, required this.type, required this.imageLink, required this.isBig});

  @override
  int compareTo(other) {
    if(this.isBig && !other.isBig)
      return -1;
    if(!this.isBig && other.isBig)
      return 1;
    return 0;
  }
}