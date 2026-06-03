import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  List<Map<String, dynamic>> _cartList=[];

  // pub/sub mechanism:
  // publishers -perform a change
  // subscribers get the change -get notified about the change
  // change is stored and then subscribers get notified about the change through provider

  // notify when a change happen
  //  do no notify when we read/view/get the data


  void addItem(Map<String,dynamic> item){
//     lastindexwhere - search from left to right and return index of last element that has that index
int currentIndex=_cartList.lastIndexWhere((element) => element['id']==item['id'],);
if(currentIndex==-1){
  // item['quantity']=1;
  // _cartList.add(item);
  // notifyListeners();
  // item['quantity'] = 1;
  //
  // This adds a new key called "quantity" inside the product map and sets its value to 1.
  //
  // Example:
  //
  //   {
  //   "name": "Burger",
  //   "price": 500
  //   }
  //
  //   becomes:
  //
  //   {
  //   "name": "Burger",
  //   "price": 500,
  //   "quantity": 1
  //   }
  //
  //   We create a copy because otherwise cart and original products both point to the SAME object in memory.
  //
  //   So changing quantity in cart would also change the original product data accidentally.


  Map<String, dynamic> cartItem = Map.from(item);

  cartItem['quantity'] = 1;

  _cartList.add(cartItem);

  notifyListeners();

}else{
  incrementQuantity(currentIndex);
}
  }

  void incrementQuantity(int index){
int currentQuantity=_cartList[index]['quantity'];
if(currentQuantity<10)
  {
    currentQuantity++;
    _cartList[index]['quantity']=currentQuantity;
    notifyListeners();
  }
// else{
//else do nothing
// }
  }

  void decrementQuantity(int index){
int currentQuantity=_cartList[index]['quantity'];
if(currentQuantity>1){
  currentQuantity--;
  _cartList[index]['quantity']=currentQuantity;
  notifyListeners();
}else{
//   if only one item is remaining we do not decrement Quantity but we delete the only item present
deleteItem(index);
}
  }

  void getItemCount()=>_cartList.length;


  void deleteItem(int index){
_cartList.removeAt(index);
notifyListeners();
  }

  int getCartCount(){
int count=0;

for(var item in _cartList){
  count+=int.parse(item['quantity'].toString());
}

return count;
  }

  double getCartTotalAmount(){
double total=0;
for(var item in _cartList){
  double amount=double.parse(item['price'].toString()) * item['quantity'];
  total+=amount;
}
return total;
  }

  void clearCart(){
_cartList.clear();
notifyListeners();
  }

  List<Map<String,dynamic>> getCartList(){
    return _cartList;
  }

}