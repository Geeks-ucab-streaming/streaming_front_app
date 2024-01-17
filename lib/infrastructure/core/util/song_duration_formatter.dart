class SongDurationFormatter {
  static String format(String songDuration) {
    String formattedDuration = '';
    // try to format duration
    try {
      if (songDuration.substring(3, 4) == '0') {
        formattedDuration = songDuration.substring(4, 5);
      } else {
        formattedDuration = songDuration.substring(3, 5);
      }
    } catch (e) {
      formattedDuration = songDuration;
    }
    // return the formatted duration
    return formattedDuration;
  }
}
