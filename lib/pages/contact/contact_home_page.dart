import 'package:flutter/material.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/pages/contact/contact_page.dart';
import 'package:going_home_app/pages/setting/setting_page.dart';
import 'package:going_home_app/widgets/button/widely_button.dart';

class ContactHomePage extends StatelessWidget {
  const ContactHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Going Home'),
        leading: IconButton(
          icon: const Icon(Icons.add, size: 32),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              builder: (context) => SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: WidelyButton(
                        label: "招待リンクを送る",
                        height: 54,
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: kWhite),
                        onPressed: () {
                          // TODO: 招待リンクを送る
                          // https://qiita.com/tokkun5552/items/f27ddb159cb3228bf6b2
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: TextField(
                        controller: TextEditingController(),
                        decoration: const InputDecoration(
                          hintText: 'IDを検索',
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return const ListTile(
                            leading: CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                'https://picsum.photos/200/300',
                              ),
                            ),
                            title: Text('名前'),
                            subtitle: Text('ID'),
                            trailing: Icon(Icons.add),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, size: 24),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SettingPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                'お気に入り',
                style: Theme.of(context).textTheme.headline5,
              ),
              for (var i = 0; i < 2; i++) contactCard(context),
              const SizedBox(height: 30),
              Text(
                '連絡一覧',
                style: Theme.of(context).textTheme.headline5,
              ),
              for (var i = 0; i < 10; i++) contactCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return const ContactPage();
              },
            ),
          );
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text('西峰綾汰'),
            ),
          ),
        ),
      ),
    );
  }
}
