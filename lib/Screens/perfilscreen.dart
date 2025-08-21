import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/Barra_navegacao.dart';
import '../main.dart';

void main() {
  runApp(const PrestadoresApp());
}

class PrestadoresApp extends StatelessWidget {
  const PrestadoresApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prestadores',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF6F7F9),
        textTheme: GoogleFonts.interTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFD54F), 
          primary: const Color(0xFF111827),
          secondary: const Color(0xFF6B7280),
          background: const Color(0xFFF6F7F9),
        ),
      ),
      home: const RootTabs(),
    );
  }
}

class RootTabs extends StatefulWidget {
  const RootTabs({super.key});

  @override
  State<RootTabs> createState() => _RootTabsState();
}

class _RootTabsState extends State<RootTabs> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomeTab(),
      const ServicesTab(),
      const ProfileOverviewTab(), // tela 1 do mock
    ];

    return Scaffold(
      body: SafeArea(child: pages[_index]),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
      ),
    );
  }
}


class HomeTab extends StatelessWidget {
  const HomeTab({super.key});
  @override
  Widget build(BuildContext context) {
    return const _SimpleScaffold(title: 'Início');
  }
}

class ServicesTab extends StatelessWidget {
  const ServicesTab({super.key});
  @override
  Widget build(BuildContext context) {
    return const _SimpleScaffold(title: 'Serviços');
  }
}

class _SimpleScaffold extends StatelessWidget {
  const _SimpleScaffold({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TopBar(title: title, showBack: true),
        const Expanded(
          child: Center(
            child: Text('Conteúdo em breve', style: TextStyle(fontSize: 16, color: Color(0xFF6B7280))),
          ),
        ),
      ],
    );
  }
}

class ProfileOverviewTab extends StatelessWidget {
  const ProfileOverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TopBar(
          title: 'Perfil',
          showBack: true,
          onBellTap: () {}, // ação do sino (em breve)
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            child: Column(
              children: [
                _Card(
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      const CircleAvatar(
                        radius: 34,
                        backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=47'),
                      ),
                      const SizedBox(height: 12),
                      Text('Ana Maria',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF111827),
                            height: 1.1,
                            fontFamily: GoogleFonts.inter().fontFamily,
                          )),
                      const SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.email_outlined, size: 16, color: Color(0xFF6B7280)),
                          SizedBox(width: 6),
                          Text('Ana.maria@email.com',
                              style: TextStyle(fontSize: 13, color: Color(0xFF6B7280))),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.phone, size: 16, color: Color(0xFF6B7280)),
                          SizedBox(width: 6),
                          Text('+55 42 4002-8922',
                              style: TextStyle(fontSize: 13, color: Color(0xFF6B7280))),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: 180,
                        height: 36,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xFFE5E7EB)),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => const ProfileSettingsPage()),
                            );
                          },
                          child: const Text('Editar Informações',
                              style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF111827))),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Seção "Minhas Solicitações"
                _Card(
                  padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Minhas Solicitações',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF111827))),
                      const SizedBox(height: 12),
                      _RequestItem(
                        avatar: 'https://i.pravatar.cc/100?img=12',
                        name: 'Bruno Praga',
                        category: 'Encanamento',
                        date: '12 de junho de 2023',
                        status: _Status.aprovado,
                      ),
                      const SizedBox(height: 12),
                      _RequestItem(
                        avatar: 'https://i.pravatar.cc/100?img=32',
                        name: 'Bruno Traga',
                        category: 'Elétrica',
                        date: '15 de junho de 2023',
                        status: _Status.pendente,
                      ),
                      const SizedBox(height: 12),
                      _RequestItem(
                        avatar: 'https://i.pravatar.cc/100?img=22',
                        name: 'Bruno Budweiser',
                        category: 'Limpeza',
                        date: '20 de junho de 2023',
                        status: _Status.recusado,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _TopBar(
            title: 'Perfil',
            showBack: true,
            onBellTap: () {},
            customBack: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
              child: Column(
                children: [
                  _SectionCard(
                    title: 'Conta',
                    items: const [
                      _SettingsItem(icon: Icons.lock_outline, label: 'Alterar Senha'),
                      _SettingsItem(
                          icon: Icons.notifications_none, label: 'Preferências de Notificação'),
                      _SettingsItem(icon: Icons.credit_card, label: 'Informações de Pagamento'),
                      _SettingsItem(icon: Icons.shield_outlined, label: 'Segurança da Conta'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _SectionCard(
                    title: 'Suporte e Legal',
                    items: const [
                      _SettingsItem(icon: Icons.support_agent_outlined, label: 'Central de Ajuda'),
                      _SettingsItem(icon: Icons.description_outlined, label: 'Termos de Serviço'),
                      _SettingsItem(
                          icon: Icons.privacy_tip_outlined, label: 'Política de Privacidade'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _Card(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE74C3C),
                          foregroundColor: Colors.white,
                          minimumSize: const Size.fromHeight(44),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child:
                            const Text('Sair', style: TextStyle(fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: 2,
        onTap: (i) {},
      ),
    );
  }
}

void nullSafe(int _) {}

/// Widgets de UI Reutilizáveis 
class _TopBar extends StatelessWidget {
  const _TopBar({
    required this.title,
    this.showBack = false,
    this.onBellTap,
    this.customBack,
  });

  final String title;
  final bool showBack;
  final VoidCallback? onBellTap;
  final VoidCallback? customBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          SizedBox(
            width: 44,
            height: 44,
            child: showBack
                ? IconButton(
                    onPressed: customBack ?? () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                        (route) => false,
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
                  )
                : IconButton(
                    onPressed: () {}, // pode abrir o menu mais tarde
                    icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20, color: Colors.transparent),
                  ),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 44,
            height: 44,
            child: IconButton(
              onPressed: onBellTap,
              icon: const Icon(Icons.notifications_none),
            ),
          ),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.child, this.padding});

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _RequestItem extends StatelessWidget {
  const _RequestItem({
    required this.avatar,
    required this.name,
    required this.category,
    required this.date,
    required this.status,
  });

  final String avatar;
  final String name;
  final String category;
  final String date;
  final _Status status;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, 
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          CircleAvatar(backgroundImage: NetworkImage(avatar), radius: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xFF111827))),
                  const SizedBox(height: 2),
                  Text(category,
                      style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280))),
                  const Spacer(),
                  Text(date, style: const TextStyle(fontSize: 11, color: Color(0xFF9CA3AF))),
                ],
              ),
            ),
          ),
          _StatusChip(status: status),
        ],
      ),
    );
  }
}

enum _Status { aprovado, pendente, recusado }

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});
  final _Status status;

  @override
  Widget build(BuildContext context) {
    late String label;
    late Color bg;
    late Color fg;

    switch (status) {
      case _Status.aprovado:
        label = 'Aprovado';
        bg = const Color(0xFFE7F8EE);
        fg = const Color(0xFF10B981);
        break;
      case _Status.pendente:
        label = 'Pendente';
        bg = const Color(0xFFFFF4DB);
        fg = const Color(0xFFF59E0B);
        break;
      case _Status.recusado:
        label = 'Recusado';
        bg = const Color(0xFFFDE8E8);
        fg = const Color(0xFFE74C3C);
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: fg)),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({required this.title, required this.items});

  final String title;
  final List<_SettingsItem> items;

  @override
  Widget build(BuildContext context) {
    return _Card(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF111827))),
          const SizedBox(height: 8),
          ...items.map((e) => Column(children: [e, const SizedBox(height: 6)])).toList(),
        ],
      ),
    );
  }
}

class _SettingsItem extends StatelessWidget {
  const _SettingsItem({required this.icon, required this.label, this.onTap});
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFF9FAFB),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap ?? () {},
        child: Container(
          height: 54,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFE5E7EB)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(icon, color: const Color(0xFF6B7280)),
              const SizedBox(width: 12),
              Expanded(
                child: Text(label,
                    style: const TextStyle(fontSize: 14, color: Color(0xFF111827), fontWeight: FontWeight.w600)),
              ),
              const Icon(Icons.chevron_right_rounded, color: Color(0xFF9CA3AF)),
            ],
          ),
        ),
      ),
    );
  }
}
