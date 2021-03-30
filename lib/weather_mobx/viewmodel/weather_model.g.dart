// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WeatherMobx on _WeatherMobxBase, Store {
  final _$isLoadingAtom = Atom(name: '_WeatherMobxBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$weatherItemsAtom = Atom(name: '_WeatherMobxBase.weatherItems');

  @override
  ObservableList<WeatherModel> get weatherItems {
    _$weatherItemsAtom.reportRead();
    return super.weatherItems;
  }

  @override
  set weatherItems(ObservableList<WeatherModel> value) {
    _$weatherItemsAtom.reportWrite(value, super.weatherItems, () {
      super.weatherItems = value;
    });
  }

  final _$fetchItemsAsyncAction = AsyncAction('_WeatherMobxBase.fetchItems');

  @override
  Future<void> fetchItems() {
    return _$fetchItemsAsyncAction.run(() => super.fetchItems());
  }

  final _$_WeatherMobxBaseActionController =
      ActionController(name: '_WeatherMobxBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_WeatherMobxBaseActionController.startAction(
        name: '_WeatherMobxBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_WeatherMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
weatherItems: ${weatherItems}
    ''';
  }
}
