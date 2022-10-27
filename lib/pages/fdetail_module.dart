class Catalog{
static List<Item> items=[
    Item(
      id: 1,
      name:"Mango",
      color:"#33505a",
      desc:"Rich of vitamin D ",
      image: "",
      price:"120",
        ),

];
}
class Item{
  final int id;
final  String name;
 final String color;
final String desc;
 final String image;
final String price;
//constructer
  Item({ required this.id, required this.name, required this.color,
    required this.desc, required this.image, required this.price});
 factory Item.forMap(Map<String,dynamic>map){
return Item(
  id: map["id"],
  name: map["name"],
  color: map["color"],
  desc: map["desc"],
  image: map["image"],
  price: map["price"],
);
 }
 toMap()=>{
   "id": id,
   "name":name,
   "color":color,
   "desc":desc,
   "image":image,
   "price":price,
 };
 }
