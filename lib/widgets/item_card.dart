import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/screens/menu.dart';
import 'package:myportofolio_mobile/screens/experience_form.dart';
import 'package:myportofolio_mobile/screens/experience_list_screen.dart';
import 'package:myportofolio_mobile/screens/skill_form.dart';
import 'package:myportofolio_mobile/services/auth_state.dart';
import 'package:myportofolio_mobile/widgets/auth_guard.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menggunakan warna yang ditentukan pada masing-masing item.
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        // Aksi ketika kartu ditekan oleh pengguna.
        onTap: () async {
          final messenger = ScaffoldMessenger.of(context);
          final navigator = Navigator.of(context);

          if (item.name == "Lihat Experience") {
            navigator.push(
              MaterialPageRoute(
                builder: (context) => const ExperienceListScreen(),
              ),
            );
            return;
          }

          // Navigasi ke halaman form experience (wajib login).
          if (item.name == "Tambah Experience") {
            final loggedIn = await ensureLoggedIn(context);
            if (!loggedIn) return;
            navigator.push(
              MaterialPageRoute(
                builder: (context) => const ExperienceFormPage(),
              ),
            );
            return;
          }

          if (item.name == "Tambah Skill") {
            navigator.push(
              MaterialPageRoute(builder: (context) => const SkillFormPage()),
            );
            return;
          }

          // Logout: hapus token lalu tampilkan SnackBar.
          if (item.name == "Logout") {
            final authState = context.read<AuthState>();
            if (!authState.isLoggedIn) {
              messenger
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(content: Text("Kamu belum login.")),
                );
              return;
            }
            await authState.logout();
            messenger
              ..hideCurrentSnackBar()
              ..showSnackBar(const SnackBar(content: Text("Logout berhasil.")));
            return;
          }

          // Kartu lain: tampilkan SnackBar seperti sebelumnya.
          messenger
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!"),
              ),
            );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item.icon, color: Colors.white, size: 30.0),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
