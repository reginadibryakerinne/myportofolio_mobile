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

### Tugas 8
1. Perbedaan Navigator.push(), pushReplacement(), dan pop()
   - Navigator.push() menambahkan halaman baru di atas tumpukan (stack) route. Halaman sebelumnya tetap tersimpan di bawahnya, sehingga pengguna bisa kembali menggunakan tombol kembali bawaan perangkat.
   - Navigator.pushReplacement() mengganti halaman yang sedang tampil dengan halaman baru. Halaman lama dibuang dari stack, sehingga tidak ada halaman di bawahnya yang bisa dikembalikan lewat tombol kembali.
    - Navigator.pop() membuang halaman teratas dari stack dan kembali ke halaman di bawahnya. Di proyek ini pop() juga dipakai untuk menutup AlertDialog.

    Untuk membuka formulir dari kartu aksi, saya menggunakan Navigator.push() di widget ItemCard, supaya halaman utama tetap ada di bawah formulir dan pengguna bisa kembali dengan tombol kembali bawaan perangkat atau browser.

    Opsi Home di drawer memakai Navigator.pushReplacement() dengan MaterialPageRoute ke MyHomePage(). Halaman formulir yang sedang tampil diganti halaman utama, sehingga pengguna kembali ke halaman utama tanpa menumpuk halaman baru di stack. Drawer memakai pushReplacement agar perpindahan antarmenu tidak membuat stack terus bertambah.

 2.  Scaffold menyediakan kerangka standar halaman (AppBar di atas, body, dan drawer di samping). Setiap halaman (drawer, form Experience, form Skill) memakai kerangka yang sama, sehingga posisi judul, ikon hamburger, dan area konten selalu seragam. LeftDrawer dibuat sekali di lib/widgets/left_drawer.dart lalu dipakai ulang di semua halaman lewat properti drawer: const LeftDrawer(), sehingga navigasi konsisten dan tidak ditulis berulang.
   
Contoh penggunaan warna tema di lebih dari satu halaman: warna utama portofolio (indigo) didefinisikan sekali lewat ColorScheme.fromSeed(seedColor: Colors.indigo) di main.dart, lalu dipakai oleh AppBar di halaman menu, AppBar di kedua halaman form, tombol Save, dan header drawer (Theme.of(context).colorScheme.primary). Jika warna tema diubah di satu tempat, semua halaman ikut berubah.

3. Formulir disusun dalam Column yang berisi Padding dan TextFormField/DropdownButtonFormField berurutan dari atas ke bawah, karena formulir adalah daftar isian yang dibaca vertikal. Padding memberi jarak 8 piksel di sekeliling setiap kolom agar tidak menempel satu sama lain dan area sentuhnya lebih nyaman. SingleChildScrollView membungkus Column agar isi formulir bisa digulir ketika ruang layar terbatas, misalnya di layar ponsel yang sempit atau saat papan ketik muncul dan menutupi sebagian layar. Tanpa penggulir, Column yang lebih tinggi dari layar akan overflow (muncul garis kuning-hitam) dan tombol Save bisa tidak terjangkau. Di halaman menu, SingleChildScrollView juga dipakai agar grid kartu tidak overflow di layar lebar.

4. Peran GlobalKey<FormState>, validator, dan validate()
   - GlobalKey<FormState> dipasang pada widget Form sebagai pegangan untuk mengakses FormState dari luar widget Form, sehingga tombol Save bisa memicu validasi dan reset().
   - validator adalah fungsi pada setiap TextFormField yang memeriksa isinya. Fungsi mengembalikan teks pesan error jika isian tidak valid.
   - validate() dipanggil saat tombol Save ditekan. Ia menjalankan seluruh validator di dalam form, menampilkan pesan error merah pada kolom yang tidak valid, dan mengembalikan true hanya jika semua isian valid. Dialog ringkasan hanya ditampilkan jika hasilnya true.

   Contoh nilai yang ditolak: nama skill yang hanya berisi spasi (`"   "`). Validator memakai value.trim().isEmpty, sehingga isian tersebut ditolak sebagai kosong. Contoh lain: URL abc ditolak karena tidak diawali http/https dan tidak punya host.

   Memilih jenis input atau papan ketik saja belum cukup karena itu hanya memberi petunjuk, bukan aturan. keyboardType: TextInputType.url hanya mengubah tampilan papan ketik, tetapi pengguna tetap bisa mengetik teks apa pun, menempelnya dari clipboard, atau mengisi spasi saja. Papan ketik juga tidak ada di semua perangkat (misalnya Chrome desktop dengan keyboard fisik). Karena itu aturan data tetap harus diperiksa lewat validator.
   
### AI Disclosure Tugas 7
004 / 8 - Implementasi Warna Tema pada Drawer Header : https://chatgpt.com/s/t_6b02fb02d0a081918c450a75632c6800
digunakan untuk membantu memahami cara menerapkan warna tema aplikasi pada widget DrawerHeader di Flutter. AI juga membantu memberikan arahan terkait penggunaan Theme.of(context).colorScheme.primary agar warna pada Drawer mengikuti tema utama aplikasi secara konsisten. 

005 / 8 - Penyusunan Skenario Pengujian Manual Aplikasi Flutte : https://chatgpt.com/s/t_6b02fb86fa8081918df213ee1cfc4ccc
digunakan untuk membantu menyusun skenario pengujian manual (manual testing) pada aplikasi Flutter, meliputi pengujian navigasi melalui kartu aksi dan Drawer, validasi input formulir Skill dan Experience, proses penyimpanan data, serta pengujian tampilan pada ukuran layar ponsel.

006 / 8 - Pemahaman Navigasi Menggunakan Navigator.push() : https://chatgpt.com/s/t_6b02fc2206c48191815ce213a13d5701
digunakan untuk membantu memahami konsep penggunaan Navigator.push() dalam navigasi Flutter, khususnya terkait cara membuka halaman formulir melalui kartu aksi dan mekanisme kembali ke halaman utama menggunakan tombol Back bawaan perangkat.