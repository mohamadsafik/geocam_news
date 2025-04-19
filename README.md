# geocam_news

# run aplikasi

Install Dependencies
Jalankan perintah berikut untuk mengunduh semua dependency:
flutter pub get

Generate Code (Jika Diperlukan)
Jika menggunakan library seperti freezed atau json_serializable, jalankan:
flutter pub run build_runner build --delete-conflicting-outputs

Build APK
Untuk membangun aplikasi Android:
flutter build apk

Run Aplikasi
Jalankan aplikasi di emulator atau perangkat fisik:
flutter run

# library

dio :
untuk network atau call api dan error handler api

bloc/cubit :
penggunaan state management dalam aplikasi flutter ini
get_storage :
Penyimpanan data lokal storage

intl :
initializeDateFormatting untuk mengatur format tanggal sesuai bahasa aplikasi.

freezed :
Digunakan untuk membuat kelas immutable dan union types.
Membantu menangani berbagai jenis error dengan cara yang lebih terstruktur.
Contoh penggunaannya adalah untuk mendefinisikan NetworkExceptions dan class model yang digunakan dalam aplikasi ini.

# SDLC

- reqruitment kebutuhan
- perencanaan
- desain
- implementasi pengembangan

<img src="screenshoot/location.png" alt="Home Page" width="300"/>

<img src="screenshoot/list_news.png" alt="List Doctor" width="300"/>

<img src="screenshoot/bookmark.jpeg" alt="Todo / Publish Form" width="300"/>

<img src="screenshoot/detail_news.jpeg" alt="Todo / Publish Form" width="300"/>

**Todo**  
publish message title dan desc ke mqtt dan subcribe juga untuk ditampilkan, data sebelumnya di simpan di local storage menggunakan hive
