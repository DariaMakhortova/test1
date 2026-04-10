import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MailMenuScreen(),
    );
  }
}

class MailMenuScreen extends StatelessWidget {
  const MailMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C120D),
      body: SafeArea(
        child: Row(
          children: [
            Container(
              width: 320,
              color: const Color(0xFF2A1B14),
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
                  const Divider(
                    height: 1,
                    thickness: 1,
                    color: Color(0xFF5A4636),
                  ),
                  const SizedBox(height: 14),

                  /// ОСНОВНЫЕ
                  const _MenuItem(
                    icon: Icons.inbox_outlined,
                    title: 'Несортированные',
                    selected: true,
                  ),
                  const _MenuItem(
                    icon: Icons.local_offer_outlined,
                    title: 'Промоакции',
                  ),
                  const _MenuItem(icon: Icons.people_outline, title: 'Соцсети'),
                  const _MenuItem(
                    icon: Icons.info_outline,
                    title: 'Оповещения',
                  ),

                  /// РАЗДЕЛ
                  const Padding(
                    padding: EdgeInsets.fromLTRB(24, 22, 24, 10),
                    child: Text(
                      'Все ярлыки',
                      style: TextStyle(color: Color(0xFFB9A99A), fontSize: 14),
                    ),
                  ),

                  /// СПИСОК
                  const _MenuItem(icon: Icons.star_border, title: 'Помеченные'),
                  const _MenuItem(icon: Icons.schedule, title: 'Отложенные'),
                  const _MenuItem(icon: Icons.label_outline, title: 'Важные'),
                  const _MenuItem(
                    icon: Icons.shopping_bag_outlined,
                    title: 'Покупки',
                  ),
                  const _MenuItem(
                    icon: Icons.send_outlined,
                    title: 'Отправленные',
                  ),
                  const _MenuItem(
                    icon: Icons.schedule_send_outlined,
                    title: 'Запланированные',
                  ),
                  const _MenuItem(
                    icon: Icons.outbox_outlined,
                    title: 'Исходящие',
                  ),
                  const _MenuItem(
                    icon: Icons.description_outlined,
                    title: 'Черновики',
                  ),
                  const _MenuItem(icon: Icons.mail_outline, title: 'Вся почта'),
                  const _MenuItem(icon: Icons.report_outlined, title: 'Спам'),
                  const _MenuItem(icon: Icons.delete_outline, title: 'Корзина'),
                ],
              ),
            ),

            /// ПУСТОЕ ПРОСТРАНСТВО СПРАВА (как на скрине)
            Expanded(child: Container(color: const Color(0xFF1C120D))),
          ],
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;

  const _MenuItem({
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
