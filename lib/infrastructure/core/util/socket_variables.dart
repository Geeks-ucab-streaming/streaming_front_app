class SocketVariablesGetter {
  static const hackersSocketUrl =
      'https://soundspace-api-production-74fe.up.railway.app';
  static const geeksSocketUrl =
      'https://streaming-api-production-48db.up.railway.app';
  static const activeTeam = 'GEEKS';

  static String getActiveTeam() {
    return activeTeam;
  }

  static String getSocketUrl() {
    return (activeTeam == 'GEEKS') ? geeksSocketUrl : hackersSocketUrl;
  }
}
