class SongDurationFormatter {
  static String format(String songDuration) {
    String formattedDuration = '';
    // try to format duration
    try {
      var reversed = songDuration.split('').reversed.join();
      if (reversed[4] == '0') {
        formattedDuration = songDuration.substring(0, 4).split('').reversed.join();
      } else {
        formattedDuration = songDuration.substring(0, 5).split('').reversed.join();
      }
    } catch (e) {
      formattedDuration = songDuration;
    }
    // return the formatted duration
    return formattedDuration;
  }
}
