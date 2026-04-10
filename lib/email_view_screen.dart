import 'package:flutter/material.dart';

class EmailViewScreen extends StatelessWidget {
  const EmailViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1710),
      body: CustomScrollView(
        slivers: [
          // AppBar
          SliverAppBar(
            backgroundColor: const Color(0xFF1E1710),
            floating: false,
            pinned: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white70),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.archive_outlined, color: Colors.white70),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.delete_outline, color: Colors.white70),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.mark_email_unread_outlined, color: Colors.white70),
                onPressed: () {},
              ),
              PopupMenuButton<String>(
                icon: const Icon(Icons.more_vert, color: Colors.white70),
                onSelected: (value) {},
                itemBuilder: (context) => [
                  const PopupMenuItem(value: 'move', child: Text('Переместить')),
                  const PopupMenuItem(value: 'spam', child: Text('Спам')),
                  const PopupMenuItem(value: 'settings', child: Text('Настройки')),
                ],
              ),
            ],
          ),
          
          // Контент письма
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Заголовок письма
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'gitlab.com sign-in from new location',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                height: 1.3,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFF8B6F47),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Входящие',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.star_border, color: Colors.white70),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                // Информация об отправителе
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A2119),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Аватар
                          Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                              color: Color(0xFF8B8B8B),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          const SizedBox(width: 12),
                          // Информация
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'GitLab',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      '10:14',
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    const Text(
                                      'кому: мне',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white54,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // Действия
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.sentiment_satisfied_alt_outlined, color: Colors.white70),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.reply, color: Colors.white70),
                                onPressed: () {},
                              ),
                              PopupMenuButton<String>(
                                icon: const Icon(Icons.more_vert, color: Colors.white70),
                                onSelected: (value) {},
                                itemBuilder: (context) => [
                                  const PopupMenuItem(value: 'reply_all', child: Text('Ответить всем')),
                                  const PopupMenuItem(value: 'forward', child: Text('Переслать')),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      // Баннер перевода
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3A2F23),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: const Color(0xFF4A3D2F),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Icon(
                                Icons.translate,
                                color: Colors.white70,
                                size: 16,
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Похоже, что язык письма: английский',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Перевести на русский',
                                    style: TextStyle(
                                      color: Color(0xFFD4A574),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.close, color: Colors.white54),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Тело письма (имитация HTML контента)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A1A),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFF333333)),
                  ),
                  child: Column(
                    children: [
                      // GitLab логотип
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: CustomPaint(
                                size: const Size(40, 40),
                                painter: GitLabLogoPainter(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      // Заголовок уведомления
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        color: const Color(0xFF2A2119),
                        child: const Text(
                          'Someone signed in to your gitlab.com account from',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      // Таблица с информацией
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            _buildInfoRow('Hostname', 'gitlab.com'),
                            _buildDivider(),
                            _buildInfoRow('User', 'User(user@mail.ru)'),
                            _buildDivider(),
                            _buildInfoRow('IP Address', '185.88.140.55'),
                            _buildDivider(),
                            _buildInfoRow('Location', 'Lelystad, Netherlands'),
                            _buildDivider(),
                            _buildInfoRow('Time', '2026-04-10 07:14:53 UTC'),
                          ],
                        ),
                      ),

                      // Предупреждение
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            const Text(
                              'If you recently signed in and recognize the IP address, you can safely ignore this email.',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'If you did not recently sign in, you should immediately ',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'change your password',
                                    style: TextStyle(
                                      color: Color(0xFF6B9FFF),
                                      fontSize: 12,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '. Passwords should be at least 8 characters long.',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'To further protect your account, consider configuring a ',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'two-factor authentication',
                                    style: TextStyle(
                                      color: Color(0xFF6B9FFF),
                                      fontSize: 12,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '.',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),

                      // Футер
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.gif,
                              color: Color(0xFFFC6D26),
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              'GitLab',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Подвал письма
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    'You\'re receiving this email because of your account on gitlab.com',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(height: 100), // Отступ для нижней панели
              ],
            ),
          ),
        ],
      ),

      // Нижняя панель с кнопками
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: const BoxDecoration(
          color: Color(0xFF1E1710),
        ),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.reply, size: 18),
                label: const Text('Ответить'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD4A574),
                  foregroundColor: const Color(0xFF1E1710),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.forward, size: 18),
                label: const Text('Переслать'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD4A574),
                  foregroundColor: const Color(0xFF1E1710),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF2A2119),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.sentiment_satisfied_alt_outlined, color: Colors.white70),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 13,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: const Color(0xFF333333),
      height: 1,
      thickness: 1,
    );
  }
}

// Кастомный painter для логотипа GitLab
class GitLabLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    
    // Упрощенная версия логотипа GitLab (лиса)
    final path = Path();
    
    // Левая сторона
    path.moveTo(size.width * 0.5, size.height * 0.15);
    path.lineTo(size.width * 0.3, size.height * 0.85);
    path.lineTo(size.width * 0.15, size.height * 0.55);
    path.lineTo(size.width * 0.3, size.height * 0.65);
    path.close();
    
    // Правая сторона
    path.moveTo(size.width * 0.5, size.height * 0.15);
    path.lineTo(size.width * 0.7, size.height * 0.85);
    path.lineTo(size.width * 0.85, size.height * 0.55);
    path.lineTo(size.width * 0.7, size.height * 0.65);
    path.close();
    
    // Градиент
    final gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        const Color(0xFFFC6D26),
        const Color(0xFFE24329),
      ],
    );
    
    paint.shader = gradient.createShader(
      Rect.fromLTWH(0, 0, size.width, size.height),
    );
    
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
