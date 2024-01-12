// void main(List<String> args) {
//   int pageSize = 10;
//   List<int> num = List.generate(100, (index) => index);

//   for (int page = 1; page <= (num.length / pageSize).ceil(); page++) {
//     List<int> pageNumbers = getPageNumbers(num, page, pageSize);
//     print('Halaman $page: $pageNumbers \n');
//   }
// }

// List<int> getPageNumbers(List<int> numbers, int currentPage, int pageSize) {
//   int startIndex = (currentPage - 1) * pageSize;
//   int endIndex = (startIndex + pageSize) > numbers.length
//       ? numbers.length
//       : (startIndex + pageSize);

//   List<int> pageNumbers = numbers.sublist(startIndex, endIndex);
//   return pageNumbers;
// }

// void main(List<String> args) {
//   var data = List.generate(20, (index) => index + 1);
//   List<int> dataList = data.where((element) {
//     if (element % 2 == 0) {
//       print('bilangan genap $element \n');
//       return true;
//     } else {
//       print('bilangan ganjil $element \n');
//       return false;
//     }
//   }).toList();
//   print(dataList);
// }

void main() {
  List<int> data = List.generate(100, (index) => index);

  Map<String, dynamic> genericMap = Map.fromEntries(data.asMap().entries.map(
        (entry) => MapEntry(
          entry.key.toString(),
          entry.value,
        ),
      ));

  print(genericMap);
}

