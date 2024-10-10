import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClassDropDownMenu extends StatefulWidget {
  final ValueChanged<String> onClassSelected; // 선택된 값을 전달하기 위한 콜백 추가

  const ClassDropDownMenu({super.key, required this.onClassSelected});

  @override
  _ClassDropDownMenuState createState() => _ClassDropDownMenuState();
}

class _ClassDropDownMenuState extends State<ClassDropDownMenu> {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  bool _isDropdownOpen = false;

  String _selectedValue = '1반';

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _toggleDropdown() {
    if (_isDropdownOpen) {
      _removeOverlay();
    } else {
      _createOverlay();
    }
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
    });
  }

  void _createOverlay() {
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        width: 54,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          child: Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2, color: Color(0xFF4D9E8A)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDropdownItem('1반'),
                _buildDropdownItem('2반'),
                _buildDropdownItem('3반'),
                _buildDropdownItem('4반'),
                _buildDropdownItem('5반'),
                _buildDropdownItem('6반'),
                _buildDropdownItem('7반'),
                _buildDropdownItem('8반'),
                _buildDropdownItem('9반'),
                _buildDropdownItem('10반'),
              ],
            ),
          ),
        ),
      ),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  Widget _buildDropdownItem(String value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedValue = value;
          widget.onClassSelected(value); // 선택된 반 값을 콜백으로 전달
          _isDropdownOpen = false; // 드롭다운 상태를 바로 변경
        });
        _removeOverlay(); // 드롭다운 닫기
      },
      child: Padding(
        padding: value == "1반"
            ? const EdgeInsets.only(top: 5, left: 10)
            : value == "10반"
                ? const EdgeInsets.only(bottom: 5, left: 10, top: 5)
                : const EdgeInsets.only(top: 5, left: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 12,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            value == "1반"
                ? Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SvgPicture.asset(
                      'assets/trip_schdule_icons/arrow_drop_up.svg',
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _toggleDropdown,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xff4D9E8A),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 3, 0, 1),
                    child: Text(
                      _selectedValue,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF1A1A1A),
                        fontSize: 12,
                        fontFamily: 'Ownglyph okticon',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 3, 5, 3),
                    child: SvgPicture.asset(
                        'assets/trip_schdule_icons/arrow_drop_down.svg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
