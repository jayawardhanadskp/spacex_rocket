class Config {
  // ignore: constant_identifier_names
  static const BACKEND_URL = String.fromEnvironment('BACKEND_URL',
      defaultValue: 'https://api.spacexdata.com/v4/');
}
