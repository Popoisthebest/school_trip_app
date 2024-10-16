import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageDropDownMenu extends StatefulWidget {
  final String initialValue;
  final ValueChanged<String> onLanguageSelected;

  const LanguageDropDownMenu(
      {super.key,
      required this.onLanguageSelected,
      required this.initialValue});

  @override
  _LanguageDropDownMenuState createState() => _LanguageDropDownMenuState();
}

class _LanguageDropDownMenuState extends State<LanguageDropDownMenu> {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  bool _isDropdownOpen = false;

  late String _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
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
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        width: 100,
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
                _buildDropdownItem('한국어'),
                _buildDropdownItem('영어'),
                _buildDropdownItem('일본어'),
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
          widget.onLanguageSelected(value);
          _isDropdownOpen = false;
        });
        _removeOverlay();
      },
      child: Padding(
        padding: value == "한국어"
            ? const EdgeInsets.only(top: 7.5, left: 13)
            : value == "일본어"
                ? const EdgeInsets.only(bottom: 7.5, left: 13, top: 7)
                : const EdgeInsets.only(top: 7, left: 13),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 16,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            value == "한국어"
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _selectedValue,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 16,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(width: 10),
            SvgPicture.asset('assets/tool_screen_icons/downcare_icon.svg'),
          ],
        ),
      ),
    );
  }
}
