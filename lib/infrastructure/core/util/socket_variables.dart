class SocketVariablesGetter {
  static const hackersSocketUrl =
      'https://soundspace-api-production-3d1f.up.railway.app';
  static const geeksSocketUrl =
      'http://streaming-api.eastus.azurecontainer.io:3000';
  static const activeTeam = 'HACKERS';

  static String getActiveTeam() {
    return activeTeam;
  }

  static String getSocketUrl() {
    return (activeTeam == 'GEEKS') ? geeksSocketUrl : hackersSocketUrl;
  }
}
