import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CenteredMapComponent extends StatefulWidget {
  final LatLng centerPosition; // 지도의 가운데 위치
  final String locationName; // 장소 이름
  final Function(GoogleMapController)? onMapCreated; // 지도 생성 시 호출되는 함수

  const CenteredMapComponent({
    super.key,
    required this.centerPosition,
    required this.locationName,
    this.onMapCreated,
  });

  @override
  _CenteredMapComponentState createState() => _CenteredMapComponentState();
}

class _CenteredMapComponentState extends State<CenteredMapComponent> {
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: widget.centerPosition, // 파라미터로 전달된 중심 위치
        zoom: 15.0, // 초기 줌 레벨
      ),
      onMapCreated: (controller) {
        _mapController = controller;
        if (widget.onMapCreated != null) {
          widget.onMapCreated!(controller);
        }

        // 마커의 정보 창을 지도가 생성된 후 500ms 후에 표시
        Future.delayed(const Duration(milliseconds: 500), () {
          _mapController.showMarkerInfoWindow(const MarkerId('center_marker'));
        });
      },
      markers: {
        Marker(
          markerId: const MarkerId('center_marker'),
          position: widget.centerPosition, // 전달된 위치에 마커 표시
          infoWindow: InfoWindow(
            title: widget.locationName, // 전달된 장소 이름을 마커 정보창에 표시
          ),
        ),
      },
    );
  }
}
