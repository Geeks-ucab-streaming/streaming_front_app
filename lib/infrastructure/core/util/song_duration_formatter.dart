class SongDurationFormatter {
  static String format(String songDuration) {
    String formattedDuration = '';
    // try to format duration
    try {
      var duration = songDuration.split(':');
      print(duration);
      if (duration[0] == '00') {
        formattedDuration = songDuration.substring(4, 8);
      } else if (duration[0].startsWith('0')) {
        formattedDuration = songDuration.substring(1, 5);
      }
    } catch (e) {
      formattedDuration = songDuration;
    }
    // return the formatted duration
    return formattedDuration;
  }
}
