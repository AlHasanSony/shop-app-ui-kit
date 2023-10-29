/// This class is used in the [usercard_item_widget] screen.
class UsercardItemModel {
  UsercardItemModel({
    this.flowerText,
    this.indoorText,
    this.id,
  }) {
    flowerText = flowerText ?? "Office plant...";
    indoorText = indoorText ?? "Office";
    id = id ?? "";
  }

  String? flowerText;

  String? indoorText;

  String? id;
}
