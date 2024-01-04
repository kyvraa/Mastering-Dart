enum Status { none, running, stopped, paused }

// kek list ya wkwkw

void main() {
  print(Status.paused.runtimeType);
  print(Status.none);
  print(Status.values);
  for (var i in Status.values) {
    print('status : $i');
  }
  print('running: ${Status.running}, ${Status.running.index}');
  print('running index: ${Status.values[2]}');
}
