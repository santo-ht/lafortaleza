import 'package:flutter/material.dart';

import '../models/menu_model.dart';

class MenuProvider with ChangeNotifier {
  List<MenuModel> menuList = [
    MenuModel(
      menuGroupId: 1,
      menuGroupName: 'Appetizers',
      menuList: [
        MenuList(
          menuId: 1,
          menuName: 'Fiesta Fortaleza',
          price: 22,
          quantity: 10,
          orderQuantity: 0,
        ),
        MenuList(
          menuId: 2,
          menuName: 'Guacamole',
          price: 12,
          quantity: 100,
          orderQuantity: 0,
        ),
        MenuList(
          menuId: 3,
          menuName: 'Nachos',
          price: 14,
          quantity: 100,
          orderQuantity: 0,
        ),
        MenuList(
          menuId: 4,
          menuName: 'Mini Tacos',
          price: 10,
          quantity: 100,
          orderQuantity: 0,
        ),
        MenuList(
          menuId: 5,
          menuName: 'Flautas',
          price: 15,
          quantity: 100,
          orderQuantity: 0,
        )
      ],
    ),
    MenuModel(
      menuGroupId: 2,
      menuGroupName: 'Soups',
      menuList: [
        MenuList(
          menuId: 6,
          menuName: 'Sopa Azteca',
          price: 10,
          quantity: 100,
          orderQuantity: 0,
        ),
        MenuList(
          menuId: 7,
          menuName: 'Pozole',
          price: 15,
          quantity: 100,
          orderQuantity: 0,
        )
      ],
    ),
    MenuModel(
      menuGroupId: 3,
      menuGroupName: 'Salads',
      menuList: [
        MenuList(
          menuId: 8,
          menuName: 'Ensalada Taco',
          price: 10,
          quantity: 100,
          orderQuantity: 0,
        ),
        MenuList(
          menuId: 9,
          menuName: 'Ensalada Southwest',
          price: 10,
          quantity: 100,
          orderQuantity: 0,
        )
      ],
    ),
    MenuModel(
      menuGroupId: 4,
      menuGroupName: 'Aca Los Tacos',
      menuList: [
        MenuList(
          menuId: 10,
          menuName: 'Tacos Gringas',
          price: 13,
          quantity: 100,
          orderQuantity: 0,
        ),
        MenuList(
          menuId: 11,
          menuName: 'Shrimp Tacos',
          price: 15,
          quantity: 100,
          orderQuantity: 0,
        )
      ],
    ),
    MenuModel(
      menuGroupId: 5,
      menuGroupName: 'Cemitas',
      menuList: [
        MenuList(
          menuId: 12,
          menuName: 'Mexicana',
          price: 12,
          quantity: 100,
          orderQuantity: 0,
        ),
        MenuList(
          menuId: 13,
          menuName: 'Cubana',
          price: 10,
          quantity: 100,
          orderQuantity: 0,
        )
      ],
    ),
    MenuModel(
      menuGroupId: 6,
      menuGroupName: 'Fan Favorites',
      menuList: [
        MenuList(
          menuId: 14,
          menuName: 'Chimi Changas',
          price: 15,
          quantity: 100,
          orderQuantity: 0,
        ),
        MenuList(
          menuId: 15,
          menuName: 'Fajitas',
          price: 20,
          quantity: 100,
          orderQuantity: 0,
        )
      ],
    ),
    MenuModel(
      menuGroupId: 7,
      menuGroupName: 'Kids',
      menuList: [
        MenuList(
          menuId: 16,
          menuName: 'Mini Burritos',
          price: 9,
          quantity: 100,
          orderQuantity: 0,
        ),
        MenuList(
          menuId: 16,
          menuName: 'Chiquilladas',
          price: 9,
          quantity: 100,
          orderQuantity: 0,
        )
      ],
    ),
  ];

  List<MenuModel> get fetchMenuList {
    return [...menuList];
  }
}
