import 'package:flutter/material.dart';

void main() {
  runApp(const LifeVault());
}

class LifeVault extends StatelessWidget {
  const LifeVault({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LifeVault',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF080D19),
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4F8CFF),
          brightness: Brightness.dark,
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  final Color blue = const Color(0xFF528BFF);
  final Color backgroundCard = const Color(0xFF111A2B);
  final Color muted = const Color(0xFF929FB7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080D19),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 14, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF3678F6),
                          Color(0xFF7758F7),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: blue.withOpacity(0.25),
                          blurRadius: 18,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.shield_rounded,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LifeVault',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.6,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Your life, organized.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF929FB7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: backgroundCard,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.07),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none_rounded,
                        size: 23,
                      ),
                    ),
                  ),
                  const SizedBox(width: 9),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xFF202B40),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.08),
                      ),
                    ),
                    child: const Icon(
                      Icons.person_rounded,
                      color: Color(0xFFB9CCFF),
                      size: 24,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Text(
                'MONDAY, OCTOBER 19',
                style: TextStyle(
                  color: muted,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.7,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Good evening,',
                style: TextStyle(
                  color: Color(0xFFB9C5D9),
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 3),

              const Text(
                'Welcome back.',
                style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.1,
                ),
              ),

              const SizedBox(height: 22),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF245BD6),
                      Color(0xFF3947B9),
                      Color(0xFF593BA8),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF3869F5).withOpacity(0.19),
                      blurRadius: 28,
                      offset: const Offset(0, 12),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: -12,
                      top: -20,
                      child: Icon(
                        Icons.auto_awesome_rounded,
                        size: 115,
                        color: Colors.white.withOpacity(0.07),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 11,
                            vertical: 7,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.13),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.12),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.lock_rounded,
                                size: 13,
                                color: Colors.white,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'YOUR PERSONAL SPACE',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Everything important.\nAll in one place.',
                          style: TextStyle(
                            fontSize: 25,
                            height: 1.25,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.6,
                          ),
                        ),
                        const SizedBox(height: 9),
                        Text(
                          'Keep your notes, documents and daily life organized.',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.79),
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 45,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: const Color(0xFF244AB2),
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 17,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            icon: const Icon(
                              Icons.add_rounded,
                              size: 20,
                            ),
                            label: const Text(
                              'Create new',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Your Overview',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.4,
                      ),
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                      color: blue,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 3),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: blue,
                    size: 15,
                  ),
                ],
              ),

              const SizedBox(height: 15),

              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.42,
                children: [
                  _StatCard(
                    title: 'Documents',
                    value: '12',
                    subtitle: 'Saved files',
                    icon: Icons.folder_copy_rounded,
                    color: const Color(0xFF5B91FF),
                    background: backgroundCard,
                  ),
                  _StatCard(
                    title: 'Notes',
                    value: '08',
                    subtitle: 'Personal notes',
                    icon: Icons.sticky_note_2_rounded,
                    color: const Color(0xFFB18AFF),
                    background: backgroundCard,
                  ),
                  _StatCard(
                    title: 'Expenses',
                    value: '24',
                    subtitle: 'Transactions',
                    icon: Icons.account_balance_wallet_rounded,
                    color: const Color(0xFF4CD6B0),
                    background: backgroundCard,
                  ),
                  _StatCard(
                    title: 'Reminders',
                    value: '03',
                    subtitle: 'Upcoming tasks',
                    icon: Icons.event_available_rounded,
                    color: const Color(0xFFFFB866),
                    background: backgroundCard,
                  ),
                ],
              ),

              const SizedBox(height: 29),

              const Text(
                'Quick Access',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.4,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: _QuickCard(
                      title: 'My Notes',
                      subtitle: 'Write ideas',
                      icon: Icons.edit_note_rounded,
                      color: const Color(0xFF719BFF),
                      background: backgroundCard,
                    ),
                  ),
                  const SizedBox(width: 11),
                  Expanded(
                    child: _QuickCard(
                      title: 'Documents',
                      subtitle: 'Keep files',
                      icon: Icons.description_rounded,
                      color: const Color(0xFFB18AFF),
                      background: backgroundCard,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 11),

              Row(
                children: [
                  Expanded(
                    child: _QuickCard(
                      title: 'My Expenses',
                      subtitle: 'Track spending',
                      icon: Icons.payments_rounded,
                      color: const Color(0xFF4CD6B0),
                      background: backgroundCard,
                    ),
                  ),
                  const SizedBox(width: 11),
                  Expanded(
                    child: _QuickCard(
                      title: 'Reminders',
                      subtitle: 'Plan your day',
                      icon: Icons.notifications_active_rounded,
                      color: const Color(0xFFFFB866),
                      background: backgroundCard,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 29),

              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Recent Activity',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.4,
                      ),
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: blue,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: backgroundCard,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(
                    color: Colors.white.withValues( alpha: 0.055),
                  ),
                ),
                child: Column(
                  children: [
                    _RecentItem(
                      title: 'University Notes',
                      subtitle: 'Notes · Edited recently',
                      icon: Icons.description_rounded,
                      color: const Color(0xFF719BFF),
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.07),
                      height: 1,
                    ),
                    _RecentItem(
                      title: 'Monthly Expenses',
                      subtitle: 'Finance · Updated today',
                      icon: Icons.account_balance_wallet_rounded,
                      color: const Color(0xFF4CD6B0),
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.07),
                      height: 1,
                    ),
                    _RecentItem(
                      title: 'Personal Documents',
                      subtitle: 'Files · Saved yesterday',
                      icon: Icons.folder_rounded,
                      color: const Color(0xFFB18AFF),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 29),

              const Text(
                'Upcoming Reminders',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.4,
                ),
              ),

              const SizedBox(height: 14),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: backgroundCard,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.055),
                  ),
                ),
                child: Column(
                  children: [
                    _ReminderCard(
                      title: 'Complete assignment',
                      subtitle: 'Today · 7:00 PM',
                      icon: Icons.school_rounded,
                      color: const Color(0xFF719BFF),
                    ),
                    const SizedBox(height: 15),
                    _ReminderCard(
                      title: 'Review monthly budget',
                      subtitle: 'Tomorrow · 10:00 AM',
                      icon: Icons.calendar_month_rounded,
                      color: const Color(0xFF4CD6B0),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              Center(
                child: Text(
                  'LIFEVault  ·  YOUR LIFE, YOUR SPACE',
                  style: TextStyle(
                    color: muted.withOpacity(0.65),
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF0D1423),
          border: Border(
            top: BorderSide(
              color: Colors.white.withOpacity(0.07),
            ),
          ),
        ),
        child: NavigationBar(
          height: 72,
          backgroundColor: const Color(0xFF0D1423),
          indicatorColor: const Color(0xFF315BAA).withOpacity(0.35),
          elevation: 0,
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search_rounded),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(Icons.bookmark_border_rounded),
              selectedIcon: Icon(Icons.bookmark_rounded),
              label: 'Saved',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings_rounded),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Color color;
  final Color background;

  const _StatCard({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(21),
        border: Border.all(
          color: Colors.white.withOpacity(0.055),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 37,
                width: 37,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.13),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 20,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_outward_rounded,
                size: 16,
                color: Colors.white.withOpacity(0.35),
              ),
            ],
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.8,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.white.withOpacity(0.48),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final Color background;

  const _QuickCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(19),
        border: Border.all(
          color: Colors.white.withOpacity(0.055),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: color.withOpacity(0.13),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              icon,
              color: color,
              size: 23,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.white.withOpacity(0.48),
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}

class _RecentItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  const _RecentItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: color.withOpacity(0.13),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              icon,
              color: color,
              size: 22,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.48),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: Colors.white.withOpacity(0.35),
          ),
        ],
      ),
    );
  }
}

class _ReminderCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  const _ReminderCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 43,
          width: 43,
          decoration: BoxDecoration(
            color: color.withOpacity(0.13),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(
            icon,
            color: color,
            size: 21,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.more_horiz_rounded,
          color: Colors.white.withOpacity(0.5),
        ),
      ],
    );
  }
}