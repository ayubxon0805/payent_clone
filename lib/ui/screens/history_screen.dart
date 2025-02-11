import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  DateTime _currentMonth = DateTime.now();
  int _selectedExpenseIndex = 0;

  void _navigateMonth(bool isNext) {
    setState(() {
      _currentMonth = isNext
          ? DateTime(_currentMonth.year, _currentMonth.month + 1)
          : DateTime(_currentMonth.year, _currentMonth.month - 1);
    });
  }

  void _selectExpenseCategory(int index) {
    setState(() {
      _selectedExpenseIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 242),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Tarix',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          )
        ],
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.chevron_left),
                  onPressed: () => _navigateMonth(false),
                ),
                Text(
                  '${_currentMonth.year}-${_currentMonth.month.toString().padLeft(2, '0')}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.chevron_right),
                  onPressed: () => _navigateMonth(true),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(3, (index) {
                  return GestureDetector(
                    onTap: () => _selectExpenseCategory(index),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: maxWidth * 0.01),
                      child: Container(
                        width: maxWidth * 0.25,
                        height: maxHeight * 0.04,
                        decoration: BoxDecoration(
                          color: _selectedExpenseIndex == index
                              ? Colors.green
                              : Colors.grey[300],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            _getExpenseCategoryText(index),
                            style: TextStyle(
                              color: _selectedExpenseIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            // Your existing history list or content would go here

            Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 3,
                    color: Color.fromARGB(255, 234, 232, 232)),
              ], borderRadius: BorderRadius.circular(15), color: Colors.white),
              width: maxWidth * 0.9,
              height: maxHeight * 0.09,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Text('Fevral oyidagi xarajatlar'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      '1 219 454 so\'m',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('31-yanvar'),
            ),
            Container(
              width: maxWidth,
              height: maxHeight * 0.25,
              color: Colors.white,
              child: Column(
                children: [
                  textTitle('UZUMBANK HUMO2HUMO P2P', "tashqi operasiya *4293",
                      "+24 000 so'm", Colors.green),
                  textTitle('PAYME OPLATA', "tashqi operasiya *4293",
                      "-66 970 so'm", Colors.red),
                  textTitle('HUMO to VISA', "tashqi operasiya *4293",
                      "+24 000 so'm", Colors.red),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('30-yanvar'),
            ),
            Container(
              width: maxWidth,
              height: maxHeight * 0.25,
              color: Colors.white,
              child: Column(
                children: [
                  textTitle('UZUMBANK  ATTO OPLATA', "tashqi operasiya *4293",
                      "-1 700 so'm", Colors.red),
                  textTitle('HAMKOR HUMO P2P', "tashqi operasiya *4293",
                      "+6 700 so'm", Colors.green),
                  textTitle('HUMO to VISA', "tashqi operasiya *4293",
                      "-300 000 so'm", Colors.red),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('28-yanvar'),
            ),
            Container(
              width: maxWidth,
              height: maxHeight * 0.25,
              color: Colors.white,
              child: Column(
                children: [
                  textTitle('PAYME P2P UZCARD HUMO', "tashqi operasiya *4293",
                      "+60 000 so'm", Colors.green),
                  textTitle('alifmobiuz u2h', "tashqi operasiya *4293",
                      "+20 970 so'm", Colors.green),
                  textTitle('HUMO to VISA', "tashqi operasiya *4293",
                      "+24 000 so'm", Colors.red),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String _getExpenseCategoryText(int index) {
    switch (index) {
      case 0:
        return 'Xarajatlar';
      case 1:
        return 'To\'ldirish';
      case 2:
        return 'Barchasi';
      default:
        return '';
    }
  }

  Widget textTitle(String title, String subtitle, String amount, Color color) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(subtitle),
      trailing: Text(
        amount,
        style:
            TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
