import 'package:meta/meta.dart';
import 'package:receitas/app/data/model/launch_model.dart';
import 'package:receitas/app/data/provider/launch_provider.dart';

class LaunchRepository {
  final LaunchProvider provider;

  LaunchRepository({@required this.provider}) : assert(provider != null);

  insert(LaunchModel launchModel) => provider.insert(launchModel);
  getLaunch(int id) => provider.getLaunch(id);
  delete(int id) => provider.delete(id);
  update(LaunchModel launchModel) => provider.update(launchModel);
  close() => provider.close();
}
