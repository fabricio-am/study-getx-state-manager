import '../../data/provider/api.dart';

class HomeRepository {
  final MyApi api;

  HomeRepository(this.api);

  getNames() => api.getNames();
}
