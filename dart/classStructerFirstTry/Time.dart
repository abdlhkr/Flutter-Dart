 class Time {
    int _hour;
    int _minute;
    int _second;
    Time(this._hour,this._minute,this._second);

    get getHour => _hour;
    get getMinute => _minute;
    get getSecond => _second;

    set setHour(int hour) => _hour = hour;  
    set setMinute(int minute) => _minute = minute;
    set setSecond(int second) => _second = second;
}
