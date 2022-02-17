class Source {
  String name;
  String id;
  Source(this.name, this.id);

  factory Source.fromJSON(Map<String, dynamic> json) {
    return Source(json['name'], json['id'] ?? '');
  }
}
