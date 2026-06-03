import 'package:ecommerce_app/utility/images.dart';

// List<Map<String, String>> menuCategories = [
//   {"name": "Promotion", "image": "assets/images/category_promotion.png"},
//   {
//     "name": "Everyday Value",
//     "image": "assets/images/category_everyday_value.png",
//   },
//   {
//     "name": "Ala-Carte-&-Combos",
//     "image": "assets/images/category_ala_carte.png",
//   },
//   {
//     "name": "Signature-Boxes",
//     "image": "assets/images/category_signature_boxes.png",
//   },
//   {"name": "Sharing", "image": "assets/images/category_sharing.png"},
//   {"name":"Snack and Beverages"},
//   {"name":"Midnight (Start at 12am)"},
//   {"name":"Condiments"}
// ];

List<Map<String, dynamic>> bestSellersList = [
  {"name": "Krunch Burger", "price": "310", "image": Images.best_krunch_burger},
  {"name": "Mighty Zinger", "price": "770", "image": Images.best_mightBurger},
  {
    "name": "Chicken & Chips",
    "price": "650",
    "image": Images.best_chicken_chips,
  },
  {"name": "Hot Wings Bucket", "price": "670", "image": Images.best_hot_wings},
  {"name": "Krunch Combo", "price": "590", "image": Images.best_krunch_combo},
];

 List<Map<String, dynamic>> topDealsList = [
  {
    "name": "Family Festival",
    "price": "2590",
    "image": Images.top_family_deals,
    "description":
        "4 Zinger burgers + 4 pieces Hot & Crispy Chicken + 2 Dinner rolls + 1.5 Liter drink",
  },
  {
    "name": "Value Bucket",
    "price": "2090",
    "image": Images.top_value_bucket,
    "description":
        "9 pcs of Crispy Fried Chicken. Rs. 50 from every bucket goes to Foundation.",
  },
  {
    "name": "Strips CHips N' Dips",
    "price": "750",
    "image": Images.best_chicken_chips,
    "description":
        "4 Boneless Strips, Regular Fries, 2 Dips (Smoke Show & Ranch) and a Drink",
  },
  {
    "name": "Xtreme Duo Box",
    "price": "1560",
    "image": Images.top_xtreme_duo,
    "description":
        "2 Signature Zingers + 2 pcs Hot & Crispy Chicken + 1 Large fries + 2 Regular drinks",
  },
];

// const List<Map<String,dynamic>> productsList = [
//   {
//     "category": "Promotion",
//     "name": "Colonel's Secret Sauce",
//     "image": Images.promotion_secretSauce,
//     "price": "190",
//     "description":
//         "Signature dipping Sauce - Creamy, tangy with a peppery hint",
//   },
//   {
//     "category": "Promotion",
//     "name": "Hot Shot Shakers",
//     "image": Images.promotion_hotShakers,
//     "price": "550",
//     "description": "10 crispy Hotshots, paird with chipotle sauce & ranch dip",
//   },
//
//   {
//     "category": "Everyday Value",
//     "name": "Krunch Burger",
//     "image": Images.every_krunchBurger,
//     "price": "310",
//     "description":
//         "Krucnch fillet, spicy mayo, lettuce, between sesame seed bun",
//   },
//   {
//     "category": "Everyday Value",
//     "name": "Zingeratha",
//     "image": Images.every_zingeratha,
//     "price": "390",
//     "description":
//         "Tender boneless strips, sliced onions, tangy chutney, wrapped in a soft paratha",
//   },
//   {
//     "category": "Everyday Value",
//     "name": "Rice & Spice",
//     "image": Images.every_riceSpice,
//     "price": "390",
//     "description": "Spiced and buttery rice with 6 pcs of Hot Shots",
//   },
//   {
//     "category": "Everyday Value",
//     "name": "Boneless Strips",
//     "image": Images.every_bonelessStripes,
//     "price": "440",
//     "description": "3 Chicken strips for a hassle free boneless experience",
//   },
//   {
//     "category": "Everyday Value",
//     "name": "Twister",
//     "image": Images.every_twister,
//     "price": "440",
//     "description":
//         "Tender boneless strips, black pepper mayo, lettuce-wrapped in a tortilla",
//   },
//   {
//     "category": "Everyday Value",
//     "name": "Chicken and Chips",
//     "image": Images.every_chickenChips,
//     "price": "650",
//     "description":
//         "2 pieces of Hot and Crispy Fried Chicken + Fries+ Dinner Roll + Sauce",
//   },
//   {
//     "category": "Everyday Value",
//     "name": "3 Pcs Chicken",
//     "image": Images.every_3pcChick,
//     "price": "720",
//     "description": "3 pieces of Hot and Cripsy Fried Chicken",
//   },
//   {
//     "category": "Everyday Value",
//     "name": "Krunch Burger + Drink",
//     "image": Images.every_kBurger_drink,
//     "price": "410",
//     "description": "1 Krunch Burger + 1 Regular Drink",
//   },
//   {
//     "category": "Everyday Value",
//     "name": "Krunch Combo",
//     "image": Images.every_krunchCombo,
//     "price": "590",
//     "description": "1 Krunch burger + 1 Regular fries + 1 Regular drink",
//   },
//   {
//     "category": "Everyday Value",
//     "name": "Krunch Chicken Combo",
//     "image": Images.every_krunchCombo,
//     "price": "620",
//     "description":
//         "1 Krunch Burger + 1 pc of Hot and Crispy Fried Chicken +  1 Regular Drink",
//   },
//   {
//     "category": "Everyday Value",
//     "name": "Twister Combo",
//     "image": Images.every_twisterCombo,
//     "price": "710",
//     "description": "Twister + 1 Regular fries + 1 Regular drink",
//   },
//
//   {
//     "category": "Ala-Carte-&-Combos",
//     "name": "Zinger Burger",
//     "image": Images.ala_zingerBurger,
//     "price": "600",
//     "description":
//         "Signature mayo and lettuce-sandwiched between a sesame seed bun",
//   },
//   {
//     "category": "Ala-Carte-&-Combos",
//     "name": "Zinger Stacker",
//     "image": Images.ala_zingerStacker,
//     "price": "660",
//     "description":
//         "Double krunch fillet, jalapenos, spicy mayo, lettuce and cheese with our signature Vietnamese sauce",
//   },
//   {
//     "category": "Ala-Carte-&-Combos",
//     "name": "Kentucky Burger",
//     "image": Images.ala_kentuckyBurger,
//     "price": "660",
//     "description":
//         "OG Zinger fillet layered with beef pepperoni, cripsy fried onions, cheese and smokey BBQ sauce",
//   },
//   {
//     "category": "Ala-Carte-&-Combos",
//     "name": "Mighty Burger",
//     "image": Images.ala_mightyBurger,
//     "price": "770",
//     "description":
//         "Double Zinger fillet with a combination of spicy and plain mayo, lettuce",
//   },
//   {
//     "category": "Ala-Carte-&-Combos",
//     "name": "Zinger Combo",
//     "image": Images.ala_zingerCombo,
//     "price": "910",
//     "description": "Zinger burger + 1 Regular fries+ 1 Regular drink",
//   },
//   {
//     "category": "Ala-Carte-&-Combos",
//     "name": "Zinger Stacker Combo",
//     "image": Images.ala_zingerStacker,
//     "price": "950",
//     "description": "Zinger burger + 1 Regular fries+ 1 Regular drink",
//   },
//   {
//     "category": "Ala-Carte-&-Combos",
//     "name": "Kentucky Burger Combo",
//     "image": Images.ala_kentuckyBurgerCombo,
//     "price": "950",
//     "description": "Kentucky Burger + 1 Regular fries+ 1 Regular drink",
//   },
//   {
//     "category": "Ala-Carte-&-Combos",
//     "name": "Mighty Zinger Combo",
//     "image": Images.ala_zingerCombo,
//     "price": "910",
//     "description": "Zinger burger + 1 Regular fries+ 1 Regular drink",
//   },
//
//   {
//     "category": "Signature-Boxes",
//     "name": "Cripsy Box",
//     "image": Images.sign_crispyBox,
//     "price": "750",
//     "description":
//         "Get 2 pcs Hot & Crispy Chicken + 1 Regular fries + 1 Regular drink + 1 Coleslaw",
//   },
//   {
//     "category": "Signature-Boxes",
//     "name": "Strips Chips N'Dips",
//     "image": Images.sign_stipsChips,
//     "price": "750",
//     "description":
//         "4 Boneless Strips, Regular Fries, 2 Dips (Smoke Show & Ranch) and a Drink",
//   },
//   {
//     "category": "Signature-Boxes",
//     "name": "Wow Box",
//     "image": Images.sign_wowBox,
//     "price": "1050",
//     "description":
//         "1 Signature Zinger + 1 pc Hot & Crispy Chicken + 1 Regular fries + 1 Regular drink + 1 Coleslaw",
//   },
//   {
//     "category": "Signature-Boxes",
//     "name": "Cripsy Duo Box",
//     "image": Images.sign_crispyDuo,
//     "price": "1390",
//     "description":
//         "5 pcs Hot & Crispy Chicken + 1 Large fries + 2 Regular drinks",
//   },
//   {
//     "category": "Signature-Boxes",
//     "name": "Xtreme Duo Box",
//     "image": Images.sign_XtremeDuo,
//     "price": "1560",
//     "description":
//         "2 Signature Zingers + 2 pcs Hot & Crispy Chicken + 1 Large fries + 2 Regular drinks",
//   },
//
//   {
//     "category": "Sharing",
//     "name": "Value Bucket",
//     "image": Images.share_valueBucket,
//     "price": "2090",
//     "description":
//         "9 pcs of our Signature Crispy Fried Chicken, hand-breaded in-house.",
//   },
//   {
//     "category": "Sharing",
//     "name": "Family Festival 1",
//     "image": Images.share_family_1,
//     "price": "2190",
//     "description":
//         "4 Krunch burgers+ 4 pieces Hot and Crispy Chicken+ 2 Dinner Rolls + 1.5 Liter drink",
//   },
//   {
//     "category": "Sharing",
//     "name": "Family Festival 1",
//     "image": Images.share_family_2,
//     "price": "2390",
//     "description":
//         "2 Zinger burgers + 2 Krunch burgers + 4 pieces Hot and Crispy Chicken + 2 Dinner rolls + 1.5 Liter drink",
//   },
//   {
//     "category": "Sharing",
//     "name": "Family Festival 3",
//     "image": Images.share_family_3,
//     "price": "2590",
//     "description":
//         "4 Zinger burgers + 4 pieces Hot and Crispy Chicken + 2 Dinner rolls + 1.5 Liter drink",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Corn On The Cob",
//     "image": Images.snack_corn,
//     "price": "290",
//     "description": "Boiled sweet corn brushed with butter",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "One Piece Chicken",
//     "image": Images.snack_chicken,
//     "price": "320",
//     "description": "1 piece of Hot & Crispy Fried Chicken",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Hot Shots",
//     "image": Images.snack_shots,
//     "price": "480",
//     "description": "9 Pcs of hand-breaded Hot Shots",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Chicky Meal 1",
//     "image": Images.snack_chickyMeal_1,
//     "price": "550",
//     "description": "Krunch + Chicky Fries + Drink",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Chicky Meal 2",
//     "image": Images.snack_chickyMeal_2,
//     "price": "550",
//     "description": "4 Nuggets + 1 CHICKY FRIES+ Slice",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Plain Nuggets",
//     "image": Images.snack_nuggets,
//     "price": "580",
//     "description": " 6 pieces of tender and delicious chicken nuggets",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Buffallo Wings",
//     "image": Images.snack_buffaloWings,
//     "price": "640",
//     "description":
//         "8 Pcs of Hot Wings coated with a spicy Buffalo sauce, topped with chili flakes",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Thai Sweet Chilli Wings",
//     "image": Images.snack_thaiWings,
//     "price": "640",
//     "description":
//         "8 Pcs of Hot Wings coated with a Sweet Thai Chilli sauce, topped with sesame seeds",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Tangy Masala Wings",
//     "image": Images.snack_masalaWings,
//     "price": "640",
//     "description":
//         "8 pcs of Hot Wings coated in a sweet and tangy sauce, dusted with chaat masala",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Salsa Sprinkle Wings",
//     "image": Images.snack_salsaWings,
//     "price": "640",
//     "description": "8 Pcs Salsa Sprinkle Wings Bucket",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Snack Bucket",
//     "image": Images.snack_bucket,
//     "price": "640",
//     "description": "4 Hot Wings + 4 Hot Shots + 2 Strips and 1 Dip",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Hot Wings Bucket",
//     "image": Images.snack_bucket,
//     "price": "670",
//     "description": "10 Pcs of our Signature Hot & Crispy Wings",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Fries",
//     "image": Images.snack_fries,
//     "price": "340",
//     "description": "Crispy and Golden Fries",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Masala Fries",
//     "image": Images.snack_masalaFries,
//     "price": "360",
//     "description": "Masala Crispy and Golden Fries",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Fries Bucket with Dip",
//     "image": Images.snack_friesWithDip,
//     "price": "470",
//     "description": "Fries Bucket with Dip",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Cheesy Chicken Loaded Fries",
//     "image": Images.snack_loadedFries,
//     "price": "650",
//     "description":
//         "opped with crispy hot shots, cheese sauce and spicy jalapeños",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Coleslaw",
//     "image": Images.snack_coleslaw,
//     "price": "150",
//     "description": "Sliced cabbage and carrots tossed in mayo",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Dinner Roll",
//     "image": Images.snack_snackRoll,
//     "price": "50",
//     "description": "Soft and fluffy, it complements any meal perfectly",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Water",
//     "image": Images.snack_water,
//     "price": "90",
//     "description": "Mineral Water 500ml",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Pepsi regular",
//     "image": Images.snack_pepsi,
//     "price": "180",
//     "description": "Pepsi in a regular-sized bottle 345ml",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "7UP Regular",
//     "image": Images.snack_7up,
//     "price": "180",
//     "description": "7UP in a regular-sized bottle 345ml",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Mirinda Regular",
//     "image": Images.snack_mirinda,
//     "price": "180",
//     "description": "Mirinda in a regular-sized bottle 345ml",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Sting Berry Blast",
//     "image": Images.snack_sting,
//     "price": "180",
//     "description": "Sting energy drink in a 345ml bottle.",
//   },
//   {
//     "category": "Snack and Beverages",
//     "name": "Mountain Dew Regular",
//     "image": Images.snack_dew,
//     "price": "180",
//     "description": "Mountain Dew in a regular-sized bottle 345ml",
//   },
//
//   {
//     "category": "Condiments",
//     "name": "Cheese Mayo",
//     "image": Images.con_cheeseMayo,
//     "price": "75",
//     "description":
//         "Creamy, indulgent blend of rich melted cheese and smooth mayonnaise.",
//   },
//   {
//     "category": "Condiments",
//     "name": "Black Pepper Mayo",
//     "image": Images.con_pepperMayo,
//     "price": "75",
//     "description": "Creamy and tangy with warm pepper flavor",
//   },
//   {
//     "category": "Condiments",
//     "name": "BBQ Sauce",
//     "image": Images.son_BBQ,
//     "price": "75",
//     "description":
//         "BBQ Sauce with sweet and tangy kick that makes every bite unforgettable.",
//   },
//   {
//     "category": "Condiments",
//     "name": "Thai Sweet Chilli Sauce",
//     "image": Images.con_thaiSauce,
//     "price": "75",
//     "description": "Sweet & spicy chilli sauce",
//   },
//   {
//     "category": "Condiments",
//     "name": "Buffalo Sauce",
//     "image": Images.con_buffaloSauce,
//     "price": "75",
//     "description": "Turn up the heat with our spicy and sour Buffalo Sauce",
//   },
//   {
//     "category": "Condiments",
//     "name": "Chipotle Sauce",
//     "image": Images.con_chipotleSauce,
//     "price": "75",
//     "description":
//         "A taste of Mexico in every dip – smoky chipotle with a hint of spice.",
//   },
//   {
//     "category": "Condiments",
//     "name": "Mayo Dip",
//     "image": Images.con_mayoDip,
//     "price": "75",
//     "description": "Creamy mayo for your dipping needs",
//   },
//   {
//     "category": "Condiments",
//     "name": "Vietnamese Dip",
//     "image": Images.con_vietnameseDip,
//     "price": "75",
//     "description": "Our spicy and sour signature sauce.",
//   },
//   {
//     "category": "Condiments",
//     "name": "Garlic Mayo",
//     "image": Images.con_garlicMayo,
//     "price": "75",
//     "description": "Creamy Garlic Mayo Dip served fresh in a small cup",
//   },
//   {
//     "category": "Condiments",
//     "name": "Creamy Ranch",
//     "image": Images.con_ranch,
//     "price": "75",
//     "description": "Smooth and tangy Creamy Ranch Dip served with meals",
//   },
//   {
//     "category": "Condiments",
//     "name": "Spicy Mayo",
//     "image": Images.con_spicyMayo,
//     "price": "100",
//     "description": "Spicy Mayo Dip with creamy texture and fiery flavor",
//   },
//   {
//     "category": "Condiments",
//     "name": "Smoke Show",
//     "image": Images.con_smokeShow,
//     "price": "75",
//     "description": "Smoky and creamy flavor to go with your fried chicken",
//   },
//
//   {
//     "category": "Midnight (Start at 12am)",
//     "name": "Midnight Deal 1",
//     "image": Images.midnight_deal1,
//     "price": "520",
//     "description": "1 Zinger burger + 1 regular drink",
//   },
//   {
//     "category": "Midnight (Start at 12am)",
//     "name": "Midnight Deal 2",
//     "image": Images.midnight_deal2,
//     "price": "610",
//     "description": "2 Krunch burgers + 2 regular drinks",
//   },
//   {
//     "category": "Midnight (Start at 12am)",
//     "name": "Midnight Deal 3",
//     "image": Images.midnight_deal3,
//     "price": "710",
//     "description": "Mighty Zinger + Regular drink",
//   },
// ];

//
// {
// "name":"",
// "image":,
// "price":"",
// "description":""
// },
