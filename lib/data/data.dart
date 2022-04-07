enum Category { XIAOMI, IPHONE, SAMSUNG, HUAWEI }
enum Condition { Adoption, Disappear, Mating }

class Phone {

  String name;
  String location;
  String price;
  String distance;
  String condition;
  Category category;
  String imageUrl;
  bool favorite;
  bool newest;

  Phone(this.name, this.location,this.price, this.distance, this.condition, this.category, this.imageUrl, this.favorite, this.newest);

}

List<Phone> getPetList(){
  return <Phone>[
    Phone("Xiaomi 11T", "Hồ Chí Minh","14.560.000 VND", "22.5", "Sắp hết hàng", Category.XIAOMI, "assets/images/xiaomi_11t.png", true, true),
    Phone("Xiaomi 12", "Hà Nội","23.990.000 VND", "1760", "Còn hàng", Category.XIAOMI, "assets/images/xiaomi12.png", false, false),
    Phone("Xiaomi Redmi Note 11", "Đà Nẵng","4.560.000 VND", "855", "Hết hàng", Category.XIAOMI, "assets/images/xiaominote11.png", false, false),
    Phone("Xiaomi Redmi Note 10S", "Quảng Ngãi","10.560.000 VND", "735", "Hết hàng", Category.XIAOMI, "assets/images/xiaominote10s.png", true, true),
    Phone("Xiaomi Mi 11", "Hồ Chí Minh","18.990.000 VND", "22.2", "Còn hàng", Category.XIAOMI, "assets/images/xiaomimi11.png", true, false),
    Phone("Xiaomi 12 Pro", "Hồ Chí Minh","28.990.000 VND", "22.5", "Sắp hết hàng", Category.XIAOMI, "assets/images/xiaomimi12pro.png", false, false),


    Phone("IPhone 13", "Hồ Chí Minh","43.990.000 VND", "22.5", "Sắp hết hàng", Category.IPHONE, "assets/images/iphone13.png", true, true),
    Phone("IPhone 12", "Hồ Chí Minh","36.990.000 VND", "22.5", "Còn hàng", Category.IPHONE, "assets/images/iphone12.png", false, false),
    Phone("IPhone 11", "Hồ Chí Minh","29.990.000 VND", "22.5", "Hết hàng", Category.IPHONE, "assets/images/iphone11.png", false, false),
    Phone("IPhone X", "Đà Nẵng","18.990.000 VND", "855", "Sắp hết hàng", Category.IPHONE, "assets/images/iphonex.png", true, false),
    Phone("IPhone 8", "Quảng Ngãi","19.990.000 VND", "735", "Sắp hết hàng", Category.IPHONE, "assets/images/iphone8.png", false, false),
    Phone("IPhone 7", "Hà Nội","9.990.000 VND", "1760", "Còn hàng", Category.IPHONE, "assets/images/iphone7.png", true, false),

    Phone("Samsung Galaxy S22", "Hồ Chí Minh","22.990.000 VND", "22.5", "Sắp hết hàng", Category.SAMSUNG, "assets/images/samsungs22.png", true, true),
    Phone("Samsung Galaxy A52s", "Hồ Chí Minh","26.990.000 VND", "22.5", "Còn hàng", Category.SAMSUNG, "assets/images/samsunga52s.png", false, false),
    Phone("Samsung Galaxy Z Fold3", "Hồ Chí Minh","35.990.000 VND", "22.5", "Hết hàng", Category.SAMSUNG, "assets/images/samsungfold3.png", false, false),
    Phone("Samsung Galaxy S21", "Hồ Chí Minh","24.990.000 VND", "22.5", "Hết hàng", Category.SAMSUNG, "assets/images/samsungs21.png", true, true),
    Phone("Samsung Galaxy A53", "Hồ Chí Minh","8.990.000 VND", "22.5", "Sắp hết hàng", Category.SAMSUNG, "assets/images/samsunga53.png", true, false),
    Phone("Samsung Galaxy Note 20", "Hồ Chí Minh","20.990.000 VND", "22.5", "Sắp hết hàng", Category.SAMSUNG, "assets/images/samsungnote20.png", false, false),


    Phone("Huawei P30 Pro", "Hồ Chí Minh","28.990.000 VND", "22.5", "Sắp hết hàng", Category.HUAWEI, "assets/images/huaweip30.png", true, true),
    Phone("Huawei Y9", "Hồ Chí Minh","4.990.000 VND", "22.5", "Còn hàng", Category.HUAWEI, "assets/images/huaweiy9.png", false, false),
    Phone("Huawei Nova 2i", "Hồ Chí Minh","3.990.000 VND", "22.5", "Hết hàng", Category.HUAWEI, "assets/images/huawei2i.png", false, false),
    Phone("Huawei Mate 20 Pro", "Hồ Chí Minh","6.990.000 VND", "22.5", "Hết hàng", Category.HUAWEI, "assets/images/huaweimate20.png", true, true),
    Phone("Huawei P40 Pro", "Hồ Chí Minh","7.990.000 VND", "22.5", "Sắp hết hàng", Category.HUAWEI, "assets/images/huaweip40.png", true, false),
    Phone("Huawei Mate 30 Pro", "Hồ Chí Minh","24.990.000 VND", "22.5", "Sắp hết hàng", Category.HUAWEI, "assets/images/huaweimate30.png", false, false),
    Phone("Huawei Nova 3", "Hồ Chí Minh","8.990.000 VND", "22.5", "Còn hàng", Category.HUAWEI, "assets/images/huaweinova3.png", true, false),
  ];
}