import 'dart:async';

void main(List<String> args) async {
  BelajarStream belajarStream = BelajarStream(100);

  await for (var data in belajarStream.data(0)) {
    print(data);
  }

  await for (var batch in belajarStream.dataList(100)) {
    print("Batch: $batch");
  }
}

class BelajarStream {
  int num;
  List<int> num2 = [];

  BelajarStream(this.num);

  Stream<int> data(int y) async* {
    while (y < num) {
      await Future.delayed(Duration(milliseconds: 100), () {
        y += 10;
      });
      yield y;
    }
  }

  Stream<List<int>> dataList(int batchSize) async* {
    List<int> batch = [];

    await for (var element in data(0)) {
      batch.add(element);

      if (batch.length == batchSize) {
        yield List.from(batch);
        batch.clear();
      }
    }
    if (batch.isNotEmpty) {
      yield List.from(batch);
    }
  }
}
