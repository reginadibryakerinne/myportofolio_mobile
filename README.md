# myportofolio_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Tugas 7

1. Widget tree adalah struktur hierarki yang menggambarkan baagaimana setiap widget dalam Flutter disusun untuk membentuk tampilan aplikasi. Setiap widget dapat memiliki anak berupa widget lain, sehingga akan terbentuk hubungan parent (induk) dan child (anak). Parent menentukan constraint (batas ukuran) untuk child, dan child menentukan ukurannya dalam batas itu.
contoh, widget Scaffold dapat memiliki AppBar dan Body, kemudian di dalam Body terdapat widget Column yang berisi beberapa widget Text atau Card. Dengan struktur ini, Flutter dapat menyusun tampilan aplikasi secara terorganisasi dan bertingkat.

2. Beberapa widget yang digunakan dalam proyek ini:

- MaterialApp: Menjadi widget utama yang mengatur konfigurasi dasar aplikasi Flutter.
- Scaffold: Menyediakan struktur dasar halaman, seperti area konten dan AppBar.
- AppBar: Menampilkan bagian atas halaman yang biasanya berisi judul aplikasi.
- Column: Menyusun beberapa widget secara vertikal.
- Row: Menyusun beberapa widget secara horizontal.
- Text: Menampilkan tulisan atau informasi pada aplikasi.
- Icon: Menampilkan ikon untuk memperjelas fungsi atau informasi tertentu.
- Card: Membentuk tampilan informasi dalam bentuk kartu.
- Padding: Memberikan jarak antara widget dengan elemen di sekitarnya.
- InfoCard: Widget yang digunakan untuk menampilkan informasi profil pemilik portofolio, seperti NPM, nama, dan kelas.
- ItemCard: Widget yang digunakan untuk menampilkan tombol aksi portofolio dalam bentuk kartu yang dilengkapi ikon, teks, dan warna berbeda.
- SnackBar: Menampilkan pesan singkat sebagai respons ketika pengguna menekan tombol aksi.

3. MaterialApp merupakan widget yang menyediakan konfigurasi dasar untuk aplikasi Flutter yang menggunakan desain Material Design (ThemeData). Widget ini mengatur beberapa hal, seperti tema aplikasi, halaman awal, navigasi, dan konfigurasi tampilan lainnya.

MaterialApp umumnya digunakan sebagai root widget karena menjadi titik awal yang mengatur keseluruhan struktur aplikasi. Dengan menjadikannya root widget, widget-widget lain di dalam aplikasi dapat menggunakan fitur dan konfigurasi yang disediakan oleh MaterialApp, sehingga pengembangan aplikasi menjadi lebih terorganisasi dan konsisten.

4. StatelessWidget adalah widget yang tidak memiliki state atau kondisi internal yang dapat berubah selama widget digunakan. Tampilan widget ini bergantung pada data yang diberikan ketika widget dibuat. Widget ini cocok digunakan untuk komponen yang tampilannya relatif tetap dan tidak memerlukan perubahan berdasarkan interaksi pengguna (tampilan statis).

Sedangkan, StatefulWidget adalah widget yang memiliki state sehingga tampilannya dapat berubah ketika nilai state diperbarui. Perubahan tersebut biasanya dilakukan menggunakan metode setState() agar Flutter membangun ulang tampilan sesuai kondisi terbaru. Widget ini cocok digunakan bila tampilan berubah akibat interaksi atau perubahan data.

5. BuildContext adalah objek yang merepresentasikan lokasi sebuah widget di dalam widget tree. Melalui BuildContext, sebuah widget dapat mengakses informasi dan fitur yang disediakan oleh widget-widget ancestor.

BuildContext penting karena digunakan Flutter untuk mengetahui posisi suatu widget dalam struktur aplikasi. Contohnya, BuildContext dapat digunakan untuk mengakses tema aplikasi melalui Theme.of(context), melakukan navigasi, atau menampilkan SnackBar menggunakan ScaffoldMessenger.of(context).

Di dalam metode build, BuildContext digunakan sebagai parameter yang memungkinkan widget mengakses informasi tersebut ketika membangun tampilannya. Dengan demikian, widget dapat menyesuaikan tampilan maupun menjalankan fungsi tertentu berdasarkan struktur aplikasi tempat widget tersebut berada.

6. Hot reload adalah fitur Flutter yang memungkinkan perubahan kode langsung diterapkan pada aplikasi tanpa harus menjalankannya ulang dari awal. Fitur ini berguna saat mengubah tampilan atau memperbaiki kode karena prosesnya lebih cepat dan state aplikasi tetap dipertahankan.

Sementara, hot restart akan menjalankan ulang aplikasi dari awal sehingga state yang sedang berjalan akan diatur ulang. Prosesnya membutuhkan waktu sedikit lebih lama dibandingkan hot reload.

Hot reload tidak cukup untuk perubahan inisialisasi (main(), nilai field final yang terinisialisasi sekali), perubahan state class (misal mengubah StatelessWidget menjadi StatefulWidget), dan perubahan global sehingga membutuhkan hot restart. Sedangkan, Full restart/rebuild diperlukan saat mengubah dependency di pubspec.yaml, konfigurasi na

### AI Disclosure Tugas 7
001 / 7 - Git Branch Management: https://chatgpt.com/s/t_6af558f72dfc8191be454a3e05678f9b
AI digunakan untuk membantu memahami penggunaan perintah Git dalam membuat branch lokal, melakukan commit, serta melakukan push perubahan dari branch lokal ke branch remote

002 / 7 - Creating a GitHub Repository: https://chatgpt.com/s/t_6af55965e34c8191958878406850d79e
AI digunakan untuk memberikan panduan membuat repository baru melalui website GitHub serta menjelaskan langkah-langkah menghubungkannya dengan proyek Flutter menggunakan Git.

003 / 7 - Using HEX Colors code with the Color Data Type: https://chatgpt.com/s/t_6af55a2254d88191b504ac83c86ca269 & https://chatgpt.com/s/t_6af55a352d1881919feff6be3d36e021 
AI digunakan untuk memahami cara mengganti warna widget Flutter menggunakan kode HEX serta fungsi penggunaan keyword const pada Flutter.