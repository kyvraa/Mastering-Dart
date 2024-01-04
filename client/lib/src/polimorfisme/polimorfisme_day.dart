// void main() {
//   List<bool> data = [false, false, false, false, false];
//   for (var datas = 0; datas < data.length; datas++) {
//     data[datas] = datas % 2 == 0 ? true : false;
//     print(data[datas]);
//   }
// }

// void main() {
//   List data = List.filled(10, (index) => 1 );
//   // data.map((e) => {
//   //    for(var value in e){
//   //     print(value)
//   //    }
//   // }).toList();

//   for (var datas = 0; datas < data.length; datas++) {
//     print(data[datas]);
//   }
// }


void main () {
  final numbers = <int>[1, 2, 3];
final listOf = List<num>.of(numbers);
print(listOf); // [1, 2, 3]
}