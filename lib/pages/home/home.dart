import 'package:flutter/material.dart';
import 'package:election_2566_poll/models/poll.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Poll> _poll = [
    Poll(
      id: 1,
      question:
          'บุคคลใดที่คุณจะสนับสนุนให้เป็นนายกรัฐมนตรีในการเลือกตั้งครั้งนี้',
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
    Poll(
        id: 2,
        question: 'ในการเลือกตั้ง ส.ส. แบบแบ่งเขต คุณจะเลือกผู้สมัครจากพรรคการเมืองใด',
        choices:  [
          'พรรคก้าวไกล',
          'พรรคเพื่อไทย',
          'พรรคไทยสร้างไทย',
          'พรรคประชาธิปัตย์',
          'พรรคเสรีรวมไทย',
          'พรรคพลังประชารัฐ',
          'พรรครวมไทยสร้างชาติ',
          'พรรคภูมิใจไทย',
          'อื่นๆ',
          'ยังไม่ได้ตัดสินใจ'
        ],
    ),
    Poll(
        id: 3,
        question: 'ในการเลือกตั้ง ส.ส. แบบบัญชีรายชื่อ คุณจะเลือกผู้สมัครจากพรรคการเมืองใด',
        choices: [
          'พรรคประชาธิปัตย์',
          'พรรคพลังประชารัฐ',
          'พรรคไทยสร้างไทย',
          'พรรครวมไทยสร้างชาติ',
          'พรรคเพื่อไทย',
          'พรรคก้าวไกล',
          'พรรคภูมิใจไทย',
          'พรรคเสรีรวมไทย',
          'อื่นๆ',
          'ยังไม่ได้ตัดสินใจ'
        ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _poll.length,
          itemBuilder: (BuildContext context, int index) {
            var poll = _poll[index];
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                  'https://cpsu-test-api.herokuapp.com/images/election.jpg'),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Container(
                        width: 600,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('${poll.id.toString()}. ${poll.question}'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[0].toString()}'),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[0].toString()}'),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[1].toString()}'),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[2].toString()}'),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[3].toString()}'),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[4].toString()}'),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[5].toString()}'),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[6].toString()}'),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[7].toString()}'),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[8].toString()}'),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      child: OutlinedButton(
                                        onPressed: () {  },
                                        child: Text('${poll.choices[9].toString()}'),

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ),
                ],
              ),
            );
          },
      ),
    );
  }
}
