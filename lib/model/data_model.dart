class DataModel{
  final String title;
  final String subTitle;
  final String imageUrl;
  DataModel(
      this.title,
      this.subTitle,
      this.imageUrl);

  DataModel.changeToModel(Map jsonMap)
      :title=jsonMap['title'],
        subTitle=jsonMap['subTitle'],
        imageUrl=jsonMap['imageUrl'];

}