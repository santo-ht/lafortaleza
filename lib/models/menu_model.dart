class MenuModel {
  int menuGroupId;
  String menuGroupName;
  List<MenuList> menuList;

  MenuModel({
    required this.menuGroupId,
    required this.menuGroupName,
    required this.menuList,
  });
}

class MenuList {
  int menuId;
  String menuName;
  int quantity;
  double price;
  int orderQuantity;
  MenuList({
    required this.price,
    required this.menuId,
    required this.menuName,
    required this.quantity,
    required this.orderQuantity,
  });
}
