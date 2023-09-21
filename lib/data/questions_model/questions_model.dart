

class Questions{
  final String id;
  final String title;
  final Map<String,bool> options;

  Questions({required this.title,required this.id,required this.options});



  @override
  String toString() {
    // TODO: implement toString
    return """
    id: $id
    title: $title
    options: $options
    """;
  }
}