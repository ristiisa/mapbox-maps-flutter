import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:mapbox_maps_example/empty_map_widget.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('loadStyleURI', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    await mapboxMap.loadStyleURI(MapboxStyles.DARK);
    var style = await mapboxMap.style.getStyleURI();
    expect(MapboxStyles.DARK, style);
  });

  testWidgets('loadStyleJson', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    var styleJson = await rootBundle.loadString('assets/style.json');
    app.events.resetOnStyleLoaded();
    mapboxMap.loadStyleJson(styleJson);

    await app.events.onStyleLoaded.future;

    var getStyleJson = await mapboxMap.style.getStyleJSON();
    expect(styleJson, getStyleJson);
  });

  testWidgets('clearData', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    mapboxMap.clearData();
  });

  testWidgets('setTileCacheBudget', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    mapboxMap.setTileCacheBudget(TileCacheBudgetInMegabytes(size: 100), null);
    mapboxMap.setTileCacheBudget(null, TileCacheBudgetInTiles(size: 100));
  });

  if (Platform.isAndroid) {
    testWidgets('getSize', (WidgetTester tester) async {
      final mapFuture = app.main();
      await tester.pumpAndSettle();
      final mapboxMap = await mapFuture;
      var size = await mapboxMap.getSize();
      expect(size.width, tester.binding.renderView.size.width);
      expect(size.height, tester.binding.renderView.size.height);
    });

    testWidgets('reduceMemoryUse', (WidgetTester tester) async {
      final mapFuture = app.main();
      await tester.pumpAndSettle();
      final mapboxMap = await mapFuture;

      await mapboxMap.reduceMemoryUse();
    });
  }

  testWidgets('triggerRepaint', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    await mapboxMap.triggerRepaint();
  });

  testWidgets('PrefetchZoomDelta', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    await mapboxMap.setPrefetchZoomDelta(10);
    var prefetchZoomDelta = await mapboxMap.getPrefetchZoomDelta();
    expect(prefetchZoomDelta, 10);
  });

  testWidgets('MapOptions', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    var options = await mapboxMap.getMapOptions();
    if (Platform.isAndroid) {
      expect(options.orientation, NorthOrientation.UPWARDS);
      expect(options.constrainMode, ConstrainMode.HEIGHT_ONLY);
      expect(options.contextMode, isNull);
      expect(options.viewportMode, ViewportMode.DEFAULT);
    }
    expect(options.crossSourceCollisions, true);
    expect(options.pixelRatio, tester.binding.window.devicePixelRatio);
    expect(options.glyphsRasterizationOptions, isNull);
    expect(options.size!.width, isNotNull);
    expect(options.size!.height, isNotNull);
    if (Platform.isAndroid) {
      await mapboxMap.setConstrainMode(ConstrainMode.WIDTH_AND_HEIGHT);
      await mapboxMap.setNorthOrientation(NorthOrientation.DOWNWARDS);
      await mapboxMap.setViewportMode(ViewportMode.FLIPPED_Y);

      options = await mapboxMap.getMapOptions();
      expect(options.orientation, NorthOrientation.DOWNWARDS);
      expect(options.constrainMode, ConstrainMode.WIDTH_AND_HEIGHT);
      expect(options.viewportMode, ViewportMode.FLIPPED_Y);
    }
  });

  testWidgets('isGestureInProgress', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    if (Platform.isAndroid) {
      var isGestureInProgress = await mapboxMap.isGestureInProgress();
      expect(isGestureInProgress, false);
    }
    await mapboxMap.setGestureInProgress(true);
    if (Platform.isAndroid) {
      var isGestureInProgress = await mapboxMap.isGestureInProgress();
      expect(isGestureInProgress, true);
    }
  });

  testWidgets('isUserAnimationInProgress', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    if (Platform.isAndroid) {
      var isUserAnimationInProgress =
          await mapboxMap.isUserAnimationInProgress();
      expect(isUserAnimationInProgress, false);
    }
    await mapboxMap.setUserAnimationInProgress(true);
    if (Platform.isAndroid) {
      var isUserAnimationInProgress =
          await mapboxMap.isUserAnimationInProgress();
      expect(isUserAnimationInProgress, true);
    }
  });

  testWidgets('debugOptions', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    await mapboxMap.setDebug(
        [MapDebugOptions(data: MapDebugOptionsData.TILE_BORDERS)], true);
    var debugOptions = await mapboxMap.getDebug();
    expect(debugOptions.length, 1);
    expect(debugOptions.first!.data, MapDebugOptionsData.TILE_BORDERS);
  });

  testWidgets('featureState', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    var style = mapboxMap.style;
    var source = await rootBundle.loadString('assets/source.json');
    var layer = await rootBundle.loadString('assets/point_layer.json');

    app.events.resetOnStyleDataLoaded();
    app.events.resetOnMapIdle();
    style.addStyleSource('source', source);
    style.addStyleLayer(layer, null);

    await app.events.onSourceDataLoaded.future;
    await app.events.onMapIdle.future;

    await mapboxMap.setFeatureState(
        'source', 'custom', 'point', json.encode({'choose': true}));
    var featureState =
        await mapboxMap.getFeatureState('source', 'custom', 'point');
    var stateMap = json.decode(featureState);
    expect(stateMap.length, 1);
    expect(stateMap['choose'], true);

    await mapboxMap.removeFeatureState('source', 'custom', 'point', 'choose');
    featureState = await mapboxMap.getFeatureState('source', 'custom', 'point');
    stateMap = json.decode(featureState);
    expect(stateMap.length, 0);
  });

  testWidgets('MapboxMapsOptions', (WidgetTester tester) async {
    final _ = app.main();
    await tester.pumpAndSettle();

    var baseUrl = await MapboxMapsOptions.getBaseUrl();
    expect(baseUrl, 'https://api.mapbox.com');
    var accessToken = await MapboxOptions.getAccessToken();
    expect(accessToken, isNotNull);
  });

  testWidgets('queryRenderedFeatures', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    var style = mapboxMap.style;
    var options = CameraOptions(
        center: Point(coordinates: Position(-77.032667, 38.913175)).toJson(),
        zoom: 10);

    app.events.resetOnCameraChanged();
    mapboxMap.setCamera(options);
    await app.events.onCameraChanged.future;

    var source = await rootBundle.loadString('assets/source.json');
    var layer = await rootBundle.loadString('assets/point_layer.json');
    final ByteData bytes =
        await rootBundle.load('assets/symbols/custom-icon.png');
    final Uint8List list = bytes.buffer.asUint8List();
    await style.addStyleImage('icon', 1.0,
        MbxImage(width: 40, height: 40, data: list), true, [], [], null);

    app.events.resetOnSourceDataLoaded();
    app.events.resetOnMapIdle();
    style.addStyleSource('source', source);
    style.addStyleLayer(layer, null);
    await app.events.onSourceDataLoaded.future;
    await app.events.onMapIdle.future;

    var screenBox = ScreenBox(
        min: ScreenCoordinate(x: 0.0, y: 0.0),
        max: ScreenCoordinate(x: 500.0, y: 1000.0));
    var renderedQueryGeometry = RenderedQueryGeometry(
        value: json.encode(screenBox.encode()), type: Type.SCREEN_BOX);
    var query = await mapboxMap.queryRenderedFeatures(renderedQueryGeometry,
        RenderedQueryOptions(layerIds: ['points'], filter: null));
    expect(query.length, greaterThan(0));
    expect(query[0]!.queriedFeature.source, 'source');
    expect(query[0]!.queriedFeature.feature['id'], 'point');

    query = await mapboxMap.queryRenderedFeatures(
        RenderedQueryGeometry(
            value: json.encode(ScreenCoordinate(x: 0.0, y: 0.0).encode()),
            type: Type.SCREEN_COORDINATE),
        RenderedQueryOptions(layerIds: ['points'], filter: null));
    expect(query.length, 0);
    query = await mapboxMap.queryRenderedFeatures(
        RenderedQueryGeometry(
            value: json.encode([
              ScreenCoordinate(x: 0.0, y: 0.0).encode(),
              ScreenCoordinate(x: 1.0, y: 1.0).encode()
            ]),
            type: Type.LIST),
        RenderedQueryOptions(layerIds: ['points'], filter: null));
    expect(query.length, 0);
  });

  testWidgets('querySourceFeatures', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    var style = mapboxMap.style;
    var options = CameraOptions(
        center: Point(coordinates: Position(-77.032667, 38.913175)).toJson(),
        zoom: 10,
        pitch: 0);

    await app.events.onMapLoaded.future;

    app.events.resetOnCameraChanged();
    mapboxMap.setCamera(options);
    await app.events.onCameraChanged.future;

    var source = await rootBundle.loadString('assets/source.json');
    var layer = await rootBundle.loadString('assets/point_layer.json');

    app.events.resetOnSourceDataLoaded();
    app.events.resetOnMapIdle();
    style.addStyleSource('source', source);
    style.addStyleLayer(layer, null);
    await app.events.onSourceDataLoaded.future;
    await app.events.onMapIdle.future;

    var query = await mapboxMap.querySourceFeatures(
        'source', SourceQueryOptions(filter: ''));
    expect(query.length, greaterThan(0));
    expect(query[0]!.queriedFeature.source, 'source');
    expect(query[0]!.queriedFeature.feature['id'], 'point');
  });

  testWidgets('queryFeatureExtensions', (WidgetTester tester) async {
    final mapFuture = app.main();
    await tester.pumpAndSettle();
    final mapboxMap = await mapFuture;
    var style = mapboxMap.style;
    var source =
        await rootBundle.loadString('assets/cluster/cluster_source.json');
    var layer =
        await rootBundle.loadString('assets/cluster/cluster_layer.json');
    var clusterCountLayer =
        await rootBundle.loadString('assets/cluster/cluster_count_layer.json');
    var unclusteredLayer = await rootBundle
        .loadString('assets/cluster/unclustered_point_layer.json');

    app.events.resetOnSourceDataLoaded();
    app.events.resetOnMapIdle();
    style.addStyleSource("earthquakes", source);
    style.addStyleLayer(layer, null);
    style.addStyleLayer(clusterCountLayer, null);
    style.addStyleLayer(unclusteredLayer, null);
    await app.events.onSourceDataLoaded.future;
    await app.events.onMapIdle.future;

    var feature = {
      "id": 1249,
      "properties": {
        "point_count_abbreviated": "10",
        "cluster_id": 1249,
        "cluster": true,
        "point_count": 10
      },
      "geometry": {
        "type": "Point",
        "coordinates": [-29.794921875, 59.220934076150456]
      },
      "type": "Feature"
    };

    var clusterLeaves = await mapboxMap.getGeoJsonClusterLeaves(
        'earthquakes', feature, null, null);
    expect(clusterLeaves.featureCollection!.length, 10);

    var clusterChildren =
        await mapboxMap.getGeoJsonClusterChildren('earthquakes', feature);
    expect(clusterChildren.featureCollection!.length, 2);

    var clusterExpansionZoom =
        await mapboxMap.getGeoJsonClusterExpansionZoom('earthquakes', feature);
    expect(clusterExpansionZoom.value, '1');
  });
}
