import 'package:flutter/material.dart';
import 'package:flutter_application_7/email_view_screen.dart';

class EmailSearchScreen extends StatefulWidget {
  const EmailSearchScreen({super.key});

  @override
  State<EmailSearchScreen> createState() => _EmailSearchScreenState();
}

class _EmailSearchScreenState extends State<EmailSearchScreen> {
  String searchQuery = '';

  final List<EmailData> emails = [
    EmailData(
      avatarText: 'G',
      avatarColor: Colors.orange,
      sender: 'GitLab',
      time: '10:14',
      subject: 'gitlab.com sign-in from new location',
      preview: 'Someone signed in to your gitlab.com ac...',
    ),
    EmailData(
      avatarText: 'О',
      avatarColor: Colors.blue,
      sender: 'Оповещения',
      time: '75 нов.',
      subject: 'Оповещения о вакансиях LinkedIn...',
      preview: '',
    ),
    EmailData(
      avatarText: 'A',
      avatarColor: Colors.purple,
      sender: 'App Store Connect',
      time: '00:22',
      subject: 'The uploaded build for Diwo App has o...',
      preview: 'Hello, We noticed one or more issues wit...',
    ),
    EmailData(
      avatarText: 'L',
      avatarColor: Colors.blue,
      sender: 'LinkedIn',
      time: '9 апр.',
      subject: 'Оповещение, связанное с безопасно...',
      preview: 'Оповещение, связанное с безопасност...',
    ),
    EmailData(
      avatarText: 'A',
      avatarColor: Colors.purple,
      sender: 'App Store Connect',
      time: '9 апр.',
      subject: 'The uploaded build for Tel Med Doc ha...',
      preview: 'Hello, We noticed one or more issues wit...',
    ),
    EmailData(
      avatarText: 'A',
      avatarColor: Colors.purple,
      sender: 'App Store Connect',
      time: '8 апр.',
      subject: 'The uploaded build for Pain Statistics...',
      preview: 'Hello, We noticed one or more issues wit...',
    ),
    EmailData(
      avatarText: 'L',
      avatarColor: Colors.blue,
      sender: 'LinkedIn',
      time: 'Написать',
      subject: 'Dominik Roszkowski и другие участн...',
      preview: '',
    ),
  ];

  List<EmailData> get filteredEmails {
    if (searchQuery.isEmpty) return emails;
    return emails.where((email) {
      return email.sender.toLowerCase().contains(searchQuery.toLowerCase()) ||
          email.subject.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        width: 320,
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF2A1B14),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.only(top: 18, bottom: 24),
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  'Gmail',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Divider(height: 1, thickness: 1, color: Color(0xFF5A4636)),
              const SizedBox(height: 14),

              const _DrawerMenuItem(
                icon: Icons.inbox_outlined,
                title: 'Несортированные',
                selected: true,
              ),
              const _DrawerMenuItem(
                icon: Icons.local_offer_outlined,
                title: 'Промоакции',
              ),
              const _DrawerMenuItem(
                icon: Icons.people_outline,
                title: 'Соцсети',
              ),
              const _DrawerMenuItem(
                icon: Icons.info_outline,
                title: 'Оповещения',
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 10),
                child: Text(
                  'Все ярлыки',
                  style: TextStyle(color: Color(0xFFB9A99A), fontSize: 14),
                ),
              ),

              const _DrawerMenuItem(
                icon: Icons.star_border,
                title: 'Помеченные',
              ),
              const _DrawerMenuItem(icon: Icons.schedule, title: 'Отложенные'),
              const _DrawerMenuItem(icon: Icons.label_outline, title: 'Важные'),
              const _DrawerMenuItem(
                icon: Icons.shopping_bag_outlined,
                title: 'Покупки',
              ),
              const _DrawerMenuItem(
                icon: Icons.send_outlined,
                title: 'Отправленные',
              ),
              const _DrawerMenuItem(
                icon: Icons.schedule_send_outlined,
                title: 'Запланированные',
              ),
              const _DrawerMenuItem(
                icon: Icons.outbox_outlined,
                title: 'Исходящие',
              ),
              const _DrawerMenuItem(
                icon: Icons.description_outlined,
                title: 'Черновики',
              ),
              const _DrawerMenuItem(
                icon: Icons.mail_outline,
                title: 'Вся почта',
              ),
              const _DrawerMenuItem(icon: Icons.report_outlined, title: 'Спам'),
              const _DrawerMenuItem(
                icon: Icons.delete_outline,
                title: 'Корзина',
              ),
            ],
          ),
        ),
      ),
      drawerScrimColor: Colors.transparent,

      appBar: AppBar(
        title: const Text(
          'Поиск в почте',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Поиск',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            color: Colors.grey[50],
            child: const Text(
              'Несортированные',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF6B6B6B),
                letterSpacing: 0.5,
              ),
            ),
          ),
          Expanded(
            child: filteredEmails.isEmpty
                ? const Center(
                    child: Text(
                      'Ничего не найдено',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    itemCount: filteredEmails.length,
                    itemBuilder: (context, index) {
                      return EmailItem(email: filteredEmails[index]);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class EmailData {
  final String avatarText;
  final Color avatarColor;
  final String sender;
  final String time;
  final String subject;
  final String preview;

  EmailData({
    required this.avatarText,
    required this.avatarColor,
    required this.sender,
    required this.time,
    required this.subject,
    required this.preview,
  });
}

class EmailItem extends StatelessWidget {
  final EmailData email;

  const EmailItem({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => EmailViewScreen()));
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey[200]!, width: 0.5),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: email.avatarColor,
              radius: 22,
              child: Text(
                email.avatarText,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        email.sender,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        email.time,
                        style: TextStyle(color: Colors.grey[500], fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email.subject,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (email.preview.isNotEmpty) ...[
                    const SizedBox(height: 2),
                    Text(
                      email.preview,
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;

  const _DrawerMenuItem({
    required this.icon,
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = selected ? const Color(0xFFD8C2AE) : Colors.white;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: selected ? const Color(0xFF5C4333) : Colors.transparent,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            Icon(icon, color: textColor, size: 24),
            const SizedBox(width: 18),
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
