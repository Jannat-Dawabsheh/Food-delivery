import 'dart:ffi';
class FoodItem{
  final String id;
  final String name;
  final String category;
  final String imgURL;
  final double price;
  final String estimatedTime;
  final int numberOfSales;
  final bool isFavorite;

  FoodItem( {
    required this.id, 
    required this.name, 
    required this.category, 
    required this.imgURL, 
    required this.price, 
    this.estimatedTime='30 Mins', 
    this.numberOfSales=2,
    this.isFavorite=false,
    });

    FoodItem copyWith({bool? isFavorite}){
      return FoodItem(
        id: id,
       name: name, 
       category: category, 
       imgURL: imgURL, 
       price: price,
       estimatedTime:estimatedTime,
       numberOfSales:numberOfSales,
       isFavorite: isFavorite ?? this.isFavorite,

       );
    }

}
    List<FoodItem> products=[
      FoodItem(id: '1', name: "Beef Burger", category: 'Burger', imgURL: 'https://cutewallpaper.org/24/hamburger-png/download-hamburger-free-png-transparent-image-and-clipart.png', price: 6.99),
      FoodItem(id: '2', name: "Beef Burger", category: 'Burger', imgURL: 'https://static.vecteezy.com/system/resources/previews/022/598/800/original/tasty-beef-burger-png.png', price: 7.99),
      FoodItem(id: '3', name: "Chicken Burger", category: 'Burger', imgURL: 'https://www.pngkit.com/png/full/217-2178359_tex-supreme-chicken-cheese-burger-png.png', price: 5.99),
      FoodItem(id: '4', name: "Chicken Burger", category: 'Burger', imgURL: 'https://www.pngkey.com/png/full/244-2445543_chicken-burger-chicken-cheese-burger-png.png', price: 4.99),
      FoodItem(id: '5', name: "Chicken Burger", category: 'Burger', imgURL: 'https://herfybd.com/assets/image/chicken-double-decker.png', price: 5.99),
      FoodItem(id: '6', name: "Chicken Pizza", category: 'Pizza', imgURL: 'https://static.vecteezy.com/system/resources/previews/024/108/111/original/tasty-bbq-chicken-cheese-pizza-isolated-on-transparent-background-png.png', price: 6.99),
      FoodItem(id: '7', name: "Margarita Pizza", category: 'Pizza', imgURL: 'https://pizza-brew.com/wp-content/uploads/2018/11/pp.png', price: 5.99),
      FoodItem(id: '8', name: "Lazania", category: 'Pasta', imgURL: 'https://static.wixstatic.com/media/183701_1fdc6c4b82964a8085e739e3d9aa9bd0~mv2.png/v1/fill/w_640,h_410,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/183701_1fdc6c4b82964a8085e739e3d9aa9bd0~mv2.png', price: 7.99),
      FoodItem(id: '9', name: "koshary", category: 'Pasta', imgURL: 'https://static.wixstatic.com/media/7f9493_2943fc4d7e6f4d6f9e042bbe13bb0c9b~mv2.png/v1/fill/w_440,h_438,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/California.png', price: 7.99),
      FoodItem(id: '10', name: "Fried Chicken", category: 'Chicken', imgURL: 'https://clipart-library.com/new_gallery/316-3162943_fried-chicken-dinner-national-fried-chicken-day-clip.png', price: 9.99),
      FoodItem(id: '11', name: "Grilled Chicken", category: 'Chicken', imgURL: 'https://static.vecteezy.com/system/resources/previews/021/665/568/original/delicious-grilled-chicken-cutout-png.png', price: 11.99),
      FoodItem(id: '12', name: "Coca Cola", category: 'Drinks', imgURL: 'https://freepngimg.com/thumb/cocacola/13-coca-cola-bottle-png-image.png', price: 2.99),
      FoodItem(id: '13', name: "Orange Juice", category: 'Drinks', imgURL: 'https://i.pinimg.com/originals/23/c1/cd/23c1cd29a57de84c904d61b3f876f721.png', price: 1.99),
      FoodItem(id: '14', name: "Fettuccine", category: 'Pasta', imgURL: 'https://gias-srl.com/wp-content/uploads/2022/10/724_z_fettuccine-alfredo.png', price: 9.99),
      FoodItem(id: '15', name: "Spaghetti", category: 'Pasta', imgURL: 'https://static.vecteezy.com/system/resources/previews/025/065/195/original/spaghetti-with-ai-generated-free-png.png', price: 9.99),
      FoodItem(id: '16', name: "Filet Mignon", category: 'Beef', imgURL: 'https://i.pinimg.com/originals/3c/b2/6e/3cb26eb0b32e52171c70c89b3eefc8c5.png', price: 11.99),
      FoodItem(id: '17', name: "T-bone", category: 'Beef', imgURL: 'https://pnghq.com/wp-content/uploads/download-steak-plate-png-88034.png', price: 14.99),
    
    
    

      
    ];