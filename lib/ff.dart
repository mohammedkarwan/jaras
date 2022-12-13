import 'package:flutter/material.dart';

class ff extends StatefulWidget {
  const ff({Key? key}) : super(key: key);

  @override
  State<ff> createState() => _ffState();
}

List<String> name = ['ibrahem', 'ahmed', 'osama', 'khaled', 'welcome'];
List<int> dd = [1, 2, 3, 4, 5];

class _ffState extends State<ff> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3)).then((value) {
      dd.add(6);
      name.add('sasss');
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.arrow_back),
        title: Text('App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return conataner(name[index], dd[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 40,
                    );
                  },
                  itemCount: dd.length),
            ],
          ),
        ),
      ),
    );
  }
}

Widget conataner(String name, int ddber) => Container(
      color: Colors.blueGrey,
      child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: AlignmentDirectional.bottomEnd,
                    end: AlignmentDirectional.center,
                    colors: [
                      Colors.blueGrey,
                      Colors.amber,
                    ])),
          ),
          subtitle: Text('$ddber'),
          title: Text('$name'),
          trailing: IconButton(
              onPressed: () {
                print('55555');
              },
              icon: Icon(Icons.delete))),
    );
