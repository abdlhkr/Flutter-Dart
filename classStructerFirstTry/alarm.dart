import 'Music.dart';
import 'Time.dart';
class Alarm {
  late Music music;
  late Time time;
  Alarm(String name, String fileDirectory, int hour, int minute, int second) {
    this.music = Music(name, fileDirectory);
    this.time = Time(hour, minute, second);
  }
  // dart dili aynı adda iki constructera izin vermiyor o yüzden 
  // named constructor kullanıyoruz method gibi
  Alarm.simple(this.music, this.time);

  void setAlarmTime(int hour, int minute, int second) {
    time.setHour = hour;
    time.setMinute = minute;
    time.setSecond = second;
  }

  void changeMusic(String name, String fileDirectory) {
    music.setMusicName = name;
    music.setFileDirectory = fileDirectory;
  }

  get getAlarmTime {
    return "${time.getHour}:${time.getMinute}:${time.getSecond}";
  }
  get getMusicName {
    return music.getMusicName;
  }

  @override
  String toString() {
    // TODO: implement toString
    return " ${this.getMusicName} : $this.getAlarmTime";
  }
}