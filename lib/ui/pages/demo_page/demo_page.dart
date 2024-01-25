import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo page (FOR TESTING ONLY)'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              _DemoTile(
                title: 'START APP',
                icon: const Icon(Icons.rocket_launch_rounded),
                onTap: () => {},
              ),
              const SizedBox(height: 24),
              _DemoTile(
                title: 'Home Page',
                onTap: () => {},
                icon: const Icon(Icons.rocket_launch_outlined),
              ),
              const SizedBox(height: 24),
              _DemoTile.page(
                title: 'Settings [About Page]',
                onTap: () => {},
              ),
              _DemoTile.page(
                title: 'Link Web Page',
                onTap: () => {},
              ),
              // TODO: Impl. toast example error
              _DemoTile.dialog(
                title: 'Show error toast',
                onTap: () {
                  // const message =
                  //     'Sorry fam! That email and password combination doesn’t work 🤔.';
                  // context.toasts.showError(message: message);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DemoTile extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onTap;

  const _DemoTile({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  const _DemoTile.page({
    required this.title,
    required this.onTap,
  }) : icon = const Icon(Icons.mobile_friendly_rounded);

  const _DemoTile.dialog({
    required this.title,
    required this.onTap,
  }) : icon = const Icon(Icons.message_rounded);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      dense: true,
      onTap: onTap,
    );
  }
}
