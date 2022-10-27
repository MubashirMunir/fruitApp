
//
// class Go extends StatefulWidget {
//   const Go({Key? key}) : super(key: key);
//
//   @override
//   State<Go> createState() => _GoState();
// }
// class _GoState extends State<Go> {
//   @override
//   void initState() {
//        super.initState();
//          }
// // loadData()async{
// //  var json= await rootBundle.loadString("assets/file/file.json");
// //  var decoded=jsonDecode(json);
// //  var productData=decoded["products"];
// //  print("productdata");
// //  Catalog.items=List.from(productData).map((item) => Item.forMap(item)).toList();
// //  setState(() {});
// // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//          // Icon(Icons.search),
//         title: Text('Fruits',),
//      actions: [
//        IconButton(
//          onPressed: () {},
//          icon: const Icon(Icons.search),
//        ),
//      ],
//       ),
//       drawer: MyDrawer(),
//       body: ListView.builder(
//           itemCount:Catalog.items.length ,
//         itemBuilder: (context, index){
//             return Itemwidget(
//                 item: Catalog.items[index]);
//
//         }
//       )
//     );
//   }
// }
