
class Interest {
  final String name;
  bool selected;

  Interest(this.name, {this.selected = false});

  void toggleSelected() {
    selected = !selected;
  }
}
