class MyDuration {
  final int _milliseconds;
  MyDuration._internal(this._milliseconds){
    if(_milliseconds<0){
      throw Exception('Duration cannot be below 0!');
    }
  }
  MyDuration.fromHours(int hours): this._internal(hours*3600000);
  MyDuration.fromMinutes(int minutes): this._internal(minutes*60000);
  MyDuration.fromSeconds(int seconds): this._internal(seconds*1000);

  MyDuration operator +(MyDuration o){
    return MyDuration._internal(this._milliseconds+o._milliseconds);
  }
  MyDuration operator -(MyDuration x){
    int calculate=this._milliseconds-x._milliseconds;
    if(calculate>=0){
      return MyDuration._internal(this._milliseconds+x._milliseconds);
    }else{
      throw Exception('no below 0');
    }
  }
  bool operator >(MyDuration y){
    return this._milliseconds>y._milliseconds;
  }

  // Display the duration in a readable format
  @override
  String toString() {
    int seconds = (_milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
}

void main() {
  MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
  MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
  print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  print(duration1>duration2); //true

  try {
    print(duration2 - duration1); // This will throw an exception
  } catch (e) {
    print(e); 
  }
}
