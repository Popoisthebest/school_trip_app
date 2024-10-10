import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClassDropDownMenu extends StatefulWidget {
  const ClassDropDownMenu({super.key});

  @override
  _ClassDropDownMenuState createState() => _ClassDropDownMenuState();
}

class _ClassDropDownMenuState extends State<ClassDropDownMenu> {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  bool _isDropdownOpen = false;

  // 선택한 값 관리
  String _selectedValue = '1반';

  String getSelectedValue() {
    return _selectedValue;
  }

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
    // 드롭다운 메뉴의 위치를 CompositedTransformFollower가 버튼과 동일하게 맞춰줌
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        width: 200,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: const Offset(0, 10), // 버튼과 메뉴 사이의 간격 조정
          child: Material(
            elevation: 4.0,
            child: Column(
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

  // 드롭다운 해제
  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  // 드롭다운 항목 빌드
  Widget _buildDropdownItem(String value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedValue = value;
        });
        _toggleDropdown(); // 드롭다운 닫기
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.red,
        ),
        child: Text(value),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _toggleDropdown, // 버튼 클릭 시 드롭다운 표시/숨기기
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
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
                child: Row(
                  children: [
                    Text(
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
                    const SizedBox(width: 4),
                    SvgPicture.asset(
                        'assets/trip_schdule_icons/arrow_drop_down.svg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
