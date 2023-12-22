class Food{
  final String thaifood;
  final String enfood;
  final double price;
  final String value;

  Food({required this.thaifood, required this.enfood, required this.price, required this.value});

  static List<Food> getFood(){
    return[
    Food(thaifood: 'ต้มยำ', enfood: 'Tom Yum', price: 150, value: 'ต้มยำ'),
    Food(thaifood: 'คั่วกลิ้ง', enfood: 'Rolling roasting', price: 100, value: 'คั่วกลิ้ง'),
    Food(thaifood: 'ผัดขี้เมา', enfood: 'Fried drunken', price: 110, value: 'ผัดขี้เมา'),
    Food(thaifood: 'ผัดเครื่องแกง', enfood: 'Stir fried curry', price: 90, value: 'ผัดเครื่องแกง'),
    Food(thaifood: 'ผัดผัก', enfood: 'Fried vegetables', price: 70, value: 'ผัดผัก'),
    Food(thaifood: 'ผัดกระเพรา', enfood: 'Pad Kra Basil', price: 90, value: 'ผัดกระเพรา'),
    ];
    
  }

}