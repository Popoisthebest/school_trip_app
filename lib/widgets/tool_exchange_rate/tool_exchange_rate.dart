import 'package:flutter/material.dart';

class ExchangeRate extends StatefulWidget {
  const ExchangeRate({super.key});

  @override
  _ExchangeRateState createState() => _ExchangeRateState();
}

class _ExchangeRateState extends State<ExchangeRate> {
  final TextEditingController koreaController = TextEditingController();
  final TextEditingController japanController =
      TextEditingController(text: '100');
  final TextEditingController usaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    double initialJapanValue = double.tryParse(japanController.text) ?? 0;
    updateExchangeRates(initialJapanValue, 9.1128, 0.0067, isFromJapan: true);
  }

  void updateExchangeRates(
      double value, double exchangeRateToKorea, double exchangeRateToUsa,
      {bool isFromJapan = false,
      bool isFromKorea = false,
      bool isFromUsa = false}) {
    setState(() {
      if (isFromJapan) {
        koreaController.text = (value * exchangeRateToKorea).toStringAsFixed(2);
        usaController.text = (value * exchangeRateToUsa).toStringAsFixed(2);
      } else if (isFromKorea) {
        japanController.text = (value / exchangeRateToKorea).toStringAsFixed(2);
        usaController.text = (value / exchangeRateToKorea * exchangeRateToUsa)
            .toStringAsFixed(2);
      } else if (isFromUsa) {
        japanController.text = (value / exchangeRateToUsa).toStringAsFixed(2);
        koreaController.text = (value / exchangeRateToUsa * exchangeRateToKorea)
            .toStringAsFixed(2);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildExchangeRateRow(
          'korea',
          'KRW',
          '한국 원',
          '₩',
          koreaController,
          (value) {
            double input = double.tryParse(value) ?? 0;
            updateExchangeRates(input, 9.11, 0.0067, isFromKorea: true);
          },
        ),
        const SizedBox(height: 23),
        _buildExchangeRateRow(
          'japan',
          'JPY',
          '일본 엔',
          '¥',
          japanController,
          (value) {
            double input = double.tryParse(value) ?? 0;
            updateExchangeRates(input, 9.11, 0.0067, isFromJapan: true);
          },
        ),
        const SizedBox(height: 23),
        _buildExchangeRateRow(
          'usa',
          'USD',
          '미국 달러',
          '\$',
          usaController,
          (value) {
            double input = double.tryParse(value) ?? 0;
            updateExchangeRates(input, 9.11, 0.0067, isFromUsa: true);
          },
        ),
      ],
    );
  }

  Widget _buildExchangeRateRow(
      String nation,
      String enMoneyUnit,
      String moneyNation,
      String currencySymbol,
      TextEditingController controller,
      Function(String) onChanged) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 48,
                  height: 40,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFE0E0E0)),
                    ),
                  ),
                  child: Image.asset(
                    'assets/nation_images/$nation.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  enMoneyUnit,
                  style: const TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 20,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 200,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.end,
                      controller: controller,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          controller.text = value;
                          controller.selection = TextSelection.fromPosition(
                              TextPosition(offset: value.length));
                        });
                        onChanged(value);
                      },
                      style: const TextStyle(
                        color: Color(0xFF000000), // 입력 중일 때는 검은색으로 변경
                        fontSize: 20,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      decoration: const InputDecoration.collapsed(hintText: ''),
                    ),
                  ),
                  Text(
                    ' $currencySymbol',
                    style: const TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 20,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              moneyNation,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
      ],
    );
  }
}
