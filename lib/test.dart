import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paynet_clone/ui/MainScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PinCodeWidget extends StatefulWidget {
  const PinCodeWidget({super.key});

  @override
  State<PinCodeWidget> createState() => _PinCodeWidgetState();
}

class _PinCodeWidgetState extends State<PinCodeWidget> {
  String enteredPin = '';
  bool isPinVisible = false;
  String? savedPin;
  int attempts = 3;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    _checkSavedPin();
  }

  Future<void> _checkSavedPin() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      savedPin = prefs.getString('pin_code');
    });
  }

  Future<void> _savePinCode(String pin) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('pin_code', pin);
  }

  void _forgotPin() {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.bottomSlide,
      title: 'Parolni unutdingizmi?',
      desc: 'Yangi PIN kodni yaratishingiz mumkin',
      btnOkText: 'Yangi PIN yaratish',
      btnCancelText: 'Bekor qilish',
      btnOkOnPress: () {
        // Reset the saved PIN and allow new PIN creation
        _resetPin();
      },
      btnCancelOnPress: () {},
    ).show();
  }

  Future<void> _resetPin() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('pin_code');
    setState(() {
      savedPin = null;
      enteredPin = '';
      attempts = 3;
    });
  }

  void _checkPin() {
    if (savedPin == null) {
      // First time PIN setup
      _savePinCode(enteredPin);
      _showSuccessDialog('PIN kod muvaffaqiyatli saqlandi');
    } else {
      // Verify PIN
      if (enteredPin == savedPin) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const ControlAllScreen()));
      } else {
        attempts--;

        if (attempts > 0) {
          _showErrorDialog('Noto\'g\'ri PIN. Qolgan urinishlar: $attempts');
        } else {
          _showErrorDialog(
            'Urinishlar soni tugadi. Keyinroq urinib ko\'ring.',
          );
        }

        // Reset entered PIN
        enteredPin = '';
      }
    }
  }

  void _showSuccessDialog(String message) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.bottomSlide,
      title: message,
      desc: 'Iltimoz keyingi safar ham shu koddan foydalaning',
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ControlAllScreen(),
            ));
      },
    ).show();
  }

  void _showErrorDialog(String message) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.bottomSlide,
      title: 'Kod xato kiritild',
      desc: 'Iltimos qaytadan urinib ko\'ring',
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  Widget numButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (enteredPin.length < 4) {
              enteredPin += number.toString();
            }

            // Only check PIN when 4 digits are entered
            if (enteredPin.length == 4) {
              _checkPin();
            }
          });
        },
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child:
                  Image.asset(width: 75, height: 75, 'assets/images/block.png'),
            ),
            const SizedBox(height: 10),
            Text(
              savedPin == null
                  ? 'Yangi PIN kodni kiriting'
                  : 'PIN kodni kiriting',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Telefon raqamingiz',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            const Text(
              '+998 88 ... .. 22',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            const Spacer(),

            /// pin code area
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) {
                  return Container(
                    margin:
                        const EdgeInsets.only(bottom: 5, left: 10, right: 14),
                    width: isPinVisible ? 50 : 16,
                    height: isPinVisible ? 50 : 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index < enteredPin.length
                          ? isPinVisible
                              ? Colors.red
                              : const Color.fromARGB(255, 72, 199, 52)
                          : CupertinoColors.activeBlue.withOpacity(0.1),
                    ),
                    child: isPinVisible && index < enteredPin.length
                        ? Text(
                            enteredPin[index],
                            style: const TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        : null,
                  );
                },
              ),
            ),

            const SizedBox(height: 100),
            SizedBox(height: isPinVisible ? 50.0 : 8.0),

            /// digits
            for (var i = 0; i < 3; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    3,
                    (index) => numButton(1 + 3 * i + index),
                  ).toList(),
                ),
              ),

            /// 0 digit with back remove
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextButton(onPressed: null, child: SizedBox()),
                  numButton(0),
                  TextButton(
                    onPressed: () {
                      setState(
                        () {
                          if (enteredPin.isNotEmpty) {
                            enteredPin =
                                enteredPin.substring(0, enteredPin.length - 1);
                          }
                        },
                      );
                    },
                    child: const Icon(
                      Icons.backspace,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),

            // Forgot PIN button
            TextButton(
              onPressed: _forgotPin,
              child: const Text(
                'Parolni unutdingizmi?',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
