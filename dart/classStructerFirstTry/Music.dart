class Music {
  String _name;
  String _fileDirectory;
  Music(this._name, this._fileDirectory);

  get fileDirectory => _fileDirectory;
  get getMusicName => _name;
  set setMusicName(String name) => _name = name;
  set setFileDirectory(String fileDirectory) => _fileDirectory = fileDirectory;
}