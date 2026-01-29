// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DownloadsStore on _DownloadsStore, Store {
  Computed<List<DownloadedVideo>>? _$filteredVideosComputed;

  @override
  List<DownloadedVideo> get filteredVideos =>
      (_$filteredVideosComputed ??= Computed<List<DownloadedVideo>>(
        () => super.filteredVideos,
        name: '_DownloadsStore.filteredVideos',
      )).value;
  Computed<Map<String, Map<String, List<DownloadedVideo>>>>?
  _$groupedVideosComputed;

  @override
  Map<String, Map<String, List<DownloadedVideo>>> get groupedVideos =>
      (_$groupedVideosComputed ??=
              Computed<Map<String, Map<String, List<DownloadedVideo>>>>(
                () => super.groupedVideos,
                name: '_DownloadsStore.groupedVideos',
              ))
          .value;

  late final _$searchQueryAtom = Atom(
    name: '_DownloadsStore.searchQuery',
    context: context,
  );

  @override
  String get searchQuery {
    _$searchQueryAtom.reportRead();
    return super.searchQuery;
  }

  @override
  set searchQuery(String value) {
    _$searchQueryAtom.reportWrite(value, super.searchQuery, () {
      super.searchQuery = value;
    });
  }

  late final _$allVideosAtom = Atom(
    name: '_DownloadsStore.allVideos',
    context: context,
  );

  @override
  ObservableList<DownloadedVideo> get allVideos {
    _$allVideosAtom.reportRead();
    return super.allVideos;
  }

  @override
  set allVideos(ObservableList<DownloadedVideo> value) {
    _$allVideosAtom.reportWrite(value, super.allVideos, () {
      super.allVideos = value;
    });
  }

  late final _$_DownloadsStoreActionController = ActionController(
    name: '_DownloadsStore',
    context: context,
  );

  @override
  void setSearchQuery(String query) {
    final _$actionInfo = _$_DownloadsStoreActionController.startAction(
      name: '_DownloadsStore.setSearchQuery',
    );
    try {
      return super.setSearchQuery(query);
    } finally {
      _$_DownloadsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchQuery: ${searchQuery},
allVideos: ${allVideos},
filteredVideos: ${filteredVideos},
groupedVideos: ${groupedVideos}
    ''';
  }
}
