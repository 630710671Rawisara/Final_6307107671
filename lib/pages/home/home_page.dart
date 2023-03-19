import 'dart:convert';
import 'package:flutter/material.dart';
import '../../models/poll.dart';
import '../my_scaffold.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Poll>? _polls;
  var _isLoading = false;

  List<Poll> _poll = [
    Poll(
      id: 1,
      question: 'บุคคลใดที่คุณจะสนับสนุนให้เป็นนายกรัฐมนตรีในการเลือกตั้งครั้งนี้',
      choices: [
        'พลเอกประยุทธ์ จันทร์โอชา',
        'นายพิธา ลิ้มเจริญรัตน์',
        'นายอนุทิน ชาญวีรกูล',
        'นายกรณ์ จาติกวณิช',
        'พล.ต.อ.เสรีพิศุทธ์ เตมียเวส',
        'นพ.ชลน่าน ศรีแก้ว',
        'คุณหญิงสุดารัตน์ เกยุราพันธุ์',
        'น.ส.แพทองธาร ชินวัตร',
        'อื่นๆ',
        'ยังหาคนที่เหมาะสมไม่ได้'
      ],
    ),
  ];

  get http => null;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    // todo: Load list of polls here
    Uri uri = Uri.parse('https://cpsu-test-api.herokuapp.com/api/polls');
    var res = await http.get(uri);
    //เมือมีการคอลฟังชั่นหรือฟิวเจอร์ที่มีการรีเทิร์นค่า futrue กลับมา ต้องใช้ await และ ใส่หัวว่า async มันจะทำให้เป็น Response แทน futrue
    if (res.statusCode == 200) {
      List result = jsonDecode(res.body);
      setState(() {
        _polls =
            result.map((item) => Poll.fromJson(item)).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Column(
        children: [
          Image.network('https://cpsu-test-api.herokuapp.com/images/election.jpg'),
          Expanded(
            child: Stack(
              children: [
                if (_poll != null) _buildList(),
                if (_isLoading) _buildProgress(),
              ],
            ),
          ),

        ],
      ),
    );
  }

  ListView _buildList() {

    return ListView.builder(
      itemCount: _poll.length,
      itemBuilder: (BuildContext context, int index) {
        // todo: Create your poll item by replacing this Container()
        return Card(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('')
                  ],
                ),
              ),
            ],

          ),
        );
      },
    );
  }

  Widget _builderListItem(BuildContext context, int index) {
    var poll = _polls![index];

    return Container(
      margin: const EdgeInsets.all(8.0),
      color: Colors.black12,
      child: Column(
        children: [
          Text('${poll.question.toString()}'),
        ],
      ),
    );
  }

  Widget _buildProgress() {
    return Container(
      color: Colors.black.withOpacity(0.6),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CircularProgressIndicator(color: Colors.white),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('รอสักครู่', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
