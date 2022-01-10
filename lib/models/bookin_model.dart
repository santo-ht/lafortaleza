import 'menu_model.dart';

class BookingModel {
  List<MenuModel> menuModel;
  double totalAmount;
  int orderQuantity;

  BookingModel({
    required this.menuModel,
    required this.totalAmount,
    required this.orderQuantity,
  });
}
