class FoodItem{
  final String id;
  final String name;
  final String category;
  final String imgURL;
  final double price;
  final String Size;
  final String Calories;
  final String Cooking;
  final String description;
  final String estimatedTime;
  final int numberOfSales;
  final bool isFavorite;

  FoodItem( {
    required this.id, 
    required this.name, 
    required this.category, 
    required this.imgURL, 
    required this.price,
    required this.Size,
    required this.Calories,
    required this.Cooking, 
    required this.description,
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
       Size: Size,
       Calories: Calories,
       Cooking: Cooking,
       description: description,
       estimatedTime:estimatedTime,
       numberOfSales:numberOfSales,
       isFavorite: isFavorite ?? this.isFavorite,

       );
    }

}
    List<FoodItem> products=[
      FoodItem(id: '1', name: "Beef Burger", category: 'Burger', imgURL: 'https://cutewallpaper.org/24/hamburger-png/download-hamburger-free-png-transparent-image-and-clipart.png', price: 6.99, Size: "Medium",Calories: "150 Kcal",Cooking: "5-10 Mins", description:"Local beef, lettuce, pickled cucumber, tomato, Street sauce, Maasdam cheese, home baked burger bun "),
      FoodItem(id: '2', name: "Beef Burger", category: 'Burger', imgURL: 'https://static.vecteezy.com/system/resources/previews/022/598/800/original/tasty-beef-burger-png.png', price: 7.99, Size: "Large",Calories: "200 Kcal",Cooking: "8-12 Mins",description:"Local beef, lettuce, pickled cucumber, tomato, Street sauce, Maasdam cheese, home baked burger bun" ),
      FoodItem(id: '3', name: "Chicken Burger", category: 'Burger', imgURL: 'https://www.pngkit.com/png/full/217-2178359_tex-supreme-chicken-cheese-burger-png.png', price: 5.99,Size: "Medium",Calories: "150 Kcal",Cooking: "5-10 Mins", description:"Grilled local chicken fillet, tomato, lettuce, pickled cucumber, Maasdam cheese, pesto sauce, garlic sauce, home baked burger bun" ),
      FoodItem(id: '4', name: "Chicken Burger", category: 'Burger', imgURL: 'https://www.pngkey.com/png/full/244-2445543_chicken-burger-chicken-cheese-burger-png.png', price: 4.99, Size: "Small",Calories: "100 Kcal",Cooking: "5-8 Mins", description:"Local grilled chicken fillet, Cheddar cheese, lettuce, herb sauce, bell pepper chutney, home baked burger bun" ),
      FoodItem(id: '5', name: "Chicken Burger", category: 'Burger', imgURL: 'https://herfybd.com/assets/image/chicken-double-decker.png', price: 5.99, Size: "Large",Calories: "200 Kcal",Cooking: "8-12 Mins", description:"Local grilled chicken fillet, lettuce, bell pepper chutney, pineapple, Cheddar cheese, blended red jalapeños, home baked burger bun" ),
      FoodItem(id: '6', name: "Chicken Pizza", category: 'Pizza', imgURL: 'https://static.vecteezy.com/system/resources/previews/024/108/111/original/tasty-bbq-chicken-cheese-pizza-isolated-on-transparent-background-png.png', price: 6.99, Size: "Medium",Calories: "70 Kcal",Cooking: "10-15 Mins", description:"Crushed Tomato base topped with provolone & gorgonzola cheese, jalapeno peppers, grilled chicken and finished with a drizzle of house-made spicy buffalo chicken wing sauce."),
      FoodItem(id: '7', name: "Margarita Pizza", category: 'Pizza', imgURL: 'https://pizza-brew.com/wp-content/uploads/2018/11/pp.png', price: 5.99,Size: "Medium",Calories: "60 Kcal",Cooking: "10-15 Mins", description:"Mushrooms, green peppers, onions, olives, mozzarella and parsley over our seasoned tomato sauce, finished with chopped tomatoes after bake."),
      FoodItem(id: '8', name: "Lazania", category: 'Pasta', imgURL: 'https://static.wixstatic.com/media/183701_1fdc6c4b82964a8085e739e3d9aa9bd0~mv2.png/v1/fill/w_640,h_410,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/183701_1fdc6c4b82964a8085e739e3d9aa9bd0~mv2.png', price: 7.99, Size: "small",Calories: "80 Kcal",Cooking: "15-20 Mins", description:"Marinara, lasagna pasta & Ricotta cheese topped with mozzarella, baked to perfection."),
      FoodItem(id: '9', name: "koshary", category: 'Pasta', imgURL: 'https://static.wixstatic.com/media/7f9493_2943fc4d7e6f4d6f9e042bbe13bb0c9b~mv2.png/v1/fill/w_440,h_438,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/California.png', price: 7.99, Size: "Medium",Calories: "150 Kcal",Cooking: "10-15 Mins", description:"The bowl starts with your choice of grain. Choose from white rice, brown rice, or quinoa. Top it with lentils, gluten free pasta, chickpeas, signature sauce, fried onions, and vinaigrette."),
      FoodItem(id: '10', name: "Fried Chicken", category: 'Chicken', imgURL: 'https://clipart-library.com/new_gallery/316-3162943_fried-chicken-dinner-national-fried-chicken-day-clip.png', price: 9.99, Size: "Medium",Calories: "180 Kcal",Cooking: "15-20 Mins", description:"Flour battered chicken breast with white cream gravy. Served with French fries."),
      FoodItem(id: '11', name: "Grilled Chicken", category: 'Chicken', imgURL: 'https://static.vecteezy.com/system/resources/previews/021/665/568/original/delicious-grilled-chicken-cutout-png.png', price: 11.99, Size: "Medium",Calories: "200 Kcal",Cooking: "15-20 Mins", description:"Homemade curry sauce, grilled chicken, fresh salad (arugula, spinach, fine lettuce), red cabbage, spring onion, cherry tomatoes, olives, a mango and coconut sauce, topped off with fried onions, nuts and fresh mint."),
      FoodItem(id: '12', name: "Coca Cola", category: 'Drinks', imgURL: 'https://freepngimg.com/thumb/cocacola/13-coca-cola-bottle-png-image.png', price: 2.99, Size: "small",Calories: "60 Kcal",Cooking: "1-2 Mins", description:"Fountain beverage. A product of The Coca-Cola Company."),
      FoodItem(id: '13', name: "Orange Juice", category: 'Drinks', imgURL: 'https://i.pinimg.com/originals/23/c1/cd/23c1cd29a57de84c904d61b3f876f721.png', price: 1.99, Size: "small",Calories: "50 Kcal",Cooking: "3-5 Mins", description:"classic source of Vitamin C that's good any time of day. Breakfast, Lunch and Dinner. Made with fresh squeezed oranges."),
      FoodItem(id: '14', name: "Fettuccine", category: 'Pasta', imgURL: 'https://gias-srl.com/wp-content/uploads/2022/10/724_z_fettuccine-alfredo.png', price: 9.99, Size: "Medium",Calories: "80 Kcal",Cooking: "10-15 Mins", description:"Fettuccine pasta tossed in our rich creamy delicious Garlic Parmesan Cheese Sauce."),
      FoodItem(id: '15', name: "Spaghetti", category: 'Pasta', imgURL: 'https://static.vecteezy.com/system/resources/previews/025/065/195/original/spaghetti-with-ai-generated-free-png.png', price: 9.99, Size: "Medium",Calories: "80 Kcal",Cooking: "10-15 Mins", description:"Spaghetti bolognese consists of spaghetti (long strings of pasta) with an Italian ragù (meat sauce) made with minced beef, bacon and tomatoes, served with Parmesan cheese."),
      FoodItem(id: '16', name: "Filet Mignon", category: 'Beef', imgURL: 'https://i.pinimg.com/originals/3c/b2/6e/3cb26eb0b32e52171c70c89b3eefc8c5.png', price: 11.99, Size: "large",Calories: "200 Kcal",Cooking: "15-20 Mins", description:"Filet Mignon, cut thin and topped with sautéed mushrooms, bacon & melted mozzarella cheese. Sorry, No Temperature."),
      FoodItem(id: '17', name: "T-bone", category: 'Beef', imgURL: 'https://pnghq.com/wp-content/uploads/download-steak-plate-png-88034.png', price: 14.99, Size: "large",Calories: "200 Kcal",Cooking: "15-20 Mins", description:"Juicy beef with the bone cut from the loin"),
    ];