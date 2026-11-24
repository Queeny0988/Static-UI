import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const _BottomBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(19, 18, 19, 18),
          children: const [
            _Greeting(),
            SizedBox(height: 22),
            _BreathingBanner(),
            SizedBox(height: 18),
            _ProgressCard(),
            SizedBox(height: 24),
            _SectionHeading(),
            SizedBox(height: 10),
            _PromptRow(),
            SizedBox(height: 18),
            _ReflectionCard(),
          ],
        ),
      ),
    );
  }
}

class _Greeting extends StatelessWidget {
  const _Greeting();
  @override
  Widget build(BuildContext context) => const Row(
        children: [
          CircleAvatar(radius: 18, backgroundColor: Color(0xFFE7BCAB), child: Icon(Icons.face_rounded, color: Colors.white)),
          SizedBox(width: 10),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Warm welcome,', style: TextStyle(color: AppColors.muted, fontSize: 12)),
            Text('Hey Sarah', style: TextStyle(color: AppColors.ink, fontWeight: FontWeight.w800, fontSize: 16)),
          ]),
          Spacer(),
          CircleAvatar(radius: 17, backgroundColor: Colors.white, child: Icon(Icons.notifications_none, color: AppColors.ink, size: 20)),
        ],
      );
}

class _BreathingBanner extends StatelessWidget {
  const _BreathingBanner();
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 121,
        child: Stack(fit: StackFit.expand, children: [
          ClipRRect(borderRadius: BorderRadius.circular(18), child: Image.asset('assets/images/blush_flower_texture.png', fit: BoxFit.cover)),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: const Color(0x6E8A4D45))),
          const Positioned(left: 14, top: 14, child: _Tag(label: 'Daily Focus')),
          const Positioned(right: 14, top: 17, child: Text('Day 5 streak 🔥', style: TextStyle(color: Colors.white, fontSize: 10))),
          const Positioned(left: 14, bottom: 15, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Mindful Breathing', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 18)),
            SizedBox(height: 3),
            Text('Find a soft space, take 5 slow deep breaths.', style: TextStyle(color: Colors.white70, fontSize: 11)),
          ])),
        ]),
      );
}

class _Tag extends StatelessWidget {
  const _Tag({required this.label});
  final String label;
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
        decoration: BoxDecoration(color: Colors.white.withValues(alpha: .9), borderRadius: BorderRadius.circular(16)),
        child: Text(label, style: const TextStyle(color: AppColors.blush, fontSize: 10, fontWeight: FontWeight.w700)),
      );
}

class _ProgressCard extends StatelessWidget {
  const _ProgressCard();
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17), border: Border.all(color: AppColors.line)),
        child: Row(children: [
          const CircleAvatar(radius: 22, backgroundColor: AppColors.softPink, child: Icon(Icons.auto_awesome, color: AppColors.blush)),
          const SizedBox(width: 12),
          const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Daily Progress', style: TextStyle(color: AppColors.muted, fontSize: 11)),
            SizedBox(height: 3), Text('3 of 5 completed', style: TextStyle(fontWeight: FontWeight.w800, color: AppColors.ink)),
            SizedBox(height: 7), LinearProgressIndicator(value: .6, minHeight: 6, borderRadius: BorderRadius.all(Radius.circular(5)), color: AppColors.blush, backgroundColor: AppColors.softPink),
          ])),
          const SizedBox(width: 8), const Text('60%', style: TextStyle(color: AppColors.blush, fontSize: 11)),
        ]),
      );
}

class _SectionHeading extends StatelessWidget {
  const _SectionHeading();
  @override
  Widget build(BuildContext context) => const Row(children: [
        Text('Today’s Prompts', style: TextStyle(color: AppColors.ink, fontSize: 15, fontWeight: FontWeight.w800)),
        Spacer(), Text('See All', style: TextStyle(color: AppColors.blush, fontSize: 11)),
      ]);
}

class _PromptRow extends StatelessWidget {
  const _PromptRow();
  @override
  Widget build(BuildContext context) => const Row(children: [Expanded(child: _PromptCard(icon: Icons.edit_outlined, title: 'Write down three\nthings you are gra...', caption: '5 min read', pink: true)), SizedBox(width: 10), Expanded(child: _PromptCard(icon: Icons.wb_sunny_outlined, title: 'Soak in 10 minutes\nof direct sun...', caption: 'Active'))]);
}

class _PromptCard extends StatelessWidget {
  const _PromptCard({required this.icon, required this.title, required this.caption, this.pink = false});
  final IconData icon; final String title; final String caption; final bool pink;
  @override
  Widget build(BuildContext context) => Container(height: 101, padding: const EdgeInsets.all(12), decoration: BoxDecoration(color: pink ? AppColors.softPink : Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: AppColors.line)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Icon(icon, color: AppColors.blush, size: 19), const Spacer(), Text(title, style: const TextStyle(color: AppColors.ink, fontSize: 11, fontWeight: FontWeight.w700)), const SizedBox(height: 5), Text(caption, style: const TextStyle(color: AppColors.muted, fontSize: 9))]));
}

class _ReflectionCard extends StatelessWidget {
  const _ReflectionCard();
  @override
  Widget build(BuildContext context) => Container(padding: const EdgeInsets.all(14), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: AppColors.line)), child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Icon(Icons.edit_square, color: AppColors.blush, size: 19), SizedBox(width: 7), Text('Evening Reflection', style: TextStyle(color: AppColors.ink, fontSize: 13, fontWeight: FontWeight.w800)), Spacer(), Text('Not started', style: TextStyle(color: AppColors.muted, fontSize: 10))]), SizedBox(height: 12), Text('Take a moment tonight to write down any heavy\nthoughts you want to let go before sleep.', style: TextStyle(color: AppColors.muted, fontSize: 12)), SizedBox(height: 12), Row(children: [Text('Begin writing', style: TextStyle(color: AppColors.blush, fontSize: 12, fontWeight: FontWeight.w700)), Spacer(), Icon(Icons.chevron_right, color: AppColors.blush)])]));
}

class _BottomBar extends StatelessWidget {
  const _BottomBar();
  @override
  Widget build(BuildContext context) => Container(height: 66, decoration: const BoxDecoration(color: Colors.white, border: Border(top: BorderSide(color: AppColors.softPink))), child: const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [_Nav(icon: Icons.home_outlined, label: 'Today', active: true), _Nav(icon: Icons.menu_book_outlined, label: 'Reflect'), _Nav(icon: Icons.trending_up, label: 'Journey'), _Nav(icon: Icons.person_outline, label: 'Profile')]));
}

class _Nav extends StatelessWidget {
  const _Nav({required this.icon, required this.label, this.active = false});
  final IconData icon; final String label; final bool active;
  @override
  Widget build(BuildContext context) => Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(icon, size: 21, color: active ? AppColors.blush : AppColors.muted), const SizedBox(height: 2), Text(label, style: TextStyle(fontSize: 9, color: active ? AppColors.blush : AppColors.muted))]);
}
