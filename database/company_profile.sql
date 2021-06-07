-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Bulan Mei 2021 pada 11.22
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_profile`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `slug_berita` varchar(255) DEFAULT NULL,
  `judul_berita` varchar(255) DEFAULT NULL,
  `isi_berita` text DEFAULT NULL,
  `gambar_berita` varchar(255) DEFAULT NULL,
  `status_berita` varchar(50) NOT NULL,
  `jenis_berita` varchar(50) NOT NULL,
  `keywords` text NOT NULL,
  `date_cretated` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `isi_berita`, `gambar_berita`, `status_berita`, `jenis_berita`, `keywords`, `date_cretated`, `last_modified`) VALUES
(7, 2, 1, 'tips-temukan-pesan-tersembunyi-di-instagram', 'Tips Temukan Pesan Tersembunyi di Instagram', '<p><strong>CALIFORNIA</strong>&nbsp;- Instagram memungkinkan penggunanya untuk melakukan&nbsp;<em>direct message&nbsp;</em>(pesan langsung) satu sama lain selama beberapa waktu. Tapi apakah Anda tahu bahwa aplikasi berbagi foto ini bisa menyembunyikan pesan dari Anda?</p>\r\n<p>Instagram dikatakan bisa menyembunyikan pesan yang masuk ke kotak masuk Anda, namun pesan-pesan tersembunyi itu dengan mudah dapat ditemukan. Bagaimana caranya?</p>\r\n<div class=\"flying_carpet_div\">&nbsp;</div>\r\n<p>Berikut ini cara membuka pesan tersembunyi di Instagram sebagaimana diberitakan&nbsp;<em><a href=\"http://www.businessinsider.co.id/how-to-find-hidden-direct-messages-in-instagram-2016-9/#P6gdlC3xOxGb8usC.97\" target=\"_blank\">Business Insider</a></em>, Selasa (6/9/2016).</p>\r\n<p>1. Untuk melihat apakah Anda memiliki pesan Instagram tersembunyi, tekan ikon inbox di kanan atas aplikasi. Anda juga bisa men-swipe ke kanan.</p>\r\n<div id=\"lastread\">&nbsp;</div>\r\n<p>2. Jika Anda memiliki pesan tersembunyi, bar biru kecil akan muncul di bagian atas kotak masuk Anda mengatakan, &ldquo;Anda memiliki permintaan pesan.&rdquo;</p>\r\n<p>3. Ketuk bar biru itu, dan Anda akan melihat inbox lain dengan permintaan pesan Anda. \"Ini dari orang yang Anda tidak follow,\" menurut Instagram. \"Mereka hanya akan tahu Anda telah melihat permintaan mereka jika Anda memilih Allow.\" Anda bisa menghapus permintaan dari inbox ini tanpa membuka mereka atau mengintip dan memutuskan untuk memberi tahu pengirim bahwa Anda telah melihat pesan.</p>', 'tips-temukan-pesan-tersembunyi-di-instagram-jv6jYtSpxp.jpg', 'Publish', 'Berita', 'Instagram', '2021-04-23 05:55:57', '2021-04-30'),
(10, 3, 1, 'radiasi-handphone-memicu-kanker-otak-ini-faktanya', 'Radiasi Handphone Memicu Kanker Otak? Ini Faktanya', '<p>Tidak sedikit orang yang bermain handphone sebelum tidur. Setelah itu terlelap dalam keadaan posisi <a href=\"https://www.okezone.com/tag/handphone\">handphone</a> di dekat kepala.</p>\r\n<p>Ada informasi yang mengatakan bahwa meletakan handphone di dekat kepala dapat memicu kanker otak akibat radiasinya. Tapi, apakah itu benar?</p>\r\n<p>Kementerian Komunikasi dan Informatika (<a href=\"https://www.okezone.com/tag/kominfo\">Kominfo</a>) menegaskan bahwa informasi tersebut adalah mitos.</p>\r\n<p> </p>\r\n<p>Asumsi ini terbantahkan dari hasil penelitian yang diikuti oleh 420.000 pengguna handphone selama 20 tahun.</p>\r\n<p>Dalam penelitian tersebut, peneliti tidak menemukan hubungan antara handphone dan tumor otak. \"Alias tidak ada bukti ilmiah risiko kanker meningkat akibat penggunaan ponsel,\" tulis Kominfo di akun Instagram resminya, dikutip Rabu (28/4/2021).</p>\r\n<p>Berdasarkan data dari Cancer Research di United Kingdom (UK), disebutkan bahwa radiasi elektromagnetik frekuensi radio yang dipancarkan dan diterima oleh handphone bersifat non-ionisasi dan sangat lemah.</p>\r\n<p> </p>\r\n<p>Energi non-ionisasi ini juga tidak memiliki energi yang cukup untuk merusak DNA. Inilah alasan penggunaan handphone tidak terbukti secara langsung menyebabkan kanker otak.</p>\r\n<p>Sampai saat ini, radiasi handphone dapat menyebabkan kanker atau tumor otak masih menjadi kontroversi.</p>\r\n<p>Kekhawatiran tersebut muncul bukan tanpa alasan. Sebab, handphone memancarkan energi radio frekuensi. Selain itu, jumlah pengguna handphone meningkat dengan sangat cepat, sehingga jumlah frekuensi penggunaan handphone turut semakin meningkat.</p>', 'radiasi-handphone-memicu-kanker-otak-ini-faktanya-NuFF1VpANW.jpg', 'Publish', 'Berita', 'Handphone', '2021-04-30 03:34:57', '0000-00-00'),
(11, 5, 1, 'pulsa-hp-tersedot-misterius-ini-yang-harus-anda-lakukan', 'Pulsa HP Tersedot Misterius? Ini yang Harus Anda Lakukan', '<p>Mungkin Anda merasa kesal ketika mengetahui pulsa kartu seluler hilang secara tiba-tiba. Bila Anda pernah mengalaminya, Anda perlu berhati-hati agar tidak menjadi korban pencurian pulsa oleh operator.</p>\r\n<p>Ada banyak faktor penyebab pulsa kartu seluler tersedot, mulai dari berlangganan paket Internet, nada sambung, atau konten lainnya. Yang paling sering terjadi, pulsa tersedot karena kuota paket Internet telah habis tanpa disadari.</p>\r\n<p>Alhasil, berbagai aplikasi di ponsel akan berjalan dengan menyedot pulsa jika fitur data seluler tetap menyala.</p>\r\n<p>Selain itu, hal lain yang menyebabkan pulsa tersedot adalah ketidaksengajaan Anda mengklik iklan yang merupakan spam saat membuka suatu situs. Hal ini akan membuat kartu seluler Anda berlangganan suatu konten berbayar yang sering tidak disadari.</p>\r\n<p>&nbsp;<img src=\"https://img-z.okeinfo.net/library/images/2018/05/30/l9kux1dihi0e7v8xaiw4_17236.jpg\" alt=\"\" width=\"800\" height=\"515\" /></p>\r\n<p>Jika sudah begini, biasanya si pengguna yang tersedot pulsanya akan mengomel karena kesal dengan hal tersebut. Bagi yang putus asa biasanya akan langsung mengganti nomor ponsel.</p>\r\n<p>Padahal, ada cara yang bisa Anda lakukan untuk mengecek konten berbayar apa yang aktif pada nomor tersebut.</p>\r\n<p>Mau tahu caranya? Simak informasi selengkapnya dalam ulasan yang disajikan khusus Solopos.com.</p>\r\n<p><strong>Indosat</strong></p>\r\n<p>Hubungi nomor *726# kemudian pilih menu cek status. Perhatikan notifikasi yang muncul. Jika tidak ada layanan yang terdaftar, berarti kartu seluler Anda bebas dari konten berbayar.</p>\r\n<p>&nbsp;<img src=\"https://img-z.okeinfo.net/library/images/2018/05/30/1dqm034wb3nnq3w5ztp1_11313.jpg\" alt=\"\" width=\"975\" height=\"568\" /></p>\r\n<p>Sebaliknya, jika ada konten berbayar segera hentikan langganan dengan kembali menghubungi nomor *726# dan memilih menu setop. Tapi, jika pulsa masih terpotong, sebaiknya Anda menghubungi layanan customer service untuk mendapatkan informasi yang lebih jelas.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Telkomsel</strong></p>\r\n<p>Sama seperti Indosat, Telkomsel juga menyediakan layanan yang memungkinkan Anda melihat konten apa saja yang terdaftar di kartu seluler dengan menghubungi *116#. Anda hanya perlu mengikuti petunjuknya. Jika tidak mendapat informasi yang diinginkan, segera hubungi call center.</p>\r\n<p>Agar pulsa tidak tersedot, hindari penggunaan satu kartu seluler secara bersama. Jika terpaksa memakai satu nomor bersama, selalu cek semua aktivitas yang dilakukan dengan kartu tersebut secara berkala. Sebab, bisa saja orang lain yang memakai nomor itu tidak sengaja berlangganan konten tertentu.</p>\r\n<p>&nbsp;</p>', '1dqm034wb3nnq3w5ztp1_11313.jpg', 'Publish', 'Berita', 'Pulsa', '2021-04-30 03:39:24', '2021-04-30'),
(12, 7, 1, 'gawat-data-500-juta-pengguna-facebook-diduga-bocor', 'Gawat! Data 500 Juta Pengguna Facebook Diduga Bocor', '<p><strong>JAKARTA</strong> - Peretas mengklaim mengantongi data pribadi lebih dari 500 juta pengguna media sosial dari <strong><a href=\"https://www.okezone.com/tag/facebook\">Facebook</a></strong> Inc. Dikutip dari Reuters, Minggu (4/5/2021), kabar ini pertama kali diberitakan situs teknologi Motherboard.</p>\r\n<p>Data yang diambil peretas antara lain berupa nomor telepon, basis data yang sama dengan yang beredar di kalangan peretas pada Januari lalu.</p>\r\n<div class=\"flying_carpet_div\"> </div>\r\n<p>Menurut laporan Reuters, data tersebut dijual di sebuah situs untuk peretas kelas bawah dalam bentuk kredit digital, yang bisa dibeli dengan mata uang Euro.</p>\r\n<p>Pendiri perusahaan intelijen kriminal siber Hudson Rock dari Israel, Alon Gal, data tersebut valid, setelah dicek keasliannya terutama ke beberapa nomor telepon milik orang yang ia kenal.</p>\r\n<div id=\"lastread\"> </div>\r\n<p>Baca juga: <a class=\"ga_BreakingMore\" title=\"Suara dan Video Trump Dilarang di Facebook \" href=\"https://news.okezone.com/read/2021/04/01/18/2387778/suara-dan-video-trump-dilarang-di-facebook\"><strong>Suara dan Video Trump Dilarang di Facebook</strong></a></p>\r\n<p>Sejumlah jurnalis juga bisa mencocokkan nomor telepon ke informasi lain yang ada di basis data tersebut.</p>\r\n<p>Facebook dalam keterangan resmi menyebut data tersebut sudah \"sangat lama\" dan berkaitan dengan masalah yang sudah diperbaiki pada Agustus 2019.</p>\r\n<p>Gal menilai pengguna Facebook harus diperingatkan tentang serangan rekayasa sosial, social engineering, yang ingin mendapatkan nomor telepon atau data pribadi lainnya. <strong>(qlh)</strong></p>', 'gawat-data-500-juta-pengguna-facebook-diduga-bocor-YrONk9GVyx.jpg', 'Publish', 'Berita', 'Facebook', '2021-04-30 03:43:07', '0000-00-00'),
(13, 8, 1, 'cara-aman-membersihkan-layar-ponsel-tidak-mudah-tergores', 'Cara Aman Membersihkan Layar Ponsel Tidak Mudah Tergores', '<p>Cara membersihkan <strong><a href=\"https://www.okezone.com/tag/layar-ponsel\">layar ponsel</a></strong> perlu diketahui para penggunanya. Mengingat, layar hp selalu dipegang oleh tangan dan kemungkinan ada bakteri yang menempel di sana.</p>\r\n<p><strong><a href=\"https://www.okezone.com/tag/layar-ponsel\">Layar ponsel </a></strong>adalah permukaan dengan sentuhan tinggi. Pengguna menghabiskan waktu berjam-jam dengan smartphone mereka setiap hari dan sering lalai untuk membersihkan perangkat ini.</p>\r\n<p> </p>\r\n<p>Bakteri dan kuman dapat muncul di layar ponsel saat Anda menggunakan perangkat. Jadi, Anda harus membersihkan ponsel dan tablet secara rutin agar kuman tidak menyebar.</p>\r\n<p>Sayangnya, kebanyakan orang lalai membersihkan layar hp mereka. Jika Anda sudah lama tidak membersihkan layar hp, ikuti teknik-teknik berikut ini sebagaimana dikutip dari Digital Trends, Rabu (28/4/2021).</p>\r\n<p> </p>\r\n<p>1. Cara Membersihkan Layar Hp Menggunakan Microfiber</p>\r\n<p>Cara membersihkan layar hp yang termudah dan termurah adalah menggunakan kain mikrofiber. Tidak seperti handuk berbasis kertas, kain mikrofiber membersihkan kaca sensitif pada smartphone atau tablet dengan lembut dan tanpa risiko tergores.</p>\r\n<p>Microfiber juga menarik dan menghilangkan minyak serta debu yang tidak diingikan. Sedangkan produk lain dapat dengan mudah menyebarkan debu atau minyak.</p>\r\n<p>Untuk membersihkan layar hp Anda, matikan display. Karena ini memungkinkan Anda untuk melihat kotoran lebih baik. Ini juga wajib jika menggunakan air (lihat di bawah). Gerakkan kain ke arah horizontal atau vertikal berulang kali. Setelah Anda menyelesaikan satu area layar, lanjutkan ke area kotor berikutnya, dan lanjutkan menyeka hingga permukaan benar-benar bersih.</p>\r\n<p>Untuk pekerjaan yang lebih kotor, atau yang membutuhkan lebih dari kain mikrofiber dan sedikit minyak siku, pertimbangkan untuk menggunakan sedikit air.</p>\r\n<p>Pertama, matikan smartphone Anda dan keluarkan baterainya (jika memungkinkan). Selanjutnya, basahi salah satu sudut kain dengan air - jangan gunakan sabun apa pun saat melakukan ini - dan bersihkan permukaan layar dengan cara yang mirip dengan metode yang diuraikan di atas. Setelah selesai, gunakan bagian kain yang kering untuk menghilangkan sebagian air.</p>\r\n<p>Disarankan agar kain mikrofiber tetap bersih sehingga Anda tidak menggosok debu dan kotoran yang terangkat kembali pada layar.</p>\r\n<p>Untuk membersihkan kain, cukup rendam dalam campuran air hangat dan sabun, bilas hingga bersih, lalu keringkan sepenuhnya dengan udara sebelum digunakan kembali.</p>\r\n<p>2. Cara Membersihkan Layar Hp Menggunakan Selotip</p>\r\n<p>Cara membersihkan layar hp menggunakan selotip cukup mudah. Saat kain mikrofiber tidak lagi diperlukan dan Anda perlu membersihkan layar dengan cepat, selotip Scotch atau jenis perekat lainnya dapat digunakan.</p>\r\n<p>Cukup tempelkan selotip ke permukaan layar dan lepaskan untuk menghilangkan kotoran yang tidak diingikan. Ulangi sesering yang diperlukan untuk membersihkan seluruh layar. Untuk trik ini, selotip lebar adalah yang terbaik. Ini trik sederhana, tapi berhasil dengan baik lho!</p>\r\n<p> </p>\r\n<p>Hal-hal yang perlu dihindari:</p>\r\n<p>Tidak semua metode pembersihan dibuat sama, dan ada beberapa metode yang awalnya tampak jelas tapi harus dihindari. Berikut ini beberapa di antaranya:</p>\r\n<p>1. Pembersih Berbahan Dasar Alkohol</p>\r\n<p>Dengan layar tablet yang kotor, naluri pertama Anda mungkin adalah meraih pembersih berbahan alkohol. Pembersih ini tidak hanya bisa merusak lapisan pelindung pada perangkat, tapi jika Anda menyemprotkan langsung ke ponse, cairan dapat masuk ke dalam dan menyebabkan kerusakan port.</p>\r\n<p>Biasanya air adalah satu-satunya yang Anda butuhkan untuk membersihkan layar perangkat secara efektif. Namun, air tidak cukup untuk menghancurkan bakteri berbahaya. Jika Anda mencari solusi pembersih layar yang dapat Anda buat di rumah — sedikit alkohol yang dicampur dengan air dapat membantu melawan kuman permukaan.</p>\r\n<p>Perlu diingat, meskipun alkohol yang diencerkan dapat merusak perangkat Anda. Pastikan untuk membaca instruksi dengan hati-hati dan berhati-hatilah saat membersihkan dengan larutan ini.</p>\r\n<p>2. Tisu Basah Berbahan Dasar Kertas</p>\r\n<p>Jangan seka layar hp Anda dengan handuk kertas, tisu, kain kasar, atau bahan kaos. Meski terasa lembut saat disentuh, jahitan pada tisu ini dapat dengan mudah menggores permukaan kaca. Pada awalnya, Anda mungkin tidak memerhatikan kapan goresan mulai muncul.</p>\r\n<p>Tapi, akan menjadi sangat jelas seiring berjalannya waktu. Akhirnya, goresan dapat mengganggu respons layar Anda atau menyebabkan layar sentuh Anda tidak berfungsi. Sebagai gantinya, gunakan kain mikrofiber untuk menjaga kebersihan layar ponsel cerdas Anda.</p>', 'cara-aman-membersihkan-layar-ponsel-tidak-mudah-tergores-QKX5YOB0Zh.jpg', 'Publish', 'Berita', 'Smartphone', '2021-04-30 03:44:08', '0000-00-00'),
(14, 2, 1, 'kominfo-akan-ambil-langkah-tegas-tangani-konten-sara', 'Kominfo Akan Ambil Langkah Tegas Tangani Konten SARA', '<p><strong>JAKARTA </strong>- <a href=\"https://www.okezone.com/tag/kemenkominfo\"><strong>Kementerian Komunikasi dan Informatika (Kemenkominfo)</strong></a> menegaskan pihaknya akan terus mengambil langkah tegas dalam menangani konten ujaran kebencian yang terkait dengan isu <strong><a href=\"https://www.okezone.com/tag/sara\">suku, agama, ras, dan antar golongan (SARA)</a></strong> -- seperti kasus <strong><a href=\"https://www.okezone.com/tag/joseph-paul-zhang\">Jozeph Paul Zhang</a></strong> yang beberapa waktu terakhir mencuat.</p>\r\n<p>\"Kementerian Kominfo telah dan akan terus mengambil langkah tegas dalam menangani konten yang ditujukan untuk menimbulkan rasa kebencian atau permusuhan individu dan/atau untuk kelompok tertentu yang berdasarkan SARA. Kominfo bertindak tegas dalam menangani konten ujaran kebencian berbau SARA,\" kata Juru Bicara Kementerian Kominfo Dedy Permadi dalam jumpa pers daring, Senin (26/4), speerti dikutip Antara..</p>\r\n<p>\"Kami tidak akan memberikan toleransi, dan menindak tegas konten yang menyebarkan ujaran kebencian individu dan kelompok berdasarkan SARA. Konten yang melanggar peraturan perundang-undangan akan dilakukan pemblokiran dan pemutusan akses sesuai dengan ketentuan yang berlaku,\" lanjutnya.</p>\r\n<p>Lebih lanjut, Dedy mengatakan bahwa Kementerian Kominfo sejak tahun 2018 hingga hari ini, Senin (26/4/2021) telah melakukan pemutusan akses (take down) terhadap sebanyak 3.640 konten yang bermuatan ujaran kebencian dan permusuhan berdasarkan SARA.</p>\r\n<p><strong><a href=\"https://techno.okezone.com/read/2021/04/27/16/2401333/jangan-khawatir-ini-tips-hindari-tag-video-porno-di-facebook\">(Baca juga: Jangan Khawatir, Ini Tips Hindari Tag Video Porno di Facebook)<br></a></strong></p>\r\n<p>\"Dari sebanyak 3.640 konten, di dalamnya termasuk pemutusan akses terhadap 54 konten yang diduga mengandung konten kebencian dan permusuhan yang pertama kali diunggah oleh Jozeph Paul Zhang,\" ujarnya.</p>\r\n<p>Konten-konten yang telah diputus aksesnya itu sebelumnya tersebar di berbagai situs, platform media sosial, dan file sharing.</p>\r\n<p>Ada pun konten yang diputus aksesnya tersebut memiliki beberapa kriteria. Menurut Dedy, setidaknya terdapat tiga kriteria penting yang menjadi dasar untuk pihaknya melakukan take down.</p>\r\n<p>Kriteria pertama adalah konten yang mengandung muatan untuk melakukan penghinaan termasuk agama-agama di Indonesia. Kedua adalah ajakan untuk membenci atau melakukan kekerasan terhadap pemeluk agama tertentu. Terakhir, adalah seruan untuk membenci individu dari kelompok atau suku tertentu.</p>', 'kominfo-akan-ambil-langkah-tegas-tangani-konten-sara-W8DCqcCuhR.jpg', 'Publish', 'Berita', 'SARA', '2021-04-30 03:45:41', '0000-00-00'),
(15, 8, 1, 'google-maps-hadirkan-fitur-terbaru-penunjuk-rute-hemat-bensin', 'Google Maps Hadirkan Fitur Terbaru Penunjuk Rute Hemat Bensin', '<p><strong>MOUNTAIN VIEW</strong> - Salah satu alasan orang menggunakan <strong><a href=\"https://www.okezone.com/tag/google-maps\">Google Maps</a></strong> adalah karena harus mencapai tujuan dalam waktu sesingkat mungkin.</p>\r\n<p>Namun, rute tercepat tidak selalu menjadi rute terpendek. Ini karena rute tercepat mungkin membawa pengguna ke jalan yang jaraknya lebih jauh, tapi karena tidak terlalu macet, pengguna bisa mencapai lebih cepat.</p>\r\n<p>Meskipun demikian, laporan dari Autoevolution telah mengungkapkan bahwa dalam pembaruan Google Maps, Google akan mengubah algoritme yang digunakannya untuk menghitung rute.</p>\r\n<p>Ini berarti bahwa alih-alih menetapkan rute tercepat, Google sekarang akan mencoba menemukan rute yang paling hemat bahan bakar bagi pengemudi.</p>\r\n<p><strong><a href=\"https://techno.okezone.com/read/2021/04/28/16/2401987/facebook-rancang-fitur-komisi-penjualan-untuk-kreator-konten\"> </a></strong></p>\r\n<p>Melansir laman Ubergizmo, Selasa (27/4/2021), jika Google menentukan bahwa rute tercepat dan paling hemat bahan bakar memiliki perkiraan waktu kedatangan yang sama, Google Maps akan memilih opsi yang lebih ramah lingkungan.</p>\r\n<p>Namun, Google tidak akan memaksakan hal ini kepada semua orang karena pengguna masih memiliki opsi untuk memilih apakah mereka menginginkan rute tercepat atau yang paling ramah lingkungan.</p>\r\n<p>Ini merupakan pembaruan yang menarik karena efisiensi bahan bakar dapat ditentukan oleh banyak faktor. Tapi setidaknya Google memberikan opsi kepada pengguna.</p>', 'google-maps-hadirkan-fitur-terbaru-penunjuk-rute-hemat-bensin-JFTmhdni58.jpg', 'Publish', 'Berita', 'GoogleMaps', '2021-04-30 03:47:44', '0000-00-00'),
(16, 4, 1, 'twitter-hadirkan-fitur-khusus-informasi-seputar-covid-19', 'Twitter Hadirkan Fitur Khusus Informasi Seputar Covid-19', '<p><strong>MENLO PARK</strong> - <strong><a href=\"https://www.okezone.com/tag/twitter\">Twitter</a></strong> baru saja meluncurkan prompt baru berupa kolom informasi terkait vaksinasi Covid-19 yang sedang berlangsung di sejumlah negara.</p>\r\n<p>Fitur itu berupa kota pemberitahuan di laman utama yang tidak bisa dilewati pengguna. Untuk sementara, fitur tersebut baru tersedia bagi pengguna yang mengakses <strong><a href=\"https://www.okezone.com/tag/twitter\">Twitter</a></strong> lewat aplikasi Android dan iOS.</p>\r\n<p>Melansir laman <em>The Verge</em>, Selasa (27/4/2021), kotak pemberitahuan yang ada di laman utama berisikan sebuah tautan. Jika di klik tautan itu membawa pengguna ke halaman acara Twitter baru dengan informasi tentang vaksin.</p>\r\n<p><strong> </strong></p>\r\n<p>Halaman tersebut ditampilkan sebagai rangkaian tweet yang dikumpulkan dari organisasi seperti Organisasi Kesehatan Dunia (WHO) dan Pusat Pengendalian dan Pencegahan Penyakit (CDC).</p>\r\n<p>Panduan ini dibagi menjadi beberapa bagian, seperti soal kemanjuran vaksin, potensi efek samping, saran untuk orang hamil, dan banyak lagi.</p>\r\n<p><strong> </strong></p>\r\n<p>Ini adalah upaya terbaru dari sebuah perusahaan teknologi besar untuk membantu mempromosikan vaksin COVID-19 dan memberikan informasi yang berguna dan akurat kepada pengguna.</p>\r\n<p>Facebook juga baru-baru ini menambahkan informasi vaksinasi negara bagian ke dalam News Feed-nya untuk pengguna AS.</p>', 'twitter-hadirkan-fitur-khusus-informasi-seputar-covid-19-mhTs9mDJa8.jpg', 'Publish', 'Berita', 'twitter', '2021-04-30 03:48:58', '0000-00-00'),
(17, 1, 1, 'whatsapp-tambah-fitur-baru-dapat-hilangkan-pesan-dalam-24-jam', 'WhatsApp Tambah Fitur Baru, Dapat Hilangkan Pesan dalam 24 Jam', '<p><strong>JAKARTA </strong>- Setelah batas tujuh hari, <a href=\"https://www.okezone.com/tag/whatsapp\">WhatsApp</a> sekarang menguji dan mengembangkan fitur Pesan Hilang dengan opsi 24 jam untuk obrolan pribadi maupun grup.</p>\r\n<p>Menurut WABetaInfo, situs web yang melacak WhatsApp dalam Beta, mengungkapkan bahwa fitur pesan yang hilang akan tersedia di pembaruan beberapa waktu ke depan.</p>\r\n<p><a title=\"Tips Agar Status WhatsApp Tidak Bisa Dilihat Orang yang Tidak Diinginkan\" href=\"https://techno.okezone.com/read/2021/04/12/16/2393039/tips-agar-status-whatsapp-tidak-bisa-dilihat-orang-yang-tidak-diinginkan\"> </a></p>\r\n<p>\"WhatsApp tidak akan menggantikan opsi 7 hari, tetapi 24 jam akan menjadi opsi tambahan,\" kata laporan itu dikutip dari Business Insider, Senin (26/4/2021).</p>\r\n<p>Ketika pengguna memilih \"24 jam\", semua pesan yang dikirim dan diterima setelah perubahan ini akan kadaluwarsa setelah 24 jam, sehingga pesan tersebut akan hilang dari obrolan.</p>\r\n<p>Fitur ini sedang dalam pengembangan dan akan tersedia di pembaruan mendatang untuk iOS, Android, Web dan desktop.</p>\r\n<p>Pada November tahun lalu, WhatsApp meluncurkan \'Pesan Menghilang\' yang sangat ditunggu-tunggu di platformnya untuk pengguna Android dan iOS.</p>\r\n<p><a title=\"Tak Setuju Aturan Privasi Baru WhatsApp, Begini Nasib Akun Anda\" href=\"https://techno.okezone.com/read/2021/02/22/16/2365992/tak-setuju-aturan-privasi-baru-whatsapp-begini-nasib-akun-anda\">BACA JUGA: Tak Setuju Aturan Privasi Baru WhatsApp, Begini Nasib Akun Anda</a></p>\r\n<p>Fitur ini akan membuat pesan secara otomatis dihapus setelah tujuh hari setalah fitur dihidupkan.</p>\r\n<p>Dalam obrolan personal, salah satu orang dapat mengaktifkan atau menonaktifkan pesan yang hilang. Sementara dalam grup, admin akan memiliki kendali atas fitur baru.</p>', 'whatsapp-tambah-fitur-baru-dapat-hilangkan-pesan-dalam-24-jam-p0gAV0eF38.jpg', 'Publish', 'Berita', 'whatsapp', '2021-04-30 03:49:49', '0000-00-00'),
(18, 9, 1, 'jam-tangan-pintar-ini-mampu-deteksi-covid-19-melalui-keringat', 'Jam Tangan Pintar Ini Mampu Deteksi Covid-19 Melalui Keringat', '<p><strong>JAKARTA</strong> - Baru-baru ini ilmuwan dari University of Texas di Dallas, melakukan penelitian perangkat seukuran jam tangan yang dapat menganalisis keringat dan dapat melihat tanda-tanda badai sitokin yang akan datang yang disebabkan oleh <strong><a href=\"https://www.okezone.com/tag/covid-19\">Covid-19 dan infeksi</a></strong> lainnya.</p>\r\n<p>Fenomena tersebut terjadi ketika bahan kimia dalam aliran darah yang disebut sitokin, berkembang biak dengan cepat dan tidak terkendali. Bahan kimia ini dirancang untuk membatasi dan mengontrol sistem kekebalan tubuh dan jika salah dapat menyebabkan peradangan dan kerusakan organ.</p>\r\n<p>Pada awal <strong><a href=\"https://www.okezone.com/tag/covid-19\">pandemi Covid-19</a></strong>, para dokter menyadari bahwa pasien yang mengembangkan \'badai sitokin\' seringkali merupakan yang paling berisiko tinggi untuk meninggal.</p>\r\n<p> </p>\r\n<p>Untuk itu para tim peneliti mengembangkan strip sensor dengan antibodi terhadap tujuh protein pro-inflamasi dan mengujinya pada enam orang sehat dan lima orang dengan flu, virus lain yang dapat memicu badai sitokin.</p>\r\n<p>Dua dari orang yang sakit menunjukkan peningkatan kadar sitokin sementara semua peserta memiliki sitokin dalam keringat mereka yang sesuai dengan nilai yang diharapkan berdasarkan penelitian sebelumnya.</p>\r\n<p> </p>\r\n<p>Sistem peringatan dini akan memungkinkan dokter untuk memberikan steroid dengan cepat, mengurangi risiko badai sitokin tidak terkendali. \"Saat ini utamanya dalam konteks Covid-19, jika Anda dapat memantau sitokin pro-inflamasi dan melihatnya meningkat, Anda dapat merawat pasien lebih awal, bahkan sebelum mereka menunjukkan gejala, \'\' kata salah seorang peneliti Shalini Prasad, dikutip dari laman Daily Mail, Selasa (27/4/2021).</p>\r\n<p>Deteksi dini penting karena begitu badai sitokin dilepaskan, peradangan yang berlebihan dapat merusak organ, menyebabkan penyakit parah dan kematian.</p>\r\n<p>Sebaliknya, jika dokter dapat memberikan steroid atau terapi lain segera setelah kadar sitokin mulai meningkat, rawat inap dan kematian dapat dikurangi.</p>\r\n<p>Meskipun tes darah dapat mengukur sitokin, tes ini sulit dilakukan di rumah, dan tidak dapat terus memantau kadar protein. Sitokin diekskresikan dalam keringat pada tingkat yang lebih rendah daripada dalam darah.</p>\r\n<p>Untuk mengumpulkan cukup keringat untuk pengujian, para ilmuwan telah meminta pasien untuk berolahraga, atau mereka telah menerapkan arus listrik kecil ke kulit pasien. Namun, prosedur ini sendiri dapat mengubah kadar sitokin.</p>\r\n<p>\"Ketika berbicara tentang sitokin, kami menemukan bahwa Anda harus mengukurnya dalam keringat pasif,\" tuturnya.</p>', 'jam-tangan-pintar-ini-mampu-deteksi-covid-19-melalui-keringat-K1nCNSspMo.jpg', 'Publish', 'Berita', 'Covid19', '2021-04-30 03:51:18', '0000-00-00'),
(19, 8, 1, 'twitter-sensor-cuitan-yang-kritisi-penanganan-covid-19-di-india', 'Twitter Sensor Cuitan yang Kritisi Penanganan COVID-19 di India', '<p><strong>JAKARTA </strong>- Media sosial <a href=\"https://www.okezone.com/tag/twitter\">Twitter</a> melakukan sensor terhadap berbagai cuitan yang mengkritisi penanganan pemerintah India dalam menangani kasus <a href=\"https://www.okezone.com/tag/covid-19\">COVID-19</a>.</p>\r\n<p>Melansir The Verge, Minggu, penyensoran dimulai dari permintaan darurat Pemerintah India yang meminta 52 cuitan penanganan COVID-19 di India dihapus atau dihilangkan.</p>\r\n<p>Beberapa cuitan yang dihapus berasal dari Dewan Perwakilan Rakyat di India, Menteri negara bagian Bengal Barat, aktor, hingga sutradara.</p>\r\n<p><a title=\"Usai Putusan Bersalah Pembunuhan George Floyd, Obama Langsung Cuit Pernyataan Sikap di Twitter\" href=\"https://news.okezone.com/read/2021/04/21/18/2398148/usai-putusan-bersalah-pembunuhan-george-floyd-obama-langsung-cuit-pernyataan-sikap-di-twitter\"> </a></p>\r\n<p>Juru bicara Twitter mengungkapkan penyensoran yang dilakukan mengikuti regulasi dan kebijakan lokal di India.</p>\r\n<p>Pengguna yang cuitannya disensor atau dihapus akan diberi notifikasi oleh Twitter bahwa hal itu dilakukan karena telah melanggar regulasi di India.</p>\r\n<p>\"Saat kami menerima permintaan hukum yang valid, kami melakukan pengecekan baik dari regulasi yang dimiliki Twitter dan juga kebijakan hukum lokal. Jika kontennya melanggar aturan Twitter, maka dipastikan konten itu dihilangkan dari layanan kami,\" kata juru bicara Twitter.</p>\r\n<p>Untuk kasus di India, jika tidak ditemukan pelanggaran dari regulasi Twitter namun ditemukan pelanggaran dari hukum regional maka cuitan hanya disensor untuk warga India.</p>\r\n<p>\"Dalam setiap penyensoran (di India) kami akan memberitahu pemilik akun secara langsung sehingga mereka paham bahwa kami menerima permintaan hukum terkait cuitan di akun tersebut,\" katanya.</p>\r\n<p><a title=\"Covid-19 \'Mengganas\' di India, WNI Bercerita Soal Kasta Atas yang Boleh Langgar Prokes\" href=\"https://news.okezone.com/read/2021/04/23/18/2399511/covid-19-mengganas-di-india-wni-bercerita-soal-kasta-atas-yang-boleh-langgar-prokes\"> </a></p>\r\n<p>Ini bukan pertama kalinya Twitter mendapatkan permintaan khusus dari Pemerintah India.</p>\r\n<p>Sebelumnya pada Februari 2021, sempat terjadi aksi dari kalangan petani di India.</p>\r\n<p>Sebagai respon hukum, Pemerintah India meminta sebanyak 500 akun ditutup dan dihilangkan cuitannya agar tidak dapat diakses oleh warga di India.</p>\r\n<div id=\"ADOP_V_izdldm3JSI\">\r\n<div><ins class=\"adsbyadop_f85b7331-0996-4a86-a71c-61268546314efR2\"> </ins></div>\r\n</div>', 'twitter-sensor-cuitan-yang-kritisi-penanganan-covid-19-di-india-28XxPOvdvm.jpg', 'Publish', 'Berita', 'Twitter, Covid19', '2021-04-30 03:53:25', '0000-00-00'),
(20, 5, 1, 'laptop-anda-kena-virus-ini-cara-membersihkannya', 'Laptop Anda Kena Virus? Ini Cara Membersihkannya', '<p><strong>JAKARTA </strong>- Cara membersihkan virus di <a href=\"https://www.okezone.com/tag/laptop\">laptop</a> cukup mudah. Ada beberapa langkah sederhana yang dapat ditiru untuk menghapus virus dari laptop Anda.</p>\r\n<p>Dalam banyak kasus, menggunakan kombinasi Safe Mode bawaan komputer Anda dan program antivirus sudah cukup untuk menghapus virus. Perlu diingat, tidak semua virus bisa dihapus.</p>\r\n<p>Artinya, Anda mungkin harus menginstal ulang sistem operasi komputer dari awal untuk menghilangkan virus. Bagi yang ingin mengetahui cara menghapus virus di laptop jangan khawatir. Berikut ini cara membersihkan virus di laptop sebagaimana dikutip dari Wikihow, Selasa (20/4/2021).</p>\r\n<p><a title=\"Jaga Kesehatan Mata Anda dari Paparan Cahaya Layar Gadget, Ini Tipsnya\" href=\"https://techno.okezone.com/read/2021/04/05/16/2389627/jaga-kesehatan-mata-anda-dari-paparan-cahaya-layar-gadget-ini-tipsnya\"> </a></p>\r\n<p><strong>1. Cara Membersihkan Virus di Laptop Windows</strong></p>\r\n<p>- Buka Windows Security Panel</p>\r\n<p>- Klik Virus & treat protection</p>\r\n<p>- Klik scan options. Biasanya terletak di sebelah kanan panel</p>\r\n<p>- Select Microsoft Defender Offline Scan</p>\r\n<p>- Klik Scan noe. Tindakan ini akan mereboot PC ke mode offline yang lebih aman sehingga dapat memindai virus dan malware sepenuhnya. Pemindaian akan memakan waktu sekitar 15 menit dan PC akan restart secara otomatis setelah selesai.</p>\r\n<p>- Re-open Windows Security dan select Virus & threat protection. Anda akan ingin melakukan ini segera usai PC Anda restart setelah scan.</p>\r\n<p><a title=\"Bahaya Sering Memangku Laptop bagi Kesehatan, Baca Ya!\" href=\"https://lifestyle.okezone.com/read/2021/03/30/481/2386429/bahaya-sering-memangku-laptop-bagi-kesehatan-baca-ya\"> </a></p>\r\n<p>- Klik Riwayat proteksi untuk melihat hasilnya. Jika ada virus atau malware yang ditemukan selama pemindaian, Anda akan melihat tindakan yang diambil oleh Microsoft Defender.</p>\r\n<p>- Restart komputer Anda dalam Safe Mode. Safe Mode adalah versi sistem operasi komputer Anda yang hanya memuat file dan layanan yang diperlukan, sehingga sebagian besar virus tidak mungkin berjalan.</p>\r\n<p>- Buka Disk Cleanup</p>\r\n<p>- Delete file temporary dan system information</p>\r\n<p>- Download dan extract Autoruns</p>\r\n<p>- Gunakan Autoruns untuk menghapus file malicious</p>\r\n<p>- Restart Windows</p>\r\n<p>- Ubah halaman home browser jika perlu</p>\r\n<p>- Jalankan Malwarebytes malware scan</p>\r\n<p>- Reinstall Windows jika perlu</p>', 'laptop-anda-kena-virus-ini-cara-membersihkannya-OOtQHFr8SK.jpg', 'Publish', 'Berita', 'Virus', '2021-04-30 03:54:57', '0000-00-00'),
(21, 8, 1, 'tiktok-digugat-atas-dugaan-pengumpulan-data-pribadi-anak-secara-ilegal', 'TikTok Digugat Atas Dugaan Pengumpulan Data Pribadi Anak Secara Ilegal', '<p><strong>BEIJING</strong> - <strong><a href=\"https://www.okezone.com/tag/tik-tok\">TikTok</a></strong> menghadapi gugatan hukum dari mantan komisaris anak-anak untuk Inggris, Anne Longfield. Ia menuduh aplikasi asal China tersebut mengumpulkan informasi pribadi pengguna anak-anak secara ilegal.</p>\r\n<p>Longfield telah mengajukan gugatan ke pengadilan tinggi atas nama jutaan anak di Inggris dan Wilayah Ekonomi Eropa yang telah menggunakan <strong><a href=\"https://www.okezone.com/tag/tik-tok\">TikTok</a></strong> sejak 25 Maret 2018.</p>\r\n<p>Dia menuduh aplikasi tersebut melanggar undang-undang perlindungan data anak-anak Inggris dan Uni Eropa dan bertujuan untuk menghentikan pemrosesan informasi jutaan anak, memaksa <strong><a href=\"https://www.okezone.com/tag/tik-tok\">TikTok </a></strong>menghapus semua data anak-anak yang dimiliki, dan membayar kompensasi yang menurutnya dapat mencapai miliaran pound.</p>\r\n<p><strong> </strong></p>\r\n<p>Terlepas dari persyaratan usia minimum 13 tahun, ia menemukan tahun lalu bahwa 42% anak berusia delapan hingga 12 tahun di Inggris menggunakan TikTok.</p>\r\n<p>Seperti perusahaan media sosial lainnya, ada kekhawatiran tentang pengumpulan data dan Kantor Komisaris Informasi Inggris sedang menyelidiki penanganan informasi pribadi anak-anak oleh TikTok.</p>\r\n<p><strong> </strong></p>\r\n<p>Namun, menurutnya, Menurutnya, dibandingkan dengan platform media sosial lainnya, TikTok memiliki kebijakan pengumpulan data yang berlebihan.</p>\r\n<p>\"TikTok adalah platform media sosial yang sangat populer yang telah membantu anak-anak tetap berhubungan dengan teman-teman mereka selama tahun yang sangat sulit. Namun, di balik lagu-lagu yang menyenangkan, tantangan menari dan tren sinkronisasi bibir ada sesuatu yang jauh lebih menyeramkan,\" kata Longfield dikutip dari The Guardian, Kamis (22/4/2021).</p>\r\n<p>Klaim hukum tersebut menuduh bahwa TikTok mengambil informasi pribadi anak-anak tanpa peringatan yang memadai, transparansi atau persetujuan.</p>\r\n<p>Para orang tua dan anak-anak tidak mengetahui apa yang dilakukan dengan informasi pribadi mereka. Longfield yakin lebih dari 3,5 juta anak di Inggris saja bisa terpengaruh.</p>\r\n<p>Menanggapi hal ini, TikTok mengatakan pihaknya selalu menjaga privasi dan keamanan aplikasinya. Bahkan, dua hal tersebut merupakan prioritas utama TikTok untuk terus dijaga dan dilindungi.</p>\r\n<p>\"Kami memiliki kebijakan, proses, dan teknologi yang kuat untuk membantu melindungi semua pengguna, dan pengguna remaja kami pada khususnya. Kami yakin klaim tersebut tidak pantas,\" kata juru bicara TikTok.</p>', 'tiktok-digugat-atas-dugaan-pengumpulan-data-pribadi-anak-secara-ilegal-rHzv0Cyky7.jpg', 'Publish', 'Berita', 'TikTok', '2021-04-30 03:56:37', '0000-00-00'),
(22, 7, 1, 'jangan-khawatir-ini-cara-agar-smartphone-terhindar-dari-overheating', 'Jangan Khawatir, Ini Cara Agar Smartphone Terhindar dari Overheating', '<p><strong>JAKARTA</strong> - Penggunaan <strong><a href=\"https://www.okezone.com/tag/smartphone\">smartphone</a></strong> selama <strong><a href=\"https://www.okezone.com/tag/bulan-ramadhan\">Ramadhan</a></strong> meningkat drastis. Hampir semua aktivitas dilakukan smartphone. Misalkan merekam momen <strong><a href=\"https://www.okezone.com/tag/sahur\">sahur</a></strong>, <strong><a href=\"https://www.okezone.com/tag/berbuka-puasa\">berbuka</a></strong> dan kegiatan <strong><a href=\"https://www.okezone.com/tag/berpuasa\">berpuasa</a></strong>, bermain <strong><a href=\"https://www.okezone.com/tag/game\">game</a></strong>, hingga streaming video ataupun <strong><a href=\"https://www.okezone.com/tag/youtube\">YouTube</a></strong>.</p>\r\n<p>Akibatnya, smartphone sering menjadi panas karena pemakaian yang tiada henti. Untuk mencegahnya, bisa lakukan tips berikut:</p>\r\n<p> </p>\r\n<ul>\r\n<li>Istirahatkan smartphone</li>\r\n</ul>\r\n<p>Ada kalanya ponsel juga perlu beristirahat. Untuk mendinginkan ponsel, dimana cahaya lampu di layar tidak menyala.</p>\r\n<p> </p>\r\n<ul>\r\n<li>Simpan di tempat teduh</li>\r\n</ul>\r\n<p>Hindari menaruh ponsel di bawah sinar matahari langsung, terutama pada siang hari yang panas. Smartphone rentan terhadap cuaca dan akan mati secara otomatis setelah suhu internal mencapai titik tertentu.</p>\r\n<p> </p>\r\n<ul>\r\n<li>Turunkan tingkat kecerahan layar</li>\r\n</ul>\r\n<p>Semakin tinggi tingkat kecerahan layar, semakin banyak pula kapasitas daya baterai yang diperlukan. Imbasnya pada penggunaan energi besar sehingga menyebabkan panas di bodi.</p>\r\n<p> </p>\r\n<ul>\r\n<li>Tutup aplikasi game</li>\r\n</ul>\r\n<p>Membuka aplikasi game biasanya menguras lebih banyak daya baterai. Jika aktivitas ini dilakukan dalam waktu lama maka mungkin saja menyebabkan kinerja prosesor ponsel menjadi berat dan panas.</p>\r\n<p> </p>\r\n<ul>\r\n<li>Optimalkan Fitur di Ponsel</li>\r\n</ul>\r\n<p>Untuk mencegah panas berlebih atau overheating di smartphone yang digunakan untuk bermain game dalam waktu lama, OPPO menggunakan teknologi Multi-Cooling System lewat OPPO Reno5 F.</p>\r\n<p>Pengguna tidak perlu khawatir ponsel mudah panas. Teknologi pendingin ini mampu meningkatkan efisiensi pembuangan panas sebesar 30% akibat penggunaan aplikasi berat dalam waktu lama.</p>\r\n<p>OPPO Reno5 F juga mampu membaca dan menganalisis data dari sensor suhu di bagian dalam, lalu menggunakannya untuk memperkirakan suhu penutup belakang ponsel hingga 1,5 derajat Celcius.</p>\r\n<p>OPPO Reno5 F juga memiliki pengontrol suhu pintar yang dapat menyeimbangkannya dengan kinerja ponsel berdasarkan skenario penggunaan ponsel sehari-harinya.</p>', 'jangan-khawatir-ini-cara-agar-smartphone-terhindar-dari-overheating-IoepgRcZZQ.jpg', 'Publish', 'Berita', 'Overheat', '2021-04-30 03:57:18', '0000-00-00'),
(23, 6, 1, 'hati-hati-akun-dibajak-jangan-klik-tautan-baru-whatsapp-warna-pink', 'Hati-hati Akun Dibajak, Jangan Klik Tautan Baru WhatsApp Warna Pink', '<p><strong>JAKARTA</strong> - <strong><a href=\"https://www.okezone.com/tag/penjahat\">Penjahat</a></strong> <strong><a href=\"https://www.okezone.com/tag/kejahatan-siber\">siber</a></strong> kembali beraksi di <strong><a href=\"https://www.okezone.com/tag/whatsapp\">aplikasi WhatsApp.</a></strong> Pengguna diharapkan jangan terkecoh, karena tautan yang mengklaim WhatsApp punya tema baru <strong><a href=\"https://www.okezone.com/tag/warna-merah-muda\">berwarna pink</a></strong> merupakan <strong><a href=\"https://www.okezone.com/tag/penipuan\">penipuan</a></strong>.</p>\r\n<p>Melansir dari Mint, Senin (19/4/2021), layaknya informasi lainnya, tautan palsu ini tersebar luas melalui berbagai obrolan grup. Tidak hanya mengiming-imingi tema baru, tautan juga menjanjikan fitur-fitur baru di WhatsApp.</p>\r\n<p>Tautan yang dibagikan tersebut mengklaim resmi berasal dari WhatsApp. Tentu jangan sampai terkecoh dan sembarang mengklik tautan yang tersebar di media sosial atau aplikasi perpesanan serupa.</p>\r\n<p><strong><a href=\"https://techno.okezone.com/read/2021/04/20/16/2397501/nasa-berhasil-terbangkan-helikopter-mini-di-permukaan-mars?page=1\">(Baca juga: NASA Berhasil Terbangkan Helikopter Mini di Permukaan Mars)<br></a></strong></p>\r\n<p>Jika diklik, tautan tersebut bisa meretas dan membuat pengguna kehilangan akun WhatsApp mereka. Berdasarkan laporan, sejumlah pengguna WhatsApp telah membagikannya tersebut tanpa tahu bahwa tautan ini berbahaya.</p>\r\n<p>Menurut Direktur Perusahaan Keamanan Siber, Voyager Infosec Jiten Jain, pengguna sangat tidak disarankan menginstal APK atau aplikasi mobile apa pun selain dari sumber toko aplikasi resmi seperti Google atau Apple.</p>\r\n<p><strong><a href=\"https://techno.okezone.com/read/2021/04/19/16/2397369/instagram-lite-resmi-hadir-di-indonesia-hiasi-konten-ramadhan\"> </a></strong></p>\r\n<p>\"Aplikasi jahat semacam ini bisa digunakan untuk mengambil alih smartphone dan mencuri data pribadi seperti foto, SMS, daftar kontak, dan lain-lain,\" terangnya.</p>\r\n<p><br class=\"Apple-interchange-newline\"><br></p>', 'hati-hati-akun-dibajak-jangan-klik-tautan-baru-whatsapp-warna-pink-HexWS1hPwx.jpg', 'Publish', 'Berita', 'Whatsapp', '2021-04-30 03:57:55', '0000-00-00'),
(24, 8, 1, 'ceo-google-curhat-pandemi-di-india-masih-mungkin-memburuk', 'CEO Google Curhat Pandemi di India Masih Mungkin Memburuk', '<p>&nbsp;</p>\r\n<p>CEO&nbsp;<strong><a href=\"https://www.cnnindonesia.com/tag/google\">Google</a></strong>&nbsp;Sundar Pichai mengaku situasi&nbsp;<strong><a href=\"https://www.cnnindonesia.com/tag/pandemi-covid-19\">pandemi Covid-19</a></strong>&nbsp;di India masih mungkin untuk berubah makin buruk.</p>\r\n<div id=\"_forkInArticleAdContainer\">&nbsp;</div>\r\n<div id=\"null\">&nbsp;</div>\r\n<p>Sebab, menurutnya situasi yang lebih buruk belum terjadi di negara kelahirannya itu. Hal ini diungkap dalam wawancara eksklusif dengan CNN.</p>\r\n<p>Wawancara tersebut dilakukan setelah Pichai dan Satya Nadella dari Microsoft secara terbuka berjanji untuk membantu memerangi lonjakan kasus virus corona di India.</p>\r\n<center></center>\r\n<p>&nbsp;</p>\r\n<p>\"Situasinya mengerikan, dan sangat memilukan untuk dilihat. Saya pikir yang terburuk belum datang,\" kata Pichai.</p>\r\n<p>Pichai mengapresiasi kepedulian Presiden AS Joe Biden terhadap kondisi di India. Dia mengatakan ada upaya AS membantu India dan negara-negara lain yang terkena dampak.</p>\r\n<p>Dari sisi Google, Pichai menyampaikan Google bakal berusaha untuk memberikan informasi yang paling berguna bagi India. Dia menyebut ada 600 juta orang India yang terhubung ke internet dan mencari informasi tentang vaksin dan pengujiannya.</p>\r\n<p>\"Jadi bekerja sama dengan Kementerian Kesehatan di India, memastikan kami dapat memperoleh informasi yang benar di lapangan telah menjadi fokus utama kami,\" ujarnya.</p>\r\n<p>Pichai juga menyampaikan Google bermitra dengan LSM dan organisasi kesehatan masyarakat untuk menyebarkan pesan, misalnya agar orang-orang dapat tinggal di rumah hingga terus menggunakan masker.</p>\r\n<p>Lebih lanjut, Pichai mengaku sangat senang jika ada perusahaan lain dengan keahlian berbeda yang juga turut membantu India. Salah satu hal yang mungkin dilakukan memberikan uang tunai dan sumber daya lainnya kepada organisasi di lapangan.</p>\r\n<p>\"Sangat mungkin untuk memberikan uang tunai dan sumber daya lainnya kepada organisasi di lapangan yang menurut saya dapat membuat perbedaan besar,\" ujar Pichai.</p>\r\n<p>Di sisi lain, Pichai juga berkomentar perihal pasokan vaksin bagi India. Dia menyampaikan perlu bekerja keras untuk memastikan India dapat mengakses pasokan vaksin di seluruh dunia secepat mungkin.</p>\r\n<p>Adapun penilaian terhadap Perdana Menteri India Narendra Modi dalam menanganai pandemi, Pichai tidak menjawab secara spesifik. Dia hanya mengingatkan langkah-langkah keamanan publik yang baik dan memperhatikan krisis adalah satu-satunya hal yang dapat dilakukan dalam jangka pendek.</p>\r\n<p>\"Sebagai perusahaan, kami siap membantu,\" ujarnya.</p>\r\n<p>Lebih dari itu, Pichai angkat bicara soal permintaan penghapusan postingan di Twitter hingga Facebook yang mengkritik Modi. Dia menjelaskan Google mematuhi undang-undang setempat, terutama di negara-negara demokratis yang melalui norma dan prosesnya telah disahkan undang-undang.</p>\r\n<p>\"Saya pikir salah satu kekuatan India adalah tradisi demokrasi yang mengakar kuat, berdasarkan kebebasan berekspresi dan memungkinkan keragaman sudut pandang. Itu kekuatan. Kami belum punya permintaan. Di masa lalu kami dapat bekerja secara konstruktif dengan pemerintah di seluruh dunia, dan kami akan melanjutkan pendekatan tersebut di sini,\" ujar Pichai.</p>', 'eniorvicepresidentofgettyimages.jpg', 'Publish', 'Berita', 'Google', '2021-04-30 04:00:40', '2021-04-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_client`
--

CREATE TABLE `tb_client` (
  `id_client` int(11) NOT NULL,
  `jenis_client` varchar(50) NOT NULL,
  `nama_client` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `email_client` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `gambar_client` varchar(255) NOT NULL,
  `publish` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_client`
--

INSERT INTO `tb_client` (`id_client`, `jenis_client`, `nama_client`, `alamat`, `no_telepon`, `email_client`, `website`, `gambar_client`, `publish`, `date_created`, `last_modified`) VALUES
(2, '6', 'OVO', 'jl jalan', '02180091', 'selalubuka@mail.com', 'www.ovo.com', '1024px-Logo_ovo_purple_svg.png', 'Publish', '2021-05-01 04:24:13', '2021-05-01'),
(3, '6', 'Grab', 'ini alamat grab', '021020202', 'grab@jek.com', 'www.grab.com', '1200px-Grab_Logo_svg.png', 'Publish', '2021-05-01 04:25:54', '2021-05-01'),
(4, '6', 'Gojek', 'ini alamat gojek', '021121212', 'gojek@jek.com', 'www.gojek.com', 'hitobajlkseeivcjy22b.png', 'Publish', '2021-05-01 04:27:20', '0000-00-00'),
(5, '1', 'Link Aja', 'ini alamat link aja', '02121212129', 'link@aja.com', 'www.linkaja.com', '1200px-LinkAja_svg.png', 'Publish', '2021-05-01 04:48:24', '0000-00-00'),
(6, '1', 'Traveloka', 'ini alamat traveloka', '02121212129', 'travel@ok.com', 'www.traveloka.com', 'Traveloka_Primary_Logo.png', 'Publish', '2021-05-01 04:50:09', '2021-05-01'),
(7, '5', 'Tokopedia', 'ini alamat tokopakedi', '02121212129', 'toko@pedia.com', 'www.tokopedia.com', '1575050504675-logo-tokopedia.jpg', 'Publish', '2021-05-01 04:51:04', '0000-00-00'),
(8, '5', 'Dana', 'ini alamat dana', '02121212129', 'da@na.com', 'www.dana.com', '_bjmYta5_400x400.jpg', 'Publish', '2021-05-01 04:52:08', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_file`
--

CREATE TABLE `tb_file` (
  `id_file` int(11) NOT NULL,
  `nama_file` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori_berita`
--

CREATE TABLE `tb_kategori_berita` (
  `id_kategori` int(11) NOT NULL,
  `slug-kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori_berita`
--

INSERT INTO `tb_kategori_berita` (`id_kategori`, `slug-kategori`, `nama_kategori`, `date_created`) VALUES
(1, 'teknologi', 'Teknologi', '2021-04-20 05:12:59'),
(2, 'kegiatan-perusahaan', 'Kegiatan perusahaan', '2021-05-02 03:20:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori_client`
--

CREATE TABLE `tb_kategori_client` (
  `id_kategori` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori_client`
--

INSERT INTO `tb_kategori_client` (`id_kategori`, `slug_kategori`, `nama_kategori`, `date_created`) VALUES
(1, 'perushaan-negara', 'Perushaan Negara', '2021-04-27 05:49:08'),
(2, 'perusahaan-ekstraktif', 'Perusahaan Ekstraktif', '2021-04-29 04:24:13'),
(3, 'perusahaan-agraris', 'Perusahaan Agraris', '2021-04-29 04:24:26'),
(4, 'perusahaan-industri', 'Perusahaan Industri', '2021-04-29 04:24:34'),
(5, 'perusahaan-perdagangan', 'Perusahaan Perdagangan', '2021-04-29 04:24:42'),
(6, 'perusahaan-jasa', 'Perusahaan Jasa', '2021-04-29 04:24:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori_portfolio`
--

CREATE TABLE `tb_kategori_portfolio` (
  `id_kategori` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori_portfolio`
--

INSERT INTO `tb_kategori_portfolio` (`id_kategori`, `slug_kategori`, `nama_kategori`, `date_created`) VALUES
(1, 'web-developer', 'Web Developer', '2021-04-30 04:52:30'),
(3, 'mobile-developer', 'Mobile Developer', '2021-04-30 04:51:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori_staff`
--

CREATE TABLE `tb_kategori_staff` (
  `id_kategori` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori_staff`
--

INSERT INTO `tb_kategori_staff` (`id_kategori`, `slug_kategori`, `nama_kategori`, `date_created`) VALUES
(2, 'admin', 'Admin', '2021-04-26 05:12:35'),
(6, 'software-developer', 'Software Developer', '2021-04-29 04:25:23'),
(7, 'database-administrator', 'Database Administrator', '2021-04-29 04:25:33'),
(8, 'hardware-engineer', 'Hardware Engineer', '2021-04-29 04:25:42'),
(9, 'system-analyst', 'System Analyst', '2021-04-29 04:25:50'),
(10, 'network-architect', 'Network Architect', '2021-04-29 04:25:57'),
(11, 'web-developer', 'Web Developer', '2021-04-29 04:26:04'),
(12, 'information-security-analyst', 'Information Security Analyst', '2021-04-29 04:26:15'),
(13, 'it-support', 'IT Support', '2021-04-29 04:26:25'),
(14, 'system-manager', 'System Manager', '2021-04-29 04:26:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_layanan`
--

CREATE TABLE `tb_layanan` (
  `id_layanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_layanan` varchar(255) NOT NULL,
  `judul_layanan` varchar(255) NOT NULL,
  `isi_layanan` text NOT NULL,
  `gambar_layanan` varchar(255) NOT NULL,
  `status_layanan` varchar(255) NOT NULL,
  `date_cretated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_layanan`
--

INSERT INTO `tb_layanan` (`id_layanan`, `id_user`, `slug_layanan`, `judul_layanan`, `isi_layanan`, `gambar_layanan`, `status_layanan`, `date_cretated`, `last_modified`) VALUES
(2, 8, 'product-management', ' Product Management', '<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.</div>\r\n</div>', 'marketing1.png', 'Publish', '2021-05-01 05:56:37', '2021-05-01 00:00:00'),
(3, 8, 'web-development', ' Web Development', '<p>Isi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi La<strong>yananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIsi LayananIs</strong>i LayananIsi LayananIsi Layanan</p>', 'web-development.png', 'Publish', '2021-05-01 05:56:51', '2021-05-01 00:00:00'),
(4, 8, 'web-design', 'Web Design', '<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Repellendus,&nbsp;pariatur&nbsp;nam&nbsp;animi&nbsp;dolor&nbsp;id&nbsp;accusantium&nbsp;quis&nbsp;quaerat&nbsp;quo&nbsp;neque&nbsp;mollitia&nbsp;quas&nbsp;voluptate&nbsp;perspiciatis&nbsp;repellat&nbsp;eaque&nbsp;est&nbsp;blanditiis&nbsp;odit&nbsp;optio&nbsp;quae,&nbsp;nemo&nbsp;eius&nbsp;tempore&nbsp;ea&nbsp;molestias&nbsp;eum&nbsp;incidunt.&nbsp;Iusto,&nbsp;voluptates&nbsp;earum?&nbsp;Quasi&nbsp;tempore,&nbsp;consequuntur&nbsp;porro&nbsp;aliquam&nbsp;unde&nbsp;architecto&nbsp;libero&nbsp;culpa&nbsp;maiores&nbsp;velit&nbsp;repellat.&nbsp;Magnam&nbsp;perferendis&nbsp;earum&nbsp;aliquid&nbsp;accusamus&nbsp;adipisci&nbsp;numquam&nbsp;ratione&nbsp;a&nbsp;reiciendis&nbsp;officia,&nbsp;ipsum&nbsp;similique&nbsp;soluta&nbsp;nemo&nbsp;facilis&nbsp;harum&nbsp;laudantium&nbsp;molestias.&nbsp;In&nbsp;rerum&nbsp;quaerat&nbsp;dolores&nbsp;veritatis&nbsp;consectetur&nbsp;velit&nbsp;unde&nbsp;repudiandae,&nbsp;quos&nbsp;sint&nbsp;praesentium,&nbsp;quia&nbsp;nulla&nbsp;libero,&nbsp;perspiciatis&nbsp;odit.&nbsp;Repudiandae&nbsp;doloribus&nbsp;animi&nbsp;rem&nbsp;repellendus&nbsp;dolor&nbsp;sapiente,&nbsp;possimus&nbsp;fuga&nbsp;impedit&nbsp;voluptatum,&nbsp;culpa&nbsp;architecto&nbsp;amet&nbsp;nemo,&nbsp;et&nbsp;unde&nbsp;recusandae&nbsp;nam&nbsp;beatae&nbsp;veritatis&nbsp;accusantium&nbsp;ratione&nbsp;tempore&nbsp;ad&nbsp;voluptatem&nbsp;harum&nbsp;ipsa!&nbsp;Deleniti&nbsp;possimus&nbsp;aspernatur&nbsp;eligendi&nbsp;fugiat&nbsp;animi&nbsp;ullam&nbsp;eum&nbsp;aliquam,&nbsp;doloremque&nbsp;ad&nbsp;cum&nbsp;at&nbsp;consequuntur&nbsp;cumque&nbsp;illum&nbsp;fugit&nbsp;est&nbsp;harum&nbsp;nostrum&nbsp;inventore&nbsp;tempore&nbsp;voluptatem&nbsp;modi&nbsp;suscipit&nbsp;quas&nbsp;repudiandae?&nbsp;Id&nbsp;pariatur&nbsp;sint&nbsp;veniam&nbsp;cupiditate&nbsp;vero&nbsp;eveniet&nbsp;quos&nbsp;assumenda&nbsp;autem&nbsp;quia&nbsp;ex&nbsp;doloribus,&nbsp;perspiciatis&nbsp;ipsam&nbsp;labore&nbsp;minus&nbsp;illo&nbsp;inventore&nbsp;dolores.&nbsp;Laborum&nbsp;sed&nbsp;tenetur&nbsp;provident&nbsp;vero&nbsp;molestiae!&nbsp;Atque&nbsp;odit&nbsp;est&nbsp;dolor.&nbsp;Molestias&nbsp;praesentium&nbsp;laboriosam&nbsp;aliquid&nbsp;officia&nbsp;repellendus&nbsp;nisi&nbsp;dolores&nbsp;soluta&nbsp;adipisci&nbsp;repellat&nbsp;omnis.&nbsp;Quam,&nbsp;placeat&nbsp;eos&nbsp;tempora,&nbsp;laboriosam&nbsp;quasi,&nbsp;doloremque&nbsp;voluptates&nbsp;ipsam&nbsp;illo&nbsp;rerum&nbsp;ex&nbsp;corporis&nbsp;iusto&nbsp;ratione&nbsp;ullam&nbsp;sed&nbsp;consequatur?&nbsp;Maxime&nbsp;eaque&nbsp;corporis&nbsp;at&nbsp;harum,&nbsp;voluptate&nbsp;aut&nbsp;consequatur&nbsp;vero&nbsp;omnis&nbsp;iste&nbsp;dolorem&nbsp;voluptas&nbsp;est&nbsp;in&nbsp;autem&nbsp;numquam&nbsp;illo&nbsp;et&nbsp;possimus&nbsp;commodi&nbsp;sapiente&nbsp;ipsum&nbsp;enim&nbsp;quasi&nbsp;aliquid&nbsp;nesciunt.&nbsp;Reprehenderit&nbsp;perferendis&nbsp;cupiditate,&nbsp;sequi&nbsp;quos&nbsp;deleniti&nbsp;enim&nbsp;odit&nbsp;quidem&nbsp;error&nbsp;sed&nbsp;aliquam!&nbsp;Consectetur&nbsp;non&nbsp;quia&nbsp;tempora&nbsp;natus.&nbsp;Deleniti&nbsp;excepturi&nbsp;magni&nbsp;illum&nbsp;doloribus&nbsp;fugiat.&nbsp;Commodi&nbsp;fugiat&nbsp;quasi&nbsp;itaque&nbsp;molestiae&nbsp;vel&nbsp;rem&nbsp;accusamus,&nbsp;et&nbsp;recusandae&nbsp;officia&nbsp;quisquam&nbsp;ipsam&nbsp;reprehenderit?&nbsp;Deleniti&nbsp;explicabo&nbsp;perferendis&nbsp;labore&nbsp;voluptas&nbsp;nesciunt&nbsp;rerum&nbsp;architecto&nbsp;dolor&nbsp;nemo&nbsp;sed&nbsp;quia&nbsp;consequuntur,&nbsp;dolores,&nbsp;repellat&nbsp;illum&nbsp;adipisci!&nbsp;At&nbsp;maxime&nbsp;exercitationem&nbsp;ipsum&nbsp;quam&nbsp;eum&nbsp;illum,&nbsp;soluta&nbsp;rerum&nbsp;quasi&nbsp;nostrum&nbsp;fugiat&nbsp;cumque&nbsp;eligendi&nbsp;laboriosam&nbsp;cum&nbsp;deserunt&nbsp;quae&nbsp;aliquam&nbsp;corrupti&nbsp;fugit!&nbsp;Similique&nbsp;a&nbsp;vero&nbsp;suscipit&nbsp;dicta&nbsp;ad&nbsp;rem&nbsp;quam&nbsp;laudantium&nbsp;obcaecati,&nbsp;quis&nbsp;eum&nbsp;ipsum&nbsp;beatae&nbsp;repellat&nbsp;debitis&nbsp;doloribus&nbsp;ipsa&nbsp;enim&nbsp;id&nbsp;saepe,&nbsp;asperiores&nbsp;eaque,&nbsp;nihil&nbsp;iusto&nbsp;velit&nbsp;mollitia&nbsp;veritatis.&nbsp;Tenetur&nbsp;nostrum,&nbsp;accusamus&nbsp;veritatis,&nbsp;temporibus&nbsp;ex,&nbsp;impedit&nbsp;explicabo&nbsp;tempora&nbsp;fugit&nbsp;suscipit&nbsp;enim&nbsp;error&nbsp;cupiditate.&nbsp;Unde&nbsp;iusto&nbsp;molestias&nbsp;officiis&nbsp;maxime&nbsp;quis&nbsp;esse&nbsp;natus,&nbsp;dolore&nbsp;animi&nbsp;ipsam&nbsp;veniam&nbsp;laudantium&nbsp;iure&nbsp;eius&nbsp;alias&nbsp;expedita&nbsp;nobis&nbsp;dignissimos&nbsp;magni&nbsp;voluptatum&nbsp;recusandae&nbsp;debitis&nbsp;consequuntur&nbsp;ab&nbsp;perferendis&nbsp;tempore&nbsp;eaque&nbsp;dolorem!&nbsp;Esse&nbsp;excepturi&nbsp;reiciendis&nbsp;hic&nbsp;odio&nbsp;totam&nbsp;vero&nbsp;consequuntur&nbsp;adipisci&nbsp;eveniet&nbsp;fugit&nbsp;porro&nbsp;soluta&nbsp;beatae&nbsp;magnam&nbsp;eligendi&nbsp;molestias,&nbsp;nihil&nbsp;sapiente&nbsp;ipsam&nbsp;eos&nbsp;consectetur&nbsp;a&nbsp;explicabo!&nbsp;Eaque,&nbsp;eum?&nbsp;Quod&nbsp;omnis&nbsp;animi&nbsp;consequatur&nbsp;non&nbsp;quos&nbsp;sequi&nbsp;aspernatur&nbsp;sit&nbsp;sint&nbsp;enim&nbsp;qui&nbsp;maxime&nbsp;magnam,&nbsp;fuga&nbsp;provident&nbsp;sapiente&nbsp;vitae,&nbsp;excepturi&nbsp;quae&nbsp;quam&nbsp;quo&nbsp;veritatis&nbsp;culpa&nbsp;libero&nbsp;voluptates.&nbsp;Cumque&nbsp;tempora&nbsp;non&nbsp;unde&nbsp;est&nbsp;deserunt&nbsp;labore&nbsp;aperiam&nbsp;veritatis&nbsp;odio&nbsp;nam&nbsp;expedita&nbsp;in&nbsp;corporis&nbsp;quo,&nbsp;nemo&nbsp;dolorem&nbsp;reiciendis!&nbsp;Dolores&nbsp;nisi&nbsp;nobis&nbsp;dignissimos&nbsp;perspiciatis&nbsp;distinctio&nbsp;quis&nbsp;voluptate&nbsp;inventore&nbsp;commodi&nbsp;cumque&nbsp;modi,&nbsp;adipisci&nbsp;pariatur&nbsp;itaque,&nbsp;placeat&nbsp;aliquam&nbsp;id,&nbsp;iure&nbsp;nihil&nbsp;quidem.&nbsp;Et&nbsp;soluta&nbsp;nulla&nbsp;at,&nbsp;dolorum&nbsp;ullam&nbsp;adipisci&nbsp;assumenda&nbsp;non&nbsp;illum&nbsp;veniam.&nbsp;Voluptate&nbsp;dicta&nbsp;atque&nbsp;nulla&nbsp;in&nbsp;exercitationem,&nbsp;doloribus&nbsp;asperiores&nbsp;obcaecati&nbsp;odit&nbsp;praesentium&nbsp;autem,&nbsp;deserunt&nbsp;eius&nbsp;optio&nbsp;sit&nbsp;non,&nbsp;voluptatibus&nbsp;dolores&nbsp;beatae&nbsp;perspiciatis!&nbsp;Deserunt.</div>\r\n</div>', 'web-design.png', 'Publish', '2021-05-01 05:57:10', '2021-05-01 00:00:00'),
(5, 8, 'marketing', 'Marketing', '<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.\r\n<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.\r\n<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'bullhorn.png', 'Publish', '2021-05-01 05:57:22', '2021-05-01 00:00:00'),
(6, 8, 'graphic-design', 'Graphic Design', '<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.\r\n<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.\r\n<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.\r\n<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.\r\n<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.\r\n<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.\r\n<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Amet&nbsp;eveniet&nbsp;sint&nbsp;quia&nbsp;vero&nbsp;molestias&nbsp;eligendi,&nbsp;repellat&nbsp;aspernatur,&nbsp;sit&nbsp;quos&nbsp;natus&nbsp;maxime&nbsp;suscipit&nbsp;culpa&nbsp;rerum&nbsp;beatae&nbsp;rem&nbsp;ipsum&nbsp;libero,&nbsp;magni&nbsp;similique.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'ux.png', 'Publish', '2021-05-01 05:55:36', '2021-05-01 00:00:00'),
(7, 8, 'app-development', ' App Development', '<p>Isi Layanan&nbsp;</p>\r\n<div>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur,&nbsp;adipisicing&nbsp;elit.&nbsp;Quidem&nbsp;incidunt&nbsp;reprehenderit&nbsp;cumque&nbsp;vel,&nbsp;non&nbsp;officia&nbsp;sed&nbsp;aut,&nbsp;harum&nbsp;eos&nbsp;nulla&nbsp;inventore&nbsp;debitis,&nbsp;repellendus&nbsp;excepturi&nbsp;animi&nbsp;rem&nbsp;recusandae&nbsp;maiores&nbsp;nobis.&nbsp;Alias.</div>\r\n</div>', 'video-game.png', 'Publish', '2021-05-01 05:51:13', '2021-05-01 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_portfolio`
--

CREATE TABLE `tb_portfolio` (
  `id_portfolio` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_layanan` varchar(255) NOT NULL,
  `id_client` int(11) NOT NULL,
  `judul_portfolio` varchar(255) NOT NULL,
  `slug_portfolio` varchar(255) NOT NULL,
  `gambar_portfolio` varchar(255) NOT NULL,
  `isi_portfolio` text NOT NULL,
  `website_portfolio` varchar(255) NOT NULL,
  `status_portfolio` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `testimoni` text NOT NULL,
  `last_modified` date NOT NULL,
  `date_project` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_portfolio`
--

INSERT INTO `tb_portfolio` (`id_portfolio`, `id_user`, `nama_layanan`, `id_client`, `judul_portfolio`, `slug_portfolio`, `gambar_portfolio`, `isi_portfolio`, `website_portfolio`, `status_portfolio`, `date_created`, `testimoni`, `last_modified`, `date_project`) VALUES
(2, 8, ' App Development', 6, 'Portfoilo Traveloka', 'portfoilo-traveloka', 'Traveloka_Primary_Logo.png', '<div>\r\n<div>Lorem,&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Reiciendis&nbsp;pariatur&nbsp;provident&nbsp;sed&nbsp;ratione&nbsp;quaerat&nbsp;dicta&nbsp;repudiandae&nbsp;architecto&nbsp;quos&nbsp;consequatur&nbsp;at?&nbsp;Possimus&nbsp;tenetur&nbsp;reprehenderit&nbsp;corrupti&nbsp;accusamus&nbsp;voluptas&nbsp;reiciendis&nbsp;officiis&nbsp;assumenda&nbsp;eveniet&nbsp;voluptatum&nbsp;ipsum&nbsp;laboriosam,&nbsp;alias,&nbsp;distinctio&nbsp;adipisci&nbsp;quod&nbsp;maiores&nbsp;neque&nbsp;minus&nbsp;perspiciatis?&nbsp;Incidunt&nbsp;illo&nbsp;expedita&nbsp;distinctio&nbsp;eligendi&nbsp;ab&nbsp;debitis&nbsp;error&nbsp;obcaecati&nbsp;exercitationem,&nbsp;cumque&nbsp;minus&nbsp;qui&nbsp;ipsum&nbsp;voluptatum&nbsp;ex&nbsp;odio&nbsp;asperiores&nbsp;similique.&nbsp;Porro&nbsp;sapiente&nbsp;aliquid&nbsp;ad&nbsp;nostrum&nbsp;nobis&nbsp;sequi&nbsp;nisi&nbsp;rem&nbsp;tempore&nbsp;eos&nbsp;temporibus&nbsp;inventore&nbsp;impedit&nbsp;sint&nbsp;earum&nbsp;delectus&nbsp;rerum,&nbsp;labore&nbsp;eveniet&nbsp;maiores&nbsp;quibusdam&nbsp;enim&nbsp;sunt,&nbsp;atque&nbsp;accusamus!&nbsp;Impedit&nbsp;quo&nbsp;cupiditate&nbsp;vero&nbsp;molestiae&nbsp;blanditiis,&nbsp;dicta&nbsp;ipsa&nbsp;alias&nbsp;aliquam&nbsp;laboriosam&nbsp;voluptatem&nbsp;nobis&nbsp;at&nbsp;velit&nbsp;consequuntur,&nbsp;autem&nbsp;molestias&nbsp;vel&nbsp;dignissimos&nbsp;sapiente&nbsp;eligendi&nbsp;saepe&nbsp;nihil,&nbsp;dolores&nbsp;provident!&nbsp;Autem,&nbsp;ex&nbsp;delectus.&nbsp;Ex&nbsp;eaque&nbsp;repellat&nbsp;numquam&nbsp;delectus&nbsp;at&nbsp;vero&nbsp;mollitia&nbsp;quibusdam&nbsp;voluptatibus!&nbsp;Modi&nbsp;veritatis&nbsp;impedit&nbsp;iure&nbsp;molestias&nbsp;natus&nbsp;libero&nbsp;repellat,&nbsp;dignissimos&nbsp;dolor&nbsp;eum&nbsp;voluptatum?&nbsp;Exercitationem&nbsp;quia&nbsp;illum,&nbsp;incidunt&nbsp;quis&nbsp;error&nbsp;dicta&nbsp;reprehenderit&nbsp;iusto&nbsp;sapiente&nbsp;praesentium&nbsp;mollitia&nbsp;nam&nbsp;et&nbsp;alias&nbsp;dignissimos&nbsp;nesciunt&nbsp;labore&nbsp;natus&nbsp;aliquid&nbsp;blanditiis&nbsp;nemo&nbsp;ipsum.&nbsp;Laborum&nbsp;minus&nbsp;tenetur&nbsp;sapiente&nbsp;facilis&nbsp;facere&nbsp;corrupti&nbsp;a&nbsp;excepturi,&nbsp;mollitia&nbsp;ratione&nbsp;architecto&nbsp;est&nbsp;blanditiis&nbsp;dolorem,&nbsp;deserunt&nbsp;natus,&nbsp;debitis&nbsp;officia&nbsp;qui&nbsp;assumenda&nbsp;inventore&nbsp;sint&nbsp;autem&nbsp;tempore.&nbsp;Ipsum&nbsp;accusantium&nbsp;eligendi&nbsp;sit&nbsp;quae&nbsp;placeat&nbsp;recusandae,&nbsp;eveniet&nbsp;ut&nbsp;qui&nbsp;temporibus&nbsp;optio&nbsp;ratione&nbsp;pariatur&nbsp;distinctio&nbsp;facilis&nbsp;illum&nbsp;quas&nbsp;rem&nbsp;similique&nbsp;iure&nbsp;sapiente.&nbsp;Provident&nbsp;vero&nbsp;in&nbsp;voluptates&nbsp;ullam&nbsp;quasi&nbsp;adipisci&nbsp;dolores!&nbsp;Quos&nbsp;qui&nbsp;corrupti&nbsp;harum&nbsp;ipsum&nbsp;ea&nbsp;animi&nbsp;voluptatibus&nbsp;tenetur&nbsp;commodi&nbsp;saepe,&nbsp;sit&nbsp;quasi&nbsp;excepturi&nbsp;voluptate&nbsp;maxime&nbsp;quo&nbsp;libero&nbsp;vitae&nbsp;error&nbsp;quis&nbsp;id&nbsp;magni&nbsp;consectetur&nbsp;tempore&nbsp;ipsam.&nbsp;Nihil&nbsp;illum&nbsp;repudiandae&nbsp;voluptates&nbsp;temporibus&nbsp;ab&nbsp;praesentium,&nbsp;quasi&nbsp;ducimus&nbsp;iste&nbsp;sunt&nbsp;corporis.&nbsp;Neque,&nbsp;quos.&nbsp;Dolor&nbsp;voluptatum,&nbsp;culpa&nbsp;doloremque&nbsp;dolorem&nbsp;quas&nbsp;rem&nbsp;voluptates&nbsp;et&nbsp;nulla&nbsp;corporis&nbsp;qui&nbsp;odio&nbsp;eius&nbsp;ut&nbsp;recusandae,&nbsp;alias,&nbsp;provident&nbsp;saepe&nbsp;quis&nbsp;beatae.&nbsp;Voluptatum&nbsp;provident,&nbsp;itaque&nbsp;alias&nbsp;ad&nbsp;ea,&nbsp;asperiores&nbsp;ex&nbsp;amet&nbsp;mollitia&nbsp;doloribus&nbsp;delectus&nbsp;dolorem&nbsp;ipsum,&nbsp;vitae&nbsp;omnis&nbsp;eaque&nbsp;reprehenderit&nbsp;harum&nbsp;distinctio&nbsp;earum&nbsp;expedita&nbsp;assumenda?&nbsp;Debitis!&nbsp; &nbsp; &nbsp; &nbsp; fajar&nbsp;</div>\r\n</div>', 'www.traveloka.com', 'Publish', '2021-05-02 03:56:38', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sapiente laboriosam maiores qui voluptatum sequi debitis distinctio similique animi magnam. Sed assumenda nisi mollitia nemo optio provident doloremque dicta nesciunt deserunt. Adipisci perferendis similique inventore cum laudantium sequi, quaerat consequuntur minima eligendi provident pariatur modi quod sapiente dolores fugit facere distinctio quam magni amet animi eius ut veniam. Odit dignissimos doloremque dolor praesentium libero ad molestiae officiis architecto eum quam aspernatur fugit velit, vel ratione mollitia ipsam nulla excepturi quod animi sint nam aperiam in. Quas nemo asperiores doloremque ratione sunt hic obcaecati ut totam pariatur? Molestias voluptas ipsam alias error.\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Sapiente laboriosam maiores qui voluptatum sequi debitis distinctio similique animi magnam. Sed assumenda nisi mollitia nemo optio provident doloremque dicta nesciunt deserunt. Adipisci perferendis similique inventore cum laudantium sequi, quaerat consequuntur minima eligendi provident pariatur modi quod sapiente dolores fugit facere distinctio quam magni amet animi eius ut veniam. Odit dignissimos doloremque dolor praesentium libero ad molestiae officiis architecto eum quam aspernatur fugit velit, vel ratione mollitia ipsam nulla excepturi quod animi sint nam aperiam in. Quas nemo asperiores doloremque ratione sunt hic obcaecati ut totam pariatur? Molestias voluptas ipsam alias error.\r\n', '2021-05-02', '2021-03-21'),
(3, 8, ' Web Development', 4, 'Portfolio Gojek', 'portfolio-gojek', 'hitobajlkseeivcjy22b.png', '<p>Isi portfolio</p>', 'www.gojek.com', 'Publish', '2021-05-02 03:56:33', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sapiente laboriosam maiores qui voluptatum sequi debitis distinctio similique animi magnam. Sed assumenda nisi mollitia nemo optio provident doloremque dicta nesciunt deserunt. Adipisci perferendis similique inventore cum laudantium sequi, quaerat consequuntur minima eligendi provident pariatur modi quod sapiente dolores fugit facere distinctio quam magni amet animi eius ut veniam. Odit dignissimos doloremque dolor praesentium libero ad molestiae officiis architecto eum quam aspernatur fugit velit, vel ratione mollitia ipsam nulla excepturi quod animi sint nam aperiam in. Quas nemo asperiores doloremque ratione sunt hic obcaecati ut totam pariatur? Molestias voluptas ipsam alias error.\r\n', '2021-05-02', '2021-03-30'),
(4, 8, ' Web Development', 2, 'Portfolio OVO', 'portfolio-ovo', '1024px-Logo_ovo_purple_svg.png', '<div>\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Incidunt&nbsp;deserunt&nbsp;assumenda&nbsp;autem&nbsp;enim&nbsp;quibusdam,&nbsp;quidem&nbsp;fugit&nbsp;aut&nbsp;provident&nbsp;quos&nbsp;recusandae.&nbsp;Veniam&nbsp;corrupti&nbsp;quis,&nbsp;deleniti&nbsp;eum&nbsp;hic&nbsp;beatae&nbsp;eos&nbsp;perferendis&nbsp;quod&nbsp;aspernatur?&nbsp;Adipisci&nbsp;exercitationem&nbsp;expedita&nbsp;quibusdam&nbsp;quidem&nbsp;dolorem,&nbsp;doloribus,&nbsp;minima&nbsp;hic&nbsp;voluptatibus,&nbsp;veniam&nbsp;amet&nbsp;obcaecati&nbsp;voluptatem.&nbsp;Quidem&nbsp;delectus,&nbsp;provident&nbsp;dolore&nbsp;vel&nbsp;nemo&nbsp;quae&nbsp;laborum&nbsp;saepe&nbsp;cumque&nbsp;atque&nbsp;magni&nbsp;laboriosam&nbsp;velit&nbsp;sed&nbsp;expedita&nbsp;esse&nbsp;porro&nbsp;dignissimos&nbsp;doloribus&nbsp;fugit&nbsp;ea&nbsp;dolores&nbsp;nam&nbsp;odit&nbsp;mollitia,&nbsp;rem&nbsp;culpa&nbsp;temporibus!&nbsp;Facilis&nbsp;eveniet&nbsp;amet&nbsp;nihil&nbsp;quasi&nbsp;temporibus&nbsp;consequatur&nbsp;hic,&nbsp;impedit&nbsp;suscipit.&nbsp;Consectetur&nbsp;placeat&nbsp;excepturi&nbsp;maxime&nbsp;perferendis&nbsp;quia&nbsp;culpa&nbsp;dolorum,&nbsp;mollitia&nbsp;illo&nbsp;ex&nbsp;dicta&nbsp;officia&nbsp;quis&nbsp;quod&nbsp;temporibus&nbsp;dolores&nbsp;vero&nbsp;vel&nbsp;corrupti&nbsp;voluptatum&nbsp;suscipit.&nbsp;Accusantium,&nbsp;ullam&nbsp;veritatis?&nbsp;Veritatis&nbsp;culpa&nbsp;dicta,&nbsp;eius&nbsp;cum&nbsp;vel&nbsp;illum&nbsp;ab&nbsp;sed&nbsp;in&nbsp;laudantium&nbsp;dolorem&nbsp;similique&nbsp;error,&nbsp;deleniti&nbsp;at&nbsp;neque&nbsp;nisi&nbsp;dolorum&nbsp;aut&nbsp;libero&nbsp;nam&nbsp;saepe&nbsp;qui!&nbsp;Maxime&nbsp;sunt&nbsp;odit&nbsp;fuga&nbsp;modi&nbsp;necessitatibus?&nbsp;Similique&nbsp;sit&nbsp;atque&nbsp;consequatur&nbsp;explicabo&nbsp;rem&nbsp;repellendus&nbsp;earum&nbsp;quaerat&nbsp;animi&nbsp;ut&nbsp;veniam&nbsp;nobis&nbsp;blanditiis,&nbsp;at&nbsp;eligendi,&nbsp;veritatis&nbsp;esse&nbsp;illum&nbsp;et&nbsp;nemo&nbsp;repellat&nbsp;reprehenderit&nbsp;iusto&nbsp;culpa&nbsp;cupiditate?&nbsp;Reprehenderit,&nbsp;obcaecati&nbsp;possimus.&nbsp;Suscipit&nbsp;fugiat,&nbsp;atque&nbsp;vero&nbsp;rerum&nbsp;repellendus&nbsp;adipisci&nbsp;ipsam&nbsp;vitae&nbsp;odit&nbsp;facere&nbsp;harum&nbsp;et&nbsp;culpa&nbsp;nesciunt&nbsp;id.&nbsp;Explicabo&nbsp;itaque&nbsp;doloribus&nbsp;assumenda&nbsp;tenetur&nbsp;dolorem&nbsp;quo,&nbsp;voluptatibus&nbsp;sunt,&nbsp;molestiae&nbsp;quisquam&nbsp;officia&nbsp;consectetur&nbsp;quam,&nbsp;eveniet&nbsp;laborum&nbsp;fugit&nbsp;incidunt&nbsp;officiis&nbsp;eaque&nbsp;quas&nbsp;aspernatur!&nbsp;Ullam&nbsp;laborum&nbsp;dolor&nbsp;maxime,&nbsp;quae&nbsp;culpa&nbsp;cumque&nbsp;dolores&nbsp;veniam,&nbsp;expedita&nbsp;vel&nbsp;accusamus&nbsp;nulla&nbsp;sint?&nbsp;Architecto&nbsp;dignissimos&nbsp;sunt&nbsp;sequi&nbsp;saepe,&nbsp;libero&nbsp;laborum&nbsp;nisi&nbsp;a&nbsp;enim&nbsp;quasi&nbsp;doloremque&nbsp;ex&nbsp;cum&nbsp;aut&nbsp;illum&nbsp;repellat&nbsp;deleniti.&nbsp;Necessitatibus&nbsp;molestias&nbsp;odio&nbsp;debitis&nbsp;ipsa&nbsp;neque&nbsp;nam&nbsp;animi&nbsp;dolores&nbsp;adipisci,&nbsp;sapiente&nbsp;magni&nbsp;laborum&nbsp;earum&nbsp;suscipit&nbsp;quae&nbsp;quasi&nbsp;dicta&nbsp;eaque&nbsp;accusamus!&nbsp;Culpa&nbsp;impedit&nbsp;quaerat&nbsp;molestias,&nbsp;tenetur&nbsp;quisquam&nbsp;iusto.&nbsp;Soluta&nbsp;aliquam&nbsp;commodi&nbsp;quidem&nbsp;officiis&nbsp;aliquid&nbsp;odio&nbsp;impedit&nbsp;perferendis&nbsp;fugiat&nbsp;maiores,&nbsp;eligendi,&nbsp;asperiores&nbsp;nam&nbsp;omnis&nbsp;at&nbsp;iure,&nbsp;eius&nbsp;non&nbsp;facilis&nbsp;voluptates&nbsp;perspiciatis&nbsp;cupiditate&nbsp;error&nbsp;consectetur&nbsp;unde&nbsp;molestias.&nbsp;Nulla&nbsp;voluptatum&nbsp;labore&nbsp;nobis&nbsp;consequatur&nbsp;laboriosam,&nbsp;quisquam&nbsp;veritatis&nbsp;facere&nbsp;dolorem&nbsp;dolor&nbsp;illo&nbsp;cupiditate&nbsp;maxime&nbsp;modi&nbsp;consequuntur&nbsp;soluta.&nbsp;Provident,&nbsp;ipsa&nbsp;consequuntur.&nbsp;Nihil&nbsp;natus&nbsp;perspiciatis&nbsp;officia&nbsp;est&nbsp;rerum,&nbsp;quibusdam&nbsp;voluptates.&nbsp;Ab&nbsp;amet&nbsp;culpa&nbsp;pariatur,&nbsp;rerum&nbsp;harum&nbsp;expedita&nbsp;aperiam&nbsp;beatae&nbsp;est&nbsp;repellendus&nbsp;maxime,&nbsp;suscipit&nbsp;atque&nbsp;neque&nbsp;vel&nbsp;sit&nbsp;quidem&nbsp;minima&nbsp;perspiciatis&nbsp;unde&nbsp;libero,&nbsp;ullam&nbsp;inventore&nbsp;nostrum&nbsp;iste&nbsp;magni&nbsp;deleniti?&nbsp;Mollitia,&nbsp;architecto&nbsp;necessitatibus?&nbsp;Deserunt,&nbsp;rem&nbsp;est?&nbsp;Dolores,&nbsp;quas.&nbsp;Eveniet&nbsp;a&nbsp;obcaecati&nbsp;ad&nbsp;optio&nbsp;eius,&nbsp;vero&nbsp;necessitatibus&nbsp;eum&nbsp;mollitia!&nbsp;Aperiam&nbsp;culpa&nbsp;perspiciatis&nbsp;fuga&nbsp;sint&nbsp;ipsa&nbsp;quos&nbsp;dolorum&nbsp;hic&nbsp;nobis&nbsp;exercitationem,&nbsp;corrupti,&nbsp;corporis&nbsp;sequi&nbsp;voluptate&nbsp;aspernatur.&nbsp;Debitis&nbsp;facere&nbsp;distinctio&nbsp;aliquid&nbsp;beatae&nbsp;at&nbsp;ipsa,&nbsp;quia&nbsp;aperiam&nbsp;officia&nbsp;reprehenderit&nbsp;unde&nbsp;harum,&nbsp;magnam,&nbsp;error&nbsp;rerum&nbsp;adipisci?&nbsp;Minima&nbsp;velit&nbsp;illo&nbsp;nisi&nbsp;adipisci&nbsp;iure&nbsp;similique&nbsp;dicta,&nbsp;dolores&nbsp;autem&nbsp;repellat&nbsp;qui.&nbsp;Qui,&nbsp;reiciendis.&nbsp;Voluptas&nbsp;quia&nbsp;molestias&nbsp;ea&nbsp;nisi&nbsp;hic&nbsp;tempora&nbsp;eius&nbsp;tenetur&nbsp;iste&nbsp;quisquam&nbsp;nostrum&nbsp;non&nbsp;id&nbsp;ullam,&nbsp;corporis&nbsp;unde&nbsp;nobis&nbsp;mollitia,&nbsp;ipsum,&nbsp;numquam&nbsp;delectus&nbsp;obcaecati&nbsp;laborum&nbsp;voluptatum.&nbsp;Unde&nbsp;iste&nbsp;sed&nbsp;nihil&nbsp;quisquam&nbsp;consequatur&nbsp;sequi&nbsp;voluptates&nbsp;quae&nbsp;repellat&nbsp;earum&nbsp;quam&nbsp;placeat&nbsp;expedita&nbsp;sit,&nbsp;illo&nbsp;eos&nbsp;veniam&nbsp;similique&nbsp;alias&nbsp;tempore&nbsp;atque&nbsp;modi&nbsp;repudiandae&nbsp;maxime&nbsp;ratione&nbsp;sunt&nbsp;est.&nbsp;Laboriosam&nbsp;doloremque&nbsp;voluptas&nbsp;blanditiis&nbsp;aliquam&nbsp;consequuntur&nbsp;saepe&nbsp;minus&nbsp;voluptate!&nbsp;Debitis&nbsp;doloremque,&nbsp;architecto&nbsp;explicabo&nbsp;dicta&nbsp;unde&nbsp;quas&nbsp;numquam&nbsp;molestiae&nbsp;sed&nbsp;aut&nbsp;eaque&nbsp;voluptas&nbsp;consequatur&nbsp;atque&nbsp;porro&nbsp;quos&nbsp;eligendi&nbsp;dolor&nbsp;harum.&nbsp;Cumque&nbsp;esse&nbsp;eligendi&nbsp;voluptatem&nbsp;reprehenderit.</div>\r\n</div>', 'www.ovo.com', 'Publish', '2021-05-02 03:56:27', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sapiente laboriosam maiores qui voluptatum sequi debitis distinctio similique animi magnam. Sed assumenda nisi mollitia nemo optio provident doloremque dicta nesciunt deserunt. Adipisci perferendis similique inventore cum laudantium sequi, quaerat consequuntur minima eligendi provident pariatur modi quod sapiente dolores fugit facere distinctio quam magni amet animi eius ut veniam. Odit dignissimos doloremque dolor praesentium libero ad molestiae officiis architecto eum quam aspernatur fugit velit, vel ratione mollitia ipsam nulla excepturi quod animi sint nam aperiam in. Quas nemo asperiores doloremque ratione sunt hic obcaecati ut totam pariatur? Molestias voluptas ipsam alias error.\r\n', '2021-05-02', '2021-04-25'),
(5, 8, 'Web Design', 5, 'Portfolio Link Aja', 'portfolio-link-aja', '1200px-LinkAja_svg.png', '<p>Isi portfolio</p>', 'www.linkaja.com', 'Publish', '2021-05-02 04:14:01', 'ini testimoni link ajah', '2021-05-02', '2021-05-20'),
(6, 8, ' App Development', 8, 'Portfolio Dana', 'portfolio-dana', '_bjmYta5_400x400.jpg', '<p>Isi portfolio</p>', 'www.dana.com', 'Publish', '2021-05-02 03:56:13', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sapiente laboriosam maiores qui voluptatum sequi debitis distinctio similique animi magnam. Sed assumenda nisi mollitia nemo optio provident doloremque dicta nesciunt deserunt. Adipisci perferendis similique inventore cum laudantium sequi, quaerat consequuntur minima eligendi provident pariatur modi quod sapiente dolores fugit facere distinctio quam magni amet animi eius ut veniam. Odit dignissimos doloremque dolor praesentium libero ad molestiae officiis architecto eum quam aspernatur fugit velit, vel ratione mollitia ipsam nulla excepturi quod animi sint nam aperiam in. Quas nemo asperiores doloremque ratione sunt hic obcaecati ut totam pariatur? Molestias voluptas ipsam alias error.\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Sapiente laboriosam maiores qui voluptatum sequi debitis distinctio similique animi magnam. Sed assumenda nisi mollitia nemo optio provident doloremque dicta nesciunt deserunt. Adipisci perferendis similique inventore cum laudantium sequi, quaerat consequuntur minima eligendi provident pariatur modi quod sapiente dolores fugit facere distinctio quam magni amet animi eius ut veniam. Odit dignissimos doloremque dolor praesentium libero ad molestiae officiis architecto eum quam aspernatur fugit velit, vel ratione mollitia ipsam nulla excepturi quod animi sint nam aperiam in. Quas nemo asperiores doloremque ratione sunt hic obcaecati ut totam pariatur? Molestias voluptas ipsam alias error.\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Sapiente laboriosam maiores qui voluptatum sequi debitis distinctio similique animi magnam. Sed assumenda nisi mollitia nemo optio provident doloremque dicta nesciunt deserunt. Adipisci perferendis similique inventore cum laudantium sequi, quaerat consequuntur minima eligendi provident pariatur modi quod sapiente dolores fugit facere distinctio quam magni amet animi eius ut veniam. Odit dignissimos doloremque dolor praesentium libero ad molestiae officiis architecto eum quam aspernatur fugit velit, vel ratione mollitia ipsam nulla excepturi quod animi sint nam aperiam in. Quas nemo asperiores doloremque ratione sunt hic obcaecati ut totam pariatur? Molestias voluptas ipsam alias error.\r\n', '2021-05-02', '2021-04-02'),
(7, 8, 'Web Design', 7, 'Portfolio Tokopakedi', 'portfolio-tokopakedi', '1575050504675-logo-tokopedia.jpg', '<p>Isi portfolio</p>', 'www.tokopakedi.com', 'Publish', '2021-05-02 03:56:03', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sapiente laboriosam maiores qui voluptatum sequi debitis distinctio similique animi magnam. Sed assumenda nisi mollitia nemo optio provident doloremque dicta nesciunt deserunt. Adipisci perferendis similique inventore cum laudantium sequi, quaerat consequuntur minima eligendi provident pariatur modi quod sapiente dolores fugit facere distinctio quam magni amet animi eius ut veniam. Odit dignissimos doloremque dolor praesentium libero ad molestiae officiis architecto eum quam aspernatur fugit velit, vel ratione mollitia ipsam nulla excepturi quod animi sint nam aperiam in. Quas nemo asperiores doloremque ratione sunt hic obcaecati ut totam pariatur? Molestias voluptas ipsam alias error.\r\n', '2021-05-02', '2021-03-04'),
(8, 8, ' App Development', 3, 'Portfolio Grab', 'portfolio-grab', '1200px-Grab_Logo_svg1.png', '<p>Isi portfolio</p>', 'www.grab.com', 'Publish', '2021-05-02 03:55:37', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aperiam nesciunt, soluta nisi repudiandae id voluptate nobis a quam, mollitia, animi officiis dolorem sapiente iste! Esse, at unde! Sed ut, nam nemo est veniam, commodi aliquam quia architecto iste illum molestiae tempora iusto modi? Id architecto dolor tempora non excepturi beatae inventore amet. Consectetur quisquam nobis adipisci accusamus iusto earum quod commodi, accusantium voluptatibus exercitationem sequi, ea non cum praesentium voluptatem veritatis autem. Expedita quod velit repellendus corporis est sint nulla eum amet temporibus ab maxime, accusamus provident repellat veniam error, fugit consectetur ea. Numquam ipsa fugiat adipisci praesentium nisi in, possimus magnam voluptas provident dolor excepturi. Dolorum, qui soluta quod neque sunt rerum praesentium enim rem molestias ab totam illum. Quibusdam repudiandae iure blanditiis. Praesentium, perspiciatis, ratione ad porro enim a eveniet voluptatum recusandae at corporis ab iure totam, molestiae atque. Doloribus, adipisci! Ipsam, quibusdam est. Accusamus ducimus aliquid ipsa quia distinctio voluptas praesentium sed cum. Itaque numquam sit neque deserunt fugiat laudantium nam aspernatur porro, unde commodi ad tenetur tempore perspiciatis rerum temporibus molestias impedit aliquam aut ipsum, voluptatibus explicabo voluptates id consequuntur? Nisi dolore impedit eos perferendis. Ab ex magni tempora nemo atque doloribus eveniet itaque odit hic!                \r\n', '0000-00-00', '2021-03-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting`
--

CREATE TABLE `tb_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `sejarah` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_setting`
--

INSERT INTO `tb_setting` (`id_setting`, `nama_perusahaan`, `alamat`, `no_telepon`, `email`, `profile`, `visi`, `misi`, `sejarah`, `image`) VALUES
(1, 'Company Profile', 'DKI Jakarta, Indonesia', '021000000', 'example-email@mail.com', '<p style=\"text-align: center;\"><strong>Profile Perusahaan</strong></p>\r\n<div style=\"text-align: justify;\">Lorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantiumLorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantium?Lorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantiumLorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantium?</div>', '<p style=\"text-align: center;\"><strong>Visi Perusahaan</strong></p>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantiumLorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantium?</div>', '<p style=\"text-align: center;\"><strong><span class=\"example1\">Misi Perusahaan</span></strong></p>\r\n<p style=\"text-align: justify;\"><span class=\"example1\">Lorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantiumLorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantium?Lorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantiumLorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantium?</span></p>', '<p style=\"text-align: center;\"><strong>Sejarah Perusahaan</strong></p>\r\n<div>Lorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantiumLorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantium?Lorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantiumLorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Iusto&nbsp;doloribus&nbsp;non&nbsp;repellat&nbsp;magni&nbsp;inventore&nbsp;nulla&nbsp;ducimus&nbsp;sit&nbsp;veritatis&nbsp;incidunt&nbsp;voluptate&nbsp;consectetur&nbsp;suscipit&nbsp;earum,&nbsp;debitis&nbsp;expedita&nbsp;corporis&nbsp;mollitia&nbsp;maiores&nbsp;beatae&nbsp;accusantium?</div>', 'client-4.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id_staff` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_staff` varchar(255) NOT NULL,
  `email_staff` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `gambar_staff` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `publish` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_staff`
--

INSERT INTO `tb_staff` (`id_staff`, `id_kategori`, `nama_staff`, `email_staff`, `alamat`, `no_telepon`, `gambar_staff`, `gender`, `publish`, `date_created`, `last_modified`) VALUES
(2, 6, 'Jovani McDermott', 'hessel.wilhelmine@example.com', '8329 Lafayette Circles', '(347)202-4783x721', 'avatar-2.png', '', 'Draft', '2021-05-01 04:16:31', '2021-05-01'),
(3, 11, 'Miss Tamia Rempel I', 'fay.cathy@example.org', '123 Ziemann Turnpike', '(751)944-6534', 'avatar-31.png', '', 'Draft', '2021-05-01 04:16:53', '2021-05-01'),
(4, 0, 'Maurine Gaylord DVM', 'manuela.hilll@example.com', '8277 Jeanette Brook Apt. 317', '1-088-458-9250x330', 'avatar-4.png', '', 'Draft', '2021-05-01 04:17:09', '2021-05-01'),
(5, 0, 'Elliott Stroman', 'tessie68@example.com', '3083 Joaquin Points', '(293)540-6885x325', '', '', '', '1999-11-18 01:08:28', '2014-09-12'),
(6, 0, 'Domenic Kerluke', 'hodkiewicz.cassandre@example.org', '65868 Bernier Locks Suite 411', '759.018.2920x590', '', '', '', '2017-11-25 22:50:45', '1976-01-10'),
(7, 0, 'Dorothy Murray I', 'reva82@example.net', '66849 Bauch Streets Apt. 847', '(479)674-9969x30243', '', '', '', '1990-10-30 23:37:48', '1986-04-30'),
(8, 0, 'Prof. Juwan Prohaska', 'will.lon@example.com', '0637 General Inlet', '1-548-509-6066x38018', '', '', '', '2015-07-14 18:25:49', '2008-07-30'),
(9, 0, 'Breanne Bins II', 'hirthe.mariela@example.org', '5752 Wisozk Course Suite 437', '+56(0)9475460315', '', '', '', '1988-11-09 13:50:47', '1996-01-06'),
(10, 0, 'Ms. Cydney Barton', 'maximillia86@example.net', '07112 Klein Way Apt. 153', '(441)619-0799', '', '', '', '2003-07-26 09:02:16', '1978-05-07'),
(11, 0, 'Emil Beatty', 'velva48@example.net', '610 Simonis Loaf Suite 207', '297-813-3545x868', '', '', '', '2017-06-08 14:16:13', '2005-01-26'),
(12, 0, 'Mrs. Angelica Purdy III', 'anna22@example.org', '719 Ervin Flat Apt. 335', '062-746-4980x1252', '', '', '', '1987-01-15 22:31:56', '2012-03-26'),
(13, 0, 'Mrs. Lavina Bartell', 'towne.ronaldo@example.org', '3924 Larissa Pike', '759.226.6975x4349', '', '', '', '2012-08-14 13:24:45', '1983-05-15'),
(14, 0, 'Prof. Madeline Blick IV', 'tmcdermott@example.com', '2128 Deckow Mountains Suite 252', '1-980-788-4631x3036', '', '', '', '1972-02-10 01:19:37', '2004-03-15'),
(15, 0, 'Pearl Gutkowski', 'dboehm@example.net', '5801 Medhurst Squares Suite 151', '907-452-5752x401', '', '', '', '1992-01-27 06:25:09', '1992-05-01'),
(16, 0, 'Dr. Dean Reynolds DVM', 'cgibson@example.net', '36139 Stehr Meadows Suite 213', '07558439906', '', '', '', '1989-03-10 12:45:37', '2003-06-21'),
(17, 0, 'Edward Herman', 'jailyn29@example.org', '4332 Horacio Trail', '(195)667-7235x9047', '', '', '', '1990-03-28 05:09:01', '2007-01-31'),
(18, 0, 'Bette Denesik', 'arianna38@example.com', '46608 Stacy Turnpike Apt. 772', '416.860.0346', '', '', '', '1981-10-12 20:27:07', '1978-03-21'),
(19, 0, 'Evan Prosacco', 'vivianne52@example.net', '6505 Cynthia Roads Suite 182', '775-900-5461', '', '', '', '2011-04-17 21:04:08', '2007-06-01'),
(20, 0, 'Braulio Ritchie V', 'jocelyn.schmeler@example.org', '081 Lacey Island Apt. 141', '1-309-154-5889', '', '', '', '2010-05-11 02:01:14', '1985-05-21'),
(21, 0, 'Ms. Beulah Hermann', 'flavio.koepp@example.net', '617 Rocio Drive', '1-251-052-2112x80113', '', '', '', '2014-09-05 13:25:23', '2000-03-17'),
(22, 0, 'Jonas Jenkins', 'jaskolski.juanita@example.org', '63528 Arthur Meadows Suite 660', '(284)248-3349', '', '', '', '2004-07-22 21:56:19', '1999-04-05'),
(23, 0, 'Dayna Stehr', 'thora08@example.com', '554 Hosea Pines Apt. 128', '787-027-8485', '', '', '', '1992-04-16 01:16:53', '2003-10-27'),
(24, 0, 'Prof. Eloise Reinger', 'kali.gorczany@example.org', '562 Koch Common', '010-323-8284x36500', '', '', '', '1980-10-17 08:49:52', '1984-06-04'),
(25, 0, 'Dr. Leif Haley', 'octavia48@example.com', '656 Brisa Tunnel', '486-030-7321', '', '', '', '1976-01-16 11:43:03', '2009-07-30'),
(26, 0, 'Marc Heller IV', 'elvera15@example.com', '3673 Charlotte Way', '(755)079-4387x6001', '', '', '', '1977-03-30 17:24:45', '1981-01-25'),
(27, 0, 'Lisa Trantow', 'sofia.blanda@example.net', '256 Francisco Mountain Apt. 590', '07622069789', '', '', '', '2017-07-27 23:28:36', '2013-08-03'),
(28, 0, 'Delta Rempel', 'dickinson.jaqueline@example.org', '35112 Jany River Apt. 068', '393-357-3490x802', '', '', '', '2019-09-09 11:31:54', '1971-02-28'),
(29, 0, 'Fern Watsica', 'spencer.jayson@example.org', '68484 Gislason Fort', '1-258-088-1736x2254', '', '', '', '1982-05-01 22:36:35', '1975-07-09'),
(30, 0, 'Mr. Mose Gerlach II', 'kimberly.ritchie@example.net', '9361 Dino Lake Suite 794', '1-150-763-7873', '', '', '', '1983-05-02 05:19:47', '1989-05-23'),
(31, 0, 'Tito Kertzmann', 'kulas.anastasia@example.com', '0819 Robel Park Apt. 732', '1-243-870-1730', '', '', '', '1977-06-29 00:24:20', '2015-02-07'),
(32, 0, 'Xavier Kulas', 'flittle@example.org', '290 Sauer Mountain Suite 563', '849-925-7348x818', '', '', '', '1980-04-13 23:35:38', '1999-06-13'),
(33, 0, 'Harmony Zieme', 'kelvin.nolan@example.com', '61231 Feest Hill Apt. 424', '+26(9)6012190162', '', '', '', '1990-10-25 00:19:14', '1974-01-22'),
(34, 0, 'Prof. Kris Boehm V', 'bergnaum.luther@example.org', '200 Emerald Light Suite 566', '359-113-8040', '', '', '', '1970-03-01 10:47:00', '1971-11-04'),
(35, 0, 'Levi Walker', 'gennaro.marquardt@example.com', '8878 Giovanni Coves', '550.048.1104x6667', '', '', '', '2020-03-21 03:55:54', '2016-02-15'),
(36, 0, 'Prof. Savanah Gerhold', 'glennie.crist@example.org', '7021 Stoltenberg Bridge Apt. 107', '911-037-6915', '', '', '', '1977-03-05 12:14:37', '2007-07-15'),
(37, 0, 'Juana Sanford', 'rosenbaum.mike@example.com', '33362 Brakus Coves Apt. 726', '445-331-9876x7311', '', '', '', '1984-11-21 09:19:58', '1979-08-07'),
(38, 0, 'Ceasar Barrows', 'xhackett@example.com', '87976 Hand Island Apt. 017', '240-318-3076', '', '', '', '1970-06-27 04:07:58', '2020-05-30'),
(39, 0, 'Dr. Oda Gulgowski Jr.', 'tamia.stark@example.net', '4622 Runolfsdottir Streets', '1-597-585-8813x20112', '', '', '', '1972-10-05 05:16:48', '2010-10-16'),
(40, 0, 'Dessie Wyman', 'bergstrom.wilton@example.net', '427 Stan Divide', '329-750-3540x028', '', '', '', '2018-10-18 14:58:34', '2014-10-05'),
(41, 0, 'Prof. Enrico Prohaska III', 'willms.jailyn@example.org', '0112 Tiana Crossing Apt. 948', '1-423-645-5934x730', '', '', '', '1993-05-20 07:07:14', '2020-04-08'),
(42, 0, 'Miss Mozell Corkery IV', 'jorge.runolfsdottir@example.net', '72624 Langosh Mews', '(762)066-0201x143', '', '', '', '1980-07-13 10:06:39', '1985-07-07'),
(43, 0, 'Julia Stanton', 'samanta75@example.org', '22712 Considine Oval', '(509)251-1283', '', '', '', '1991-04-10 10:17:29', '1973-03-19'),
(44, 0, 'Miss Liliane Koss', 'ritchie.meggie@example.net', '30944 Oda Way Suite 505', '1-052-097-9212', '', '', '', '1996-01-30 17:54:57', '1975-07-29'),
(45, 0, 'Weston Kunde I', 'macejkovic.libbie@example.com', '9849 Lebsack Shoals', '(491)949-4423x0814', '', '', '', '1996-03-08 14:10:30', '2001-01-18'),
(46, 0, 'Adelle Swaniawski', 'alexis48@example.org', '829 Yolanda Stravenue Suite 032', '1-554-644-1613x31600', '', '', '', '2009-06-18 09:05:57', '2010-04-08'),
(47, 0, 'Miss Myrtle Okuneva', 'harvey.jaylan@example.com', '822 Stanton Course Apt. 073', '578-944-9858x26786', '', '', '', '2014-01-22 13:09:03', '1985-05-29'),
(48, 0, 'Willy Nader', 'jennyfer.stokes@example.net', '1049 Carmen Street', '919.914.6932', '', '', '', '2004-01-12 21:22:45', '2007-05-29'),
(49, 0, 'Mitchel Hodkiewicz', 'hahn.sydnee@example.com', '2852 Tillman Viaduct Suite 596', '1-012-418-4941x0240', '', '', '', '1978-05-05 18:52:40', '2015-07-26'),
(50, 0, 'Skylar Wehner', 'arely98@example.org', '6397 Eduardo Shoal Suite 772', '(180)230-5228', '', '', '', '2008-07-05 20:13:40', '1988-08-10'),
(51, 0, 'Dr. Ubaldo Champlin', 'murazik.eula@example.com', '630 Hermiston Circles Apt. 606', '564.047.1440x80855', '', '', '', '1986-05-03 19:25:18', '2003-11-05'),
(52, 0, 'Mr. Tyson Gerhold', 'zmcglynn@example.org', '03113 Nikolaus Burg', '(329)570-4342x0895', '', '', '', '2007-12-24 14:38:41', '1988-10-27'),
(53, 0, 'Prof. Rosemary Wiza PhD', 'lessie74@example.com', '84115 Jules Manors Suite 275', '(132)872-3069x423', '', '', '', '1983-05-11 10:53:49', '1996-04-15'),
(54, 0, 'Carlie Hirthe', 'clair.cartwright@example.com', '789 Batz Square', '1-601-344-1754x15218', '', '', '', '2001-03-30 09:02:58', '1991-07-26'),
(55, 0, 'Georgette Flatley', 'mckenzie.johann@example.net', '5733 Audra Mills Apt. 315', '+94(5)3353426224', '', '', '', '1997-01-23 19:57:56', '1985-05-10'),
(56, 0, 'Paul Reichert', 'brant11@example.net', '4651 Brennon Orchard Apt. 080', '390.977.3054x2449', '', '', '', '1991-10-26 14:02:29', '1978-06-05'),
(57, 0, 'Prof. Sienna Goodwin MD', 'gregoria.brakus@example.org', '7677 Breanna Fort Apt. 937', '1-109-925-4387', '', '', '', '1978-08-16 23:24:42', '2004-12-18'),
(58, 0, 'Axel Shanahan', 'trantow.adele@example.org', '35362 Deckow Branch Suite 320', '345-758-1565x1622', '', '', '', '2000-11-27 04:36:29', '2006-10-12'),
(59, 0, 'Miss Eleonore Koch MD', 'ytromp@example.org', '70132 Tromp Well Apt. 408', '296-867-8241x50492', '', '', '', '1990-08-07 02:18:34', '1982-11-09'),
(60, 0, 'Jena Treutel III', 'arnulfo69@example.net', '885 Graham Lakes', '679.596.7581x54221', '', '', '', '1986-07-28 11:38:08', '1987-11-19'),
(61, 0, 'Antonietta Sporer', 'gregg92@example.org', '5828 Stan Station Suite 123', '724.205.8137', '', '', '', '2010-08-11 05:23:13', '1991-05-21'),
(62, 0, 'Bryce Purdy', 'brekke.greg@example.com', '023 Carli Club Apt. 927', '977.255.1997', '', '', '', '1998-06-05 22:02:06', '1986-12-06'),
(63, 0, 'Dallin O\'Conner', 'guy.predovic@example.net', '8816 Daniel Alley', '069.200.7683', '', '', '', '1979-03-29 13:44:16', '1996-12-28'),
(64, 0, 'Noe Lueilwitz', 'lang.jerome@example.net', '569 Renner Row', '07810078419', '', '', '', '1987-05-24 22:18:50', '1997-08-21'),
(65, 0, 'Mrs. River McLaughlin', 'velma.stracke@example.org', '4708 Aidan Locks', '315-914-6587x647', '', '', '', '1983-04-10 07:00:19', '1995-07-02'),
(66, 0, 'Malinda Torp', 'lura29@example.org', '8855 Schroeder Squares', '943.846.5284x5871', '', '', '', '1980-02-05 08:29:37', '1972-03-04'),
(67, 0, 'Albertha Murphy Jr.', 'alexys44@example.net', '981 Frederic Island', '892.741.7499x91777', '', '', '', '2007-07-12 08:55:29', '2008-08-20'),
(68, 0, 'Deven Gulgowski III', 'xstreich@example.org', '973 Brett Meadow Apt. 747', '995-017-1803', '', '', '', '1987-04-12 23:16:14', '2018-12-24'),
(69, 0, 'Kole Rippin Jr.', 'gkonopelski@example.com', '988 Hollie Lake Suite 959', '(830)824-6040', '', '', '', '1991-05-13 23:22:01', '2016-07-04'),
(70, 0, 'Mrs. Estella Padberg I', 'zion.goyette@example.org', '574 Moen Pines', '(323)708-0647x92431', '', '', '', '2007-06-04 04:27:39', '1974-02-25'),
(71, 0, 'Mr. Granville Mueller DVM', 'leonie.marvin@example.org', '2175 Melyna Views Apt. 520', '01929017086', '', '', '', '2009-06-30 21:03:51', '1987-03-19'),
(72, 0, 'Lemuel Abernathy DVM', 'charlotte86@example.net', '26648 Johns Brooks Apt. 265', '(559)083-9492x8380', '', '', '', '1976-03-26 03:39:21', '2020-06-21'),
(73, 0, 'Tessie Volkman', 'timmy92@example.org', '570 Fiona Ports', '(128)786-3021', '', '', '', '1983-02-02 14:44:49', '2009-09-08'),
(74, 0, 'Americo Brakus', 'eschmidt@example.com', '554 Therese Burg', '375.508.2386x416', '', '', '', '1994-08-27 22:43:04', '2007-08-12'),
(75, 0, 'Letha Bruen', 'baltenwerth@example.com', '581 White Trace', '097.251.9095x2401', '', '', '', '2007-07-29 10:39:29', '2005-11-18'),
(76, 0, 'Otis Zboncak', 'keeling.rogelio@example.org', '1140 Aliya Isle Apt. 352', '715.501.3568x09105', '', '', '', '1979-07-12 22:02:07', '2010-01-15'),
(77, 0, 'Ms. Elsie Stanton', 'ena99@example.com', '23927 Murray Crest', '1-771-714-5088x8267', '', '', '', '1986-10-29 09:55:22', '2005-11-22'),
(78, 0, 'Claire Effertz', 'helena85@example.net', '3869 McCullough Hills Apt. 700', '862.106.8210', '', '', '', '1988-03-10 23:17:42', '1987-11-19'),
(79, 0, 'Yasmine Hansen', 'jessica.tillman@example.org', '60132 Tremblay Estate Suite 101', '04829036000', '', '', '', '2010-08-22 10:57:55', '2005-12-30'),
(80, 0, 'Emilia Doyle', 'ohane@example.com', '95940 Willy Summit', '671-199-2561', '', '', '', '1981-04-11 09:59:57', '2001-10-07'),
(81, 0, 'Kacey Kling', 'brown.carole@example.org', '5569 Jayda Wall', '363.699.9654', '', '', '', '1985-09-22 07:59:58', '1994-02-22'),
(82, 0, 'Joanne Rutherford I', 'pfisher@example.net', '1346 Eleonore Shores Suite 576', '824.234.0210x343', '', '', '', '2006-04-23 19:51:46', '2006-09-11'),
(83, 0, 'Omari Halvorson', 'tchamplin@example.net', '359 Koelpin Run Suite 213', '(477)726-0649x67623', '', '', '', '1984-02-20 16:40:39', '1976-11-01'),
(84, 0, 'Dr. Bernie Thiel I', 'elenora.spinka@example.net', '2952 Legros Freeway', '293-921-9527', '', '', '', '2003-01-03 06:35:47', '2010-10-14'),
(85, 0, 'Greg McCullough', 'abbie.schimmel@example.com', '97697 Ortiz Crescent Suite 490', '(687)926-8978x4975', '', '', '', '1976-11-05 05:40:06', '2000-08-03'),
(86, 0, 'Marcel Stark', 'lou.wintheiser@example.net', '423 Shanahan Pine', '642.494.0952', '', '', '', '2021-04-21 16:36:37', '1970-03-28'),
(87, 0, 'Yvette Mayert DDS', 'kuhlman.garry@example.com', '31999 Miles Underpass', '(290)209-5868', '', '', '', '1994-07-08 15:01:02', '1992-04-06'),
(88, 0, 'Wayne Pfannerstill III', 'reggie.shanahan@example.com', '684 Bins Port', '(818)838-5931', '', '', '', '1997-10-18 19:15:48', '1992-09-05'),
(89, 0, 'Prof. Hassie Jenkins', 'hoppe.demarcus@example.net', '49504 Osinski Plaza Suite 001', '1-474-895-4164x4892', '', '', '', '2011-08-15 11:19:53', '1974-07-26'),
(90, 0, 'Kristoffer Conroy V', 'mack.williamson@example.net', '9082 Mckenzie Light', '02566603599', '', '', '', '1983-02-21 04:39:21', '2007-03-09'),
(91, 0, 'Blaze Kunde', 'braxton69@example.net', '66765 Ferry Circle Suite 250', '08462094791', '', '', '', '1982-01-23 06:43:45', '1988-12-10'),
(92, 0, 'Ruby Gutmann', 'vtoy@example.net', '054 Nicolas Cove', '00966898289', '', '', '', '1997-10-05 07:22:33', '1986-05-22'),
(93, 0, 'Daija Wiza', 'kiley05@example.net', '815 Willow Gateway Apt. 417', '1-621-094-4223x9303', '', '', '', '1992-10-06 19:41:38', '2008-02-23'),
(94, 0, 'Colleen Hessel', 'foster.steuber@example.net', '943 Jennifer Circle', '(625)408-2678', '', '', '', '2008-06-08 14:05:56', '2013-08-23'),
(95, 0, 'Humberto Cassin', 'andres.paucek@example.net', '31939 Feeney Hill Suite 912', '05343369704', '', '', '', '1992-10-30 13:46:52', '1988-12-25'),
(96, 0, 'Maximo VonRueden', 'schaefer.humberto@example.org', '26370 Allen Route', '1-902-697-9124x6367', '', '', '', '1983-06-24 12:02:48', '2007-03-11'),
(97, 0, 'Ms. Alivia Pfannerstill', 'jordon.jacobson@example.org', '4045 Lewis Villages Suite 972', '+21(1)1245232934', '', '', '', '1990-08-02 15:53:26', '1982-04-09'),
(98, 0, 'Jorge Leffler DVM', 'jmueller@example.org', '7876 Jerde Union', '(813)521-3282x59792', '', '', '', '1971-10-03 08:11:38', '2013-05-23'),
(99, 0, 'Mr. Mervin Walsh PhD', 'ignacio76@example.org', '86185 Burnice Village Suite 062', '720-931-2568', '', '', '', '2019-03-11 11:10:30', '1992-02-28'),
(100, 0, 'Dr. Nella Homenick II', 'unique.wintheiser@example.net', '01092 Leannon Via Suite 944', '510.157.2811', '', '', '', '2000-06-11 20:28:30', '1996-01-05'),
(101, 0, 'Garry Balistreri', 'unikolaus@example.org', '38274 Rempel Ranch', '1-454-309-5321', '', '', '', '1993-05-01 00:13:44', '1980-12-07'),
(102, 0, 'Kyleigh Witting', 'chahn@example.org', '635 Kaleigh Spring', '1-721-257-6784x595', '', '', '', '1991-02-15 01:24:22', '2015-08-17'),
(103, 0, 'Jackeline Nader I', 'micheal.mosciski@example.org', '5789 Robb Square', '(230)434-4942', '', '', '', '1996-12-19 10:53:58', '1990-08-14'),
(104, 0, 'Evans Koelpin', 'adouglas@example.com', '2644 Cartwright Expressway Suite 646', '551.875.6503', '', '', '', '1985-03-10 16:32:33', '1975-09-08'),
(105, 0, 'Miss Kristy Swaniawski Jr.', 'trevor.schulist@example.com', '8512 Forest Heights', '041.952.9673x6443', '', '', '', '2020-06-16 22:59:17', '1970-12-24'),
(106, 0, 'Rowan Littel', 'qgulgowski@example.com', '087 King Cape', '1-992-316-0264x035', '', '', '', '2019-10-19 01:26:54', '1974-11-17'),
(107, 0, 'Rosalyn Ernser', 'jacobs.waylon@example.net', '5783 Langosh Rest', '00169529624', '', '', '', '1999-07-18 14:20:56', '2007-05-25'),
(108, 0, 'Elbert Cruickshank', 'ksatterfield@example.org', '390 Ari Trail', '376-472-0092', '', '', '', '1990-08-21 19:02:54', '2006-08-28'),
(109, 0, 'Daphney Kshlerin', 'natasha15@example.com', '0796 Roberto Ramp Suite 569', '+08(6)5838442064', '', '', '', '1971-01-31 18:45:04', '1996-05-08'),
(110, 0, 'Amos Miller IV', 'hackett.chandler@example.net', '963 Hilll Hill Apt. 050', '744.762.5963x292', '', '', '', '1989-07-30 04:10:54', '1978-10-26'),
(111, 0, 'Anya Ondricka', 'bednar.dimitri@example.org', '9646 Burnice Brook', '1-706-390-3920x59744', '', '', '', '2013-05-21 21:28:50', '1973-02-09'),
(112, 0, 'Dexter Leuschke', 'treutel.summer@example.org', '6945 Jazmyn Cape', '1-797-479-8919', '', '', '', '2009-03-24 09:08:48', '2008-02-06'),
(113, 0, 'Dr. Zachery Hayes V', 'nina82@example.com', '0169 Wiegand Fields Apt. 416', '324-648-7666', '', '', '', '1982-06-24 23:43:28', '2008-09-02'),
(114, 0, 'Melody Koss', 'lonzo.heathcote@example.net', '8096 Herminio Fork', '+46(8)7505181326', '', '', '', '1986-03-28 08:30:50', '2002-05-26'),
(115, 0, 'Hazle Lind', 'rossie.marks@example.com', '5527 Demond Street Apt. 939', '(955)419-4980x4039', '', '', '', '1977-10-28 17:51:26', '2003-01-19'),
(116, 0, 'Angel Howe', 'jaiden.grimes@example.net', '39422 Denesik Viaduct Apt. 293', '1-858-834-3599', '', '', '', '1981-06-25 00:16:34', '1981-01-10'),
(117, 0, 'Hailie Collier IV', 'lambert45@example.com', '3658 Barbara Valleys Apt. 988', '+95(2)3688294530', '', '', '', '1970-05-03 20:14:48', '2004-03-11'),
(118, 0, 'Rubye Sauer', 'linnie08@example.org', '64714 Graham Centers', '00343122015', '', '', '', '1986-04-26 10:38:57', '1984-03-28'),
(119, 0, 'Trevion Ratke', 'jackeline.nicolas@example.com', '416 Breanne Curve', '(097)821-5674x9938', '', '', '', '2018-06-11 08:21:27', '2000-01-08'),
(120, 0, 'Delores Senger', 'carlo.shields@example.net', '67379 Jaida Mountain', '300-623-0817', '', '', '', '1976-10-05 12:23:39', '2000-03-20'),
(121, 0, 'Pierre Gibson', 'bauch.sheila@example.net', '80741 Kling Point Apt. 360', '272.225.1318x08988', '', '', '', '1994-08-01 12:49:24', '1985-06-09'),
(122, 0, 'Mr. Jackson Quitzon III', 'xfranecki@example.com', '97585 Ernestina Walk Suite 911', '(269)443-9335', '', '', '', '2009-07-14 19:12:09', '1995-05-19'),
(123, 0, 'Penelope Wolf PhD', 'ludwig56@example.org', '50476 Kiarra Plains', '657-752-8868x059', '', '', '', '1996-09-28 08:45:04', '1974-07-25'),
(124, 0, 'Malachi Goodwin', 'terrill96@example.net', '5281 Kiana Greens', '(621)822-2432x8506', '', '', '', '1999-05-27 18:13:25', '1987-02-03'),
(125, 0, 'Reed Beatty', 'clay.russel@example.com', '0254 Balistreri Station', '012-776-1554x41318', '', '', '', '1988-06-17 14:25:20', '1991-06-14'),
(126, 0, 'Kasandra Ratke Jr.', 'gutmann.monty@example.net', '32659 Russel Heights Apt. 567', '1-067-879-9402x7006', '', '', '', '1975-03-05 10:55:07', '2007-12-18'),
(127, 0, 'Prof. Maya Orn', 'kling.carlee@example.org', '86487 Heidenreich Isle Apt. 699', '1-533-778-1296x7544', '', '', '', '1979-10-26 13:08:19', '1972-09-03'),
(128, 0, 'Myrtie Rodriguez', 'bferry@example.com', '96512 Nitzsche Prairie', '873-519-6537', '', '', '', '1989-06-04 23:59:43', '2015-05-06'),
(129, 0, 'Cesar Hahn', 'sedrick.rogahn@example.net', '75495 Evangeline Square', '1-072-405-2431', '', '', '', '2005-11-10 21:26:37', '1981-11-17'),
(130, 0, 'Claudine Willms', 'uward@example.org', '1669 Hamill Viaduct Apt. 980', '+38(2)1744487395', '', '', '', '1991-02-10 02:31:53', '1975-09-10'),
(131, 0, 'Prof. Ahmed Homenick DVM', 'euna.cummerata@example.com', '7871 Julius Ford Apt. 005', '(825)828-8062', '', '', '', '1989-04-22 07:36:08', '1980-03-27'),
(132, 0, 'Cortney Harris', 'abigayle.zulauf@example.net', '5641 Lesly Squares', '(240)604-0973x29128', '', '', '', '2000-05-04 11:12:34', '1975-02-17'),
(133, 0, 'Mohamed Kautzer', 'elvis.johnston@example.net', '58513 Bauch Islands Suite 736', '+34(3)1627753829', '', '', '', '1992-07-19 06:50:39', '2018-01-24'),
(134, 0, 'Prof. Wilfrid Casper', 'tmosciski@example.com', '9170 Gussie Gardens', '211-522-3211', '', '', '', '2014-07-23 16:22:18', '1993-02-27'),
(135, 0, 'Alivia Stoltenberg', 'bryce50@example.net', '956 Satterfield Vista', '1-211-189-5698x4748', '', '', '', '1981-01-30 17:03:57', '2002-07-15'),
(136, 0, 'Mr. Brock Swaniawski', 'wilkinson.grady@example.com', '086 Ted Via', '(718)608-8809x0544', '', '', '', '1994-08-17 01:28:28', '2011-10-27'),
(137, 0, 'Kari Nolan', 'nader.golda@example.com', '4194 Hoeger Throughway Apt. 584', '057-960-5645x3051', '', '', '', '1987-04-17 10:57:06', '2003-10-20'),
(138, 0, 'Dallas Marquardt', 'pearlie90@example.org', '46636 Merritt Parkways Suite 399', '(992)546-8797x763', '', '', '', '1971-04-03 21:58:21', '1977-08-09'),
(139, 0, 'Lizzie McCullough', 'trudie76@example.net', '01584 Nienow Groves', '06735686263', '', '', '', '1982-03-21 08:12:20', '2004-03-10'),
(140, 0, 'Dortha Huels', 'benton89@example.net', '73773 Hayden Hill', '140.178.5555', '', '', '', '1999-03-14 10:40:19', '1977-03-21'),
(141, 0, 'Yolanda Smitham I', 'barrows.roosevelt@example.org', '3230 Wyman Knolls Apt. 697', '(208)145-1811x872', '', '', '', '1993-03-26 10:45:02', '1977-06-06'),
(142, 0, 'Orland Turner', 'kailee33@example.com', '594 Sporer Unions', '890-906-7982x75616', '', '', '', '2009-05-10 22:15:47', '1974-02-26'),
(143, 0, 'Jon Lakin MD', 'sophie31@example.net', '342 Turner Drives', '293.267.0382x4546', '', '', '', '2007-08-04 04:46:39', '2003-11-21'),
(144, 0, 'Telly Grant', 'srunte@example.org', '57018 Ova Track Suite 717', '189.347.6071x503', '', '', '', '1986-03-09 03:15:47', '1986-05-13'),
(145, 0, 'Gino Kozey V', 'leonie97@example.com', '74460 Hanna Valleys Apt. 473', '(838)817-4730x4399', '', '', '', '2006-10-09 01:10:55', '1986-03-02'),
(146, 0, 'Cortez Dickinson III', 'price.opal@example.net', '99217 Dooley Village', '+49(6)9764934386', '', '', '', '1979-12-31 00:25:45', '1979-10-03'),
(147, 0, 'Thalia Kuhn Jr.', 'glueilwitz@example.net', '7035 Eula Pike', '413-787-1338x18486', '', '', '', '1972-03-29 00:35:12', '1996-12-18'),
(148, 0, 'Mrs. Elinor Bruen Sr.', 'dixie.zemlak@example.org', '760 Erika Crescent Apt. 770', '(542)749-8458', '', '', '', '2014-09-16 00:07:52', '1982-09-29'),
(149, 0, 'Marcia Goyette', 'lhartmann@example.net', '51684 Lowe Wells Suite 941', '+43(8)8260815258', '', '', '', '1998-06-28 14:27:51', '1999-12-29'),
(150, 0, 'Rowan Ullrich', 'elliott.ziemann@example.net', '4516 Will Mission', '+23(5)2632321978', '', '', '', '2019-02-15 20:00:17', '2014-05-01'),
(151, 0, 'Mr. Dillon Ernser III', 'plabadie@example.net', '150 Bins Street', '(585)890-3328x7048', '', '', '', '1979-12-24 19:43:55', '1976-08-09'),
(152, 0, 'Bell Goldner', 'wwiza@example.org', '31574 April Ranch Apt. 174', '638-523-0020', '', '', '', '2006-03-18 13:29:05', '1994-04-11'),
(153, 0, 'Mr. Stewart Kris', 'vmueller@example.com', '36312 Gislason Tunnel Suite 924', '(584)572-3770', '', '', '', '2013-02-12 08:58:14', '2013-02-13'),
(154, 0, 'Miss Dorothy Armstrong Sr.', 'eunice52@example.net', '380 Abbey Isle Apt. 119', '1-438-769-1655x2406', '', '', '', '1980-12-26 17:53:34', '1982-05-16'),
(155, 0, 'Kyla Fahey I', 'savanah.mckenzie@example.com', '421 Streich Landing', '+16(3)8764991504', '', '', '', '1996-03-01 09:05:01', '1995-03-23'),
(156, 0, 'Shanna O\'Hara', 'kihn.jane@example.com', '63235 Dach Plains Suite 411', '449.844.1570x452', '', '', '', '2007-06-23 06:32:34', '1987-05-04'),
(157, 0, 'Ms. Lauretta Kozey MD', 'toney31@example.com', '3278 Hirthe Dam Suite 159', '1-225-539-1439', '', '', '', '1994-04-05 07:36:25', '2016-01-28'),
(158, 0, 'Wilma Corwin', 'funk.kraig@example.com', '1529 Leda Street Suite 967', '380-444-9033x0423', '', '', '', '1999-10-13 05:33:21', '1993-12-22'),
(159, 0, 'Maya Reynolds IV', 'ghammes@example.org', '565 Roma Locks Apt. 762', '(289)121-8424', '', '', '', '1972-10-05 14:54:00', '1996-09-18'),
(160, 0, 'Margarete Bogan', 'hconnelly@example.net', '4022 Ullrich Hollow Apt. 455', '490.392.0213x382', '', '', '', '1980-03-13 13:00:48', '1994-12-28'),
(161, 0, 'Lyda Wuckert', 'hartmann.mariano@example.net', '0747 Ivah Light', '+36(1)7718175089', '', '', '', '2010-06-07 00:48:16', '1976-12-20'),
(162, 0, 'Talon Treutel V', 'btrantow@example.net', '4044 Kiera Flat', '(447)746-6249x437', '', '', '', '1979-11-15 00:55:24', '2002-01-23'),
(163, 0, 'Jerry Schultz', 'bkutch@example.net', '55067 Douglas Curve Apt. 738', '850.195.5990x6725', '', '', '', '1976-11-04 03:37:04', '2000-08-14'),
(164, 0, 'Marge Wiegand', 'wolf.guido@example.net', '0776 Patsy Fork Suite 945', '02836153488', '', '', '', '2011-08-01 10:23:06', '1988-10-14'),
(165, 0, 'Rosina Robel', 'ibergstrom@example.com', '283 Beatty Circle Suite 971', '153-296-5813x872', '', '', '', '2017-04-29 17:47:34', '2009-08-17'),
(166, 0, 'Judson Powlowski', 'schaden.seamus@example.net', '2418 Reinger Camp', '1-111-245-3013x0780', '', '', '', '2000-06-28 14:49:03', '1974-02-19'),
(167, 0, 'Prof. Kayley Adams', 'ckeeling@example.com', '15198 Reinger Valley Apt. 158', '(327)777-7537x7181', '', '', '', '2016-12-25 16:32:55', '1999-07-20'),
(168, 0, 'Clementina Parker', 'perry.shanahan@example.org', '3956 Tobin Pass', '(788)698-7498', '', '', '', '1986-10-17 17:47:44', '2010-08-20'),
(169, 0, 'Gabe Johnson', 'jannie.reinger@example.com', '34336 Haley Knoll Suite 172', '067.243.7285', '', '', '', '2015-03-11 16:18:15', '1990-12-05'),
(170, 0, 'Eloise Buckridge', 'aturcotte@example.com', '555 Eveline Run', '961.139.2140x857', '', '', '', '1999-08-22 10:58:30', '1992-02-18'),
(171, 0, 'Lily Stokes Jr.', 'enola06@example.com', '08031 Dejah Rest Apt. 875', '+17(0)3291051666', '', '', '', '1973-11-08 09:18:40', '1988-12-21'),
(172, 0, 'Mr. Saul Crona V', 'andreanne76@example.com', '306 Josiah Ridge Apt. 503', '775-785-2110x37553', '', '', '', '2010-07-24 02:21:18', '2011-07-21'),
(173, 0, 'Mrs. Kimberly Hoeger', 'wiza.martina@example.org', '56327 Morar Shores Suite 456', '541.545.5323x450', '', '', '', '2013-07-13 07:38:00', '1991-02-16'),
(174, 0, 'Vincenza Kling', 'myrtle.miller@example.org', '88131 Haylee Circles', '420-591-7573', '', '', '', '2004-02-27 19:38:58', '2009-09-03'),
(175, 0, 'Ova Marquardt', 'jerde.paula@example.org', '789 Elody Turnpike Apt. 357', '085.260.1734', '', '', '', '2015-09-03 18:56:17', '1984-06-12'),
(176, 0, 'Eli Leannon', 'rbreitenberg@example.net', '167 Norbert Ferry', '+93(2)4044889284', '', '', '', '2011-04-03 05:03:56', '2017-06-11'),
(177, 0, 'Mateo Pagac', 'kristoffer39@example.net', '6261 Harvey Villages', '1-734-056-1082x1449', '', '', '', '2002-01-23 05:27:03', '1974-06-20'),
(178, 0, 'Dr. Dannie Streich DDS', 'doyle.titus@example.net', '0375 Crooks Haven Apt. 703', '622-067-0183x1444', '', '', '', '1984-09-15 07:02:30', '1982-12-31'),
(179, 0, 'Jessy Walter', 'thelma.vandervort@example.net', '6203 Reichert Unions Suite 052', '494.871.2439', '', '', '', '2013-04-15 21:48:05', '1990-02-10'),
(180, 0, 'Queen Parisian IV', 'emanuel77@example.net', '953 Rachelle Prairie Suite 299', '1-023-944-0251', '', '', '', '1986-08-23 04:26:33', '2014-03-10'),
(181, 0, 'Mr. Erling Braun', 'ghessel@example.org', '84929 Obie Track', '04486312657', '', '', '', '2009-02-28 20:17:55', '1995-03-07'),
(182, 0, 'Clifford Mraz', 'gilberto77@example.net', '81517 Conn Track', '+41(2)2650712330', '', '', '', '1995-08-01 11:16:44', '2015-01-17'),
(183, 0, 'Jan Emmerich', 'stanton84@example.com', '4687 Ryleigh Crossing Suite 131', '(659)204-9461', '', '', '', '2018-05-30 14:04:52', '2005-03-15'),
(184, 0, 'Wyatt Oberbrunner', 'weimann.heber@example.net', '852 Rosario Hill Suite 777', '09406481376', '', '', '', '2008-02-14 08:17:57', '1991-11-29'),
(185, 0, 'Prof. Ulises Stiedemann IV', 'pierce.rodriguez@example.com', '26687 Swaniawski Key Apt. 729', '(750)502-2944x063', '', '', '', '2008-09-08 17:38:44', '2012-08-18'),
(186, 0, 'Jamar Orn', 'jamir.schiller@example.org', '522 Cary Lodge', '1-425-266-1745', '', '', '', '1995-06-13 15:08:22', '1979-05-14'),
(187, 0, 'Colt White II', 'bridget24@example.com', '570 Laverna Estate Suite 385', '(465)034-9494', '', '', '', '2006-05-29 13:48:28', '1999-01-02'),
(188, 0, 'Ms. Linnea Simonis Sr.', 'lawson.berge@example.org', '35634 Kessler Cove Suite 868', '754.553.8999x16250', '', '', '', '1996-06-25 06:54:04', '2002-12-01'),
(189, 0, 'Mrs. Salma Altenwerth', 'fweissnat@example.org', '71913 Carolyne Garden Suite 094', '(996)213-3020x873', '', '', '', '1986-01-03 18:43:45', '1978-05-20'),
(190, 0, 'Dr. Wilfredo Crist', 'ford24@example.org', '6042 Travis Harbors Suite 765', '019-679-4344', '', '', '', '2003-04-03 07:39:06', '1993-03-06'),
(191, 0, 'Sylvia Hudson IV', 'mfisher@example.com', '52761 Osinski Meadow Apt. 154', '649-689-3197x8695', '', '', '', '1979-07-09 12:24:33', '1974-09-02'),
(192, 0, 'Prof. Weldon Boyle', 'cwill@example.net', '0448 Alanis Port Apt. 576', '(779)119-7882x6881', '', '', '', '1981-02-21 17:46:21', '1992-04-13'),
(193, 0, 'Mrs. Leatha Denesik III', 'wuckert.jedidiah@example.com', '103 Greenholt Garden', '452-923-0898', '', '', '', '1977-03-06 16:30:47', '1983-02-18'),
(194, 0, 'Darlene Yundt', 'bayer.victor@example.net', '7066 Myrna Junctions Suite 792', '862.455.9887x68344', '', '', '', '1989-08-14 01:34:23', '1974-11-18'),
(195, 0, 'Noemi Weissnat', 'ankunding.lon@example.org', '4279 Matt Key Suite 171', '(186)165-9149x086', '', '', '', '1985-01-08 03:41:20', '1994-02-28'),
(196, 0, 'Alexandra Feeney', 'stephon82@example.com', '975 Bartell Burgs Suite 514', '1-810-938-7067x2140', '', '', '', '2005-08-25 09:51:01', '2020-10-08'),
(197, 0, 'Casey Goyette', 'equigley@example.com', '04526 Denesik Neck', '342.070.7855', '', '', '', '2018-02-02 01:51:21', '2002-08-14'),
(198, 0, 'Alivia Reichel', 'hayes.stacy@example.net', '23534 Langosh Roads Suite 796', '04999184734', '', '', '', '1972-06-02 17:04:34', '1992-04-10'),
(199, 0, 'Carrie Johnston', 'qreynolds@example.net', '08105 Teagan Extension Apt. 149', '(317)406-5073', '', '', '', '1994-06-07 05:31:11', '1973-05-07'),
(200, 0, 'Ernie Turcotte', 'henriette54@example.net', '6466 Cierra Neck', '1-052-281-7364x65399', '', '', '', '1998-01-23 20:56:28', '2009-03-02'),
(201, 0, 'Dr. Monroe Sanford', 'kkub@example.org', '88134 Karianne Lane', '733-660-0997x64893', '', '', '', '1989-12-23 03:41:53', '1996-09-23'),
(202, 0, 'Dr. Bryce Collins', 'langworth.earl@example.com', '14401 Jayne Crossroad Apt. 220', '+88(1)8618343055', '', '', '', '1980-04-07 02:11:09', '1974-05-19'),
(203, 0, 'Quinten Torp', 'rhea.nikolaus@example.net', '80338 Hansen Ridges Apt. 686', '429-901-3284x62740', '', '', '', '1972-06-16 02:03:14', '1973-12-16'),
(204, 0, 'Henri Treutel', 'md\'amore@example.org', '339 Alfonso Centers Apt. 671', '+74(6)1980649723', '', '', '', '1971-10-27 06:31:07', '2002-04-17'),
(205, 0, 'Fletcher Reynolds I', 'joseph.johns@example.org', '04404 Zena Hollow Suite 498', '(448)055-5120x7917', '', '', '', '2018-08-19 10:44:15', '1970-12-25'),
(206, 0, 'Alvena Crona', 'kmurray@example.com', '598 Whitney Mountains Apt. 777', '128-677-7444x314', '', '', '', '2003-10-19 19:16:05', '1979-11-09'),
(207, 0, 'Bernadine Crooks', 'ondricka.lowell@example.com', '65449 Amira Terrace', '(750)347-9808x63255', '', '', '', '2014-10-22 11:39:49', '1971-07-13'),
(208, 0, 'Rory Volkman', 'jaycee64@example.org', '757 Al Freeway Suite 094', '01161438100', '', '', '', '2002-07-27 15:04:59', '2021-04-19'),
(209, 0, 'Ms. Lyda Leannon', 'haskell39@example.org', '520 Bailey Mall', '+48(6)5022368296', '', '', '', '1989-08-29 09:19:31', '2010-04-13'),
(210, 0, 'Brandy McGlynn', 'hailey12@example.net', '8884 Rice Mount Apt. 152', '895-919-4864x7237', '', '', '', '1990-02-22 01:10:21', '1990-04-19'),
(211, 0, 'Dr. Armani Stark', 'carol.wisozk@example.org', '24625 Kuvalis Circle', '1-486-499-0289x139', '', '', '', '1984-11-03 14:25:48', '1996-02-02'),
(212, 0, 'Tomasa Lueilwitz', 'veronica55@example.net', '649 Balistreri Forge', '502.129.5757x3249', '', '', '', '2002-05-24 22:17:49', '2000-12-14'),
(213, 0, 'Emilio Larkin', 'hackett.coy@example.net', '51272 Jakayla Avenue Apt. 825', '1-506-594-4762', '', '', '', '1977-08-07 12:59:42', '2009-09-27'),
(214, 0, 'Mr. Rashad Hammes', 'conn.zane@example.com', '399 Christine Inlet', '(391)347-3655x845', '', '', '', '1992-03-01 01:50:25', '1990-09-25'),
(215, 0, 'Shanie VonRueden Jr.', 'jcorwin@example.com', '53613 Schimmel Road Apt. 191', '629.278.9938', '', '', '', '1971-09-22 09:32:08', '1988-03-28'),
(216, 0, 'Jerad Swaniawski', 'shemar.monahan@example.com', '4078 Gusikowski Run Apt. 885', '(666)744-9592x7535', '', '', '', '1997-03-18 08:29:48', '1996-06-22'),
(217, 0, 'Cassandra Grant', 'ondricka.justus@example.net', '6626 Pedro Throughway', '(764)161-7500', '', '', '', '1981-04-25 11:56:39', '1999-04-10'),
(218, 0, 'Mr. Demarcus Reinger Jr.', 'hahn.betsy@example.com', '474 Wuckert Road Apt. 504', '(441)654-3424x29674', '', '', '', '2006-01-05 09:29:20', '2008-03-29'),
(219, 0, 'Will Weissnat MD', 'wreynolds@example.com', '666 Corwin Isle', '713-936-7356x842', '', '', '', '2013-12-27 08:39:24', '1971-05-31'),
(220, 0, 'Dr. Mac Wunsch Jr.', 'mortimer.ritchie@example.net', '60833 Metz Wells', '893.953.6029x170', '', '', '', '1970-01-21 23:18:30', '1972-06-14'),
(221, 0, 'Adolph Schiller', 'grady.wilhelm@example.com', '73650 O\'Keefe Locks', '(858)933-9339x75012', '', '', '', '1982-09-28 18:45:29', '2019-03-29'),
(222, 0, 'Joyce Renner', 'sabina.pfannerstill@example.com', '068 Weissnat Cliffs Apt. 405', '094.792.7949x53934', '', '', '', '2019-10-23 02:12:08', '2008-02-13'),
(223, 0, 'Prof. Jacklyn Ferry III', 'kimberly.bogisich@example.org', '344 Brown Junctions', '798-935-8011', '', '', '', '1973-03-09 18:14:30', '1972-04-16'),
(224, 0, 'Geoffrey Zieme', 'enid.blick@example.net', '9538 Wilderman Locks', '08386575217', '', '', '', '2013-09-27 20:24:33', '1992-01-27'),
(225, 0, 'Mafalda Frami', 'runte.zula@example.com', '0978 McKenzie Islands Apt. 316', '605-026-1610', '', '', '', '1975-04-23 19:38:22', '2000-12-27'),
(226, 0, 'Ellie Mueller', 'marquardt.bernita@example.net', '83760 Gleason Hollow', '09289832577', '', '', '', '1978-05-18 08:20:15', '1998-02-05'),
(227, 0, 'Allie Hane', 'khalil18@example.com', '93863 Torphy Burgs Apt. 452', '(486)373-5459', '', '', '', '1977-06-28 19:50:09', '1970-11-28'),
(228, 0, 'Shaina Bashirian', 'yhane@example.net', '7414 Gia Mills Apt. 425', '1-205-588-8112x8036', '', '', '', '1977-01-24 11:00:59', '1990-03-10'),
(229, 0, 'Carolyn Langosh', 'edd.wisoky@example.net', '4845 Heller Bridge', '956.547.8300', '', '', '', '1987-10-04 12:12:09', '1975-10-05'),
(230, 0, 'Unique Quigley', 'lee37@example.org', '7298 Jazmin Greens Suite 937', '+87(1)1202682025', '', '', '', '1992-10-26 16:50:07', '1970-10-29'),
(231, 0, 'Mr. Eino Pacocha', 'ines30@example.com', '00339 Rodriguez Grove Suite 100', '187-838-9077x7905', '', '', '', '1998-02-05 00:22:19', '1981-03-29'),
(232, 0, 'Prof. Brenden Hintz PhD', 'swill@example.net', '50319 Mertie Hill Apt. 686', '286-891-6491', '', '', '', '1982-06-13 10:28:25', '2013-05-30'),
(233, 0, 'Adolfo Gaylord', 'rashawn54@example.net', '096 Sophia Isle', '1-189-697-1378x09915', '', '', '', '1977-01-25 06:48:45', '1997-11-18'),
(234, 0, 'Rita D\'Amore Sr.', 'edmond.hyatt@example.com', '518 Anne Shoal', '(744)014-3013', '', '', '', '1983-06-14 07:05:13', '1974-09-07'),
(235, 0, 'Lexus Bauch', 'gkessler@example.net', '988 Hayes Fields', '657.101.4199', '', '', '', '2002-12-26 15:43:57', '1985-04-17'),
(236, 0, 'Gunner Collins', 'houston40@example.org', '6377 Rowe Estate Suite 667', '787-874-1379x400', '', '', '', '2009-03-05 01:25:26', '1996-09-24'),
(237, 0, 'Sam Kreiger', 'cullen12@example.net', '205 Maye Avenue Apt. 069', '02730170148', '', '', '', '2008-02-20 19:55:34', '1984-12-25'),
(238, 0, 'Prof. Milton Howell', 'clara.grant@example.org', '944 Emelie Spurs', '517-287-2658x2563', '', '', '', '1970-10-23 16:01:10', '1972-10-13'),
(239, 0, 'Mrs. Abigale Baumbach III', 'slowe@example.com', '0366 Elwin Rest', '(364)157-5919', '', '', '', '1977-12-28 16:35:38', '1999-05-25'),
(240, 0, 'Willow Macejkovic', 'rdibbert@example.net', '81303 Lindgren Rest Suite 742', '1-033-298-6042x95761', '', '', '', '2016-08-31 13:17:26', '2000-12-05'),
(241, 0, 'Kayla Russel Jr.', 'mueller.kayden@example.net', '7324 Lemke Pike', '1-770-133-7301x398', '', '', '', '1978-12-18 00:07:29', '1988-07-16'),
(242, 0, 'Lessie Satterfield', 'maggio.cody@example.org', '2708 Bell Crossroad Suite 533', '08892420419', '', '', '', '1995-01-12 16:31:10', '2002-11-10'),
(243, 0, 'Gabe Mraz', 'ezequiel.beer@example.org', '22695 Lockman Court', '1-941-794-7273x082', '', '', '', '2012-07-07 03:18:19', '1986-07-23'),
(244, 0, 'Jordon Sporer', 'jacky36@example.com', '2794 Alison Pike', '599-098-5317', '', '', '', '2018-02-26 21:41:09', '1999-04-14'),
(245, 0, 'Nannie Legros', 'quitzon.chauncey@example.com', '551 Kunde Highway', '08352834265', '', '', '', '1986-03-30 02:44:47', '2010-01-15'),
(246, 0, 'Bernie Roob', 'xjacobson@example.org', '975 Elbert Via', '687-812-3800x67350', '', '', '', '1974-03-04 00:40:55', '1972-07-11'),
(247, 0, 'Miss Vilma Murray', 'annette01@example.com', '76701 Keshaun Stravenue', '1-126-022-2981', '', '', '', '2002-04-15 23:59:57', '2010-12-16'),
(248, 0, 'Camilla Bahringer', 'orland.jacobs@example.org', '0870 Cormier Landing', '1-745-087-8821x1907', '', '', '', '1994-05-29 05:22:37', '1989-01-03'),
(249, 0, 'Miss Amya Kuhic V', 'thessel@example.com', '22320 Tyrel Plaza', '(190)088-4467', '', '', '', '1983-04-15 14:46:55', '1999-10-21'),
(250, 0, 'Grover Ortiz', 'arippin@example.org', '2856 Beer Ramp Apt. 267', '1-368-515-5715x508', '', '', '', '1970-01-01 02:35:55', '2006-06-09'),
(251, 0, 'Karen Kuvalis', 'nreynolds@example.net', '566 Guiseppe Mews Suite 770', '636.788.1627', '', '', '', '2004-08-26 11:28:10', '2009-12-13'),
(252, 0, 'Ms. Zetta Willms', 'krunolfsson@example.net', '4775 Althea Mills', '1-815-687-1439', '', '', '', '2004-09-23 19:21:52', '2004-08-12'),
(253, 0, 'Fredy Wiza', 'justina51@example.com', '899 Lukas Branch', '1-166-514-1182', '', '', '', '2004-09-26 10:31:36', '1972-01-06'),
(254, 0, 'Caleb Boehm', 'ardith72@example.net', '41132 Shields Ford', '1-019-145-4092x6043', '', '', '', '2009-05-05 09:17:48', '2010-04-19'),
(255, 0, 'Breanne Romaguera', 'qkeeling@example.net', '851 Leif Bridge', '1-070-605-5216', '', '', '', '1990-01-11 10:53:59', '2006-05-14'),
(256, 0, 'Deja Prohaska', 'odell.boyle@example.net', '2562 Tromp Loop Apt. 619', '929-050-7984x2345', '', '', '', '2002-07-30 09:49:57', '2019-07-08'),
(257, 0, 'Ruth Toy', 'isidro.bednar@example.net', '1770 Robel Ranch Suite 282', '411.241.4967x952', '', '', '', '2015-06-17 06:56:22', '2017-07-21'),
(258, 0, 'Miss Eudora Bernier', 'julianne31@example.net', '72692 Tillman Glen Suite 150', '630.328.9782x40316', '', '', '', '2001-09-16 14:55:03', '2008-04-19'),
(259, 0, 'Autumn Metz', 'yframi@example.com', '285 Littel Knolls', '1-311-881-1613x82672', '', '', '', '2008-12-19 18:14:47', '1989-11-13'),
(260, 0, 'Miss Liliane Jakubowski', 'theodore93@example.com', '034 Dach Circles', '+19(9)2645128707', '', '', '', '2017-08-15 12:54:10', '1988-07-13'),
(261, 0, 'Dr. Ben Greenfelder DVM', 'jimmy64@example.com', '0072 Heller Greens Apt. 564', '1-980-674-4882', '', '', '', '1986-11-03 20:19:21', '2004-12-10'),
(262, 0, 'Johan Will', 'kaylah.douglas@example.org', '51683 Dare Rapid', '1-983-282-3576', '', '', '', '2005-05-14 16:09:15', '1986-04-14'),
(263, 0, 'Katelyn Green', 'marian00@example.com', '496 Pollich Forest', '136-898-6219x88542', '', '', '', '1980-11-30 04:50:11', '1986-08-27'),
(264, 0, 'Ruth Lakin', 'johnpaul61@example.org', '463 Nikolaus Stravenue Apt. 555', '1-912-647-6779x13943', '', '', '', '1986-09-26 08:36:37', '1973-12-12'),
(265, 0, 'Gust Hammes', 'stacy70@example.com', '000 Bruen Skyway', '1-349-250-9539', '', '', '', '1971-10-12 10:08:10', '1982-02-22'),
(266, 0, 'Chase Kautzer III', 'fredy.mann@example.com', '358 Sally Terrace Suite 537', '1-825-329-4178', '', '', '', '1971-11-07 07:59:35', '1978-11-05'),
(267, 0, 'Hattie Ryan', 'egibson@example.com', '894 Arlie Hill Suite 521', '205-483-2949', '', '', '', '2021-01-09 23:04:44', '1979-02-02'),
(268, 0, 'Nikolas Boyle', 'devan.wisozk@example.com', '9979 Hahn Fall Suite 040', '324.046.7732x5763', '', '', '', '1991-10-28 07:19:27', '1972-03-30'),
(269, 0, 'Zula Greenfelder', 'ruben.kreiger@example.com', '81270 Lucinda Well Apt. 214', '(863)006-0164x86221', '', '', '', '1998-06-27 18:04:01', '2013-12-29'),
(270, 0, 'Destin Swaniawski', 'rafael.rempel@example.net', '03981 Shields View', '960.637.3728x703', '', '', '', '2019-01-27 09:52:41', '2002-12-07'),
(271, 0, 'Mr. Edison Rice DVM', 'graciela.dare@example.com', '598 Trudie Circles Apt. 300', '412.573.1009x623', '', '', '', '2008-07-25 03:14:02', '1980-02-12'),
(272, 0, 'Roma Ferry', 'considine.tamia@example.com', '81517 Alek Divide Apt. 773', '(912)644-0517', '', '', '', '2013-01-05 13:14:10', '1974-06-18'),
(273, 0, 'Dr. Mitchell Schuster', 'opal.orn@example.org', '694 Murray Mill Apt. 857', '(433)084-4092x14285', '', '', '', '1979-08-01 12:02:30', '2012-11-28'),
(274, 0, 'Gunner Paucek PhD', 'qcrooks@example.org', '89311 Rhianna Valleys Suite 260', '454-492-6766', '', '', '', '2002-06-28 03:33:05', '1970-05-03'),
(275, 0, 'Giovanna Ondricka', 'candice.crooks@example.org', '459 Dibbert Streets', '(235)917-0481', '', '', '', '2000-04-26 07:21:05', '1976-02-05'),
(276, 0, 'Savanah Barrows III', 'ursula.kassulke@example.org', '78520 Kutch Neck Apt. 096', '939.490.8423', '', '', '', '2011-01-02 18:47:23', '2001-02-25'),
(277, 0, 'Ebba Breitenberg', 'brycen77@example.com', '7662 Karolann Estates', '(928)509-9731x101', '', '', '', '1999-12-08 19:15:26', '1996-12-09'),
(278, 0, 'Ms. Romaine Mante II', 'donnelly.evalyn@example.com', '88011 Jones Harbors Suite 340', '+64(1)3711421524', '', '', '', '2013-11-17 03:16:17', '1983-04-07'),
(279, 0, 'Camila Blanda', 'brown.zoie@example.net', '19050 Mathilde Fords', '800-078-0918', '', '', '', '1977-05-31 04:05:48', '2008-09-30'),
(280, 0, 'Mr. Lyric Franecki', 'gustave98@example.org', '24656 Lempi Glen', '088-819-0042x3879', '', '', '', '1984-03-22 14:18:47', '1992-08-18'),
(281, 0, 'Kristin Ullrich', 'rtremblay@example.com', '124 Rosenbaum Road Suite 069', '1-476-776-7162x69136', '', '', '', '1974-09-08 13:41:41', '1971-10-10'),
(282, 0, 'Lizeth Bechtelar PhD', 'rkuhn@example.net', '75486 Kyla Ports Suite 987', '1-114-057-1131', '', '', '', '1972-02-04 20:04:56', '2008-09-30'),
(283, 0, 'Ms. Rossie Thompson', 'dbernhard@example.com', '7993 Elna Estates Apt. 625', '218.005.0945x64118', '', '', '', '1994-01-20 00:21:49', '1977-06-23'),
(284, 0, 'Isai Swaniawski V', 'calista21@example.org', '222 Lakin Divide Apt. 645', '05663372159', '', '', '', '2003-10-10 06:41:28', '1981-12-13'),
(285, 0, 'Miss Gabriella Ondricka', 'daren.towne@example.net', '841 Charles Court Apt. 481', '466-241-6692', '', '', '', '2002-05-27 10:54:11', '1974-09-21'),
(286, 0, 'Allen Dare', 'tillman.felicia@example.org', '18983 Frida Wells Apt. 768', '(822)335-2387x04398', '', '', '', '2010-09-18 10:15:32', '2012-09-20'),
(287, 0, 'Sibyl Marks', 'batz.brant@example.org', '9436 Murray Way', '1-435-581-3052x15730', '', '', '', '2012-08-28 09:45:59', '2009-06-18'),
(288, 0, 'Lowell Corwin', 'colten98@example.net', '1733 Becker Summit Apt. 650', '(861)745-5802', '', '', '', '2019-08-08 11:35:05', '1985-01-25'),
(289, 0, 'Marjorie Goyette DVM', 'kreiger.janelle@example.net', '1391 Hackett Fork Suite 650', '120-988-7212', '', '', '', '2010-12-08 09:02:15', '2009-03-28'),
(290, 0, 'Jamir Gleason Sr.', 'smitham.amanda@example.com', '323 Kristofer Union', '395.732.1471', '', '', '', '1997-11-27 12:08:11', '1979-12-18'),
(291, 0, 'Reuben Corwin', 'ublick@example.org', '2114 Ben Forest', '+57(2)1503299935', '', '', '', '1974-03-26 09:38:10', '2008-09-20'),
(292, 0, 'Ms. Carlotta Dietrich II', 'greenholt.kassandra@example.net', '3855 Mitchell Haven Suite 832', '381-049-5977x4399', '', '', '', '1989-03-17 01:08:32', '1987-07-01'),
(293, 0, 'Ida Farrell', 'terrance.d\'amore@example.com', '3634 Josie Port Suite 537', '952.963.2096x75174', '', '', '', '1994-06-02 16:06:23', '2008-08-21'),
(294, 0, 'Nyah Graham', 'prohaska.kennith@example.com', '24674 Aubree Union', '1-505-721-9585', '', '', '', '2006-11-17 14:10:52', '2010-10-26'),
(295, 0, 'Ayla Ward', 'blanca98@example.com', '36913 Johns Heights Apt. 000', '324-626-8131x0651', '', '', '', '1980-07-28 17:27:10', '1998-03-06'),
(296, 0, 'Trenton Sauer DVM', 'wuckert.luella@example.com', '0097 Tromp Cove', '(223)094-9324', '', '', '', '1975-07-26 02:59:56', '1993-05-16'),
(297, 0, 'Dr. Nicholaus Hodkiewicz', 'dell.ondricka@example.org', '310 Telly Inlet', '310.425.8637x754', '', '', '', '2005-05-14 15:01:42', '1985-11-26'),
(298, 0, 'Therese Sauer', 'hhoeger@example.net', '2183 Vida Drives Suite 889', '494-236-2838', '', '', '', '1975-01-05 00:43:12', '1996-12-31'),
(299, 0, 'Wilmer Stamm', 'johns.uriel@example.org', '8322 Markus Fort Apt. 402', '619.590.4643x3818', '', '', '', '2016-09-19 05:36:23', '2013-01-31'),
(300, 0, 'Shanie Miller DVM', 'hstreich@example.com', '979 Lynch Harbor', '1-907-626-4749x83585', '', '', '', '2014-02-10 13:31:45', '2001-05-03'),
(301, 0, 'Mrs. Beth Cormier', 'lind.frankie@example.net', '71877 Wanda Cliffs Apt. 738', '(933)847-4513x72437', '', '', '', '1980-11-08 15:54:55', '2001-05-06'),
(302, 0, 'Derek Casper', 'mmiller@example.com', '445 Ruecker Center', '00482036199', '', '', '', '1997-04-26 18:19:41', '2015-08-30'),
(303, 0, 'Mariam Schowalter', 'edison.shields@example.com', '288 Martina Lights Suite 438', '972.144.4471', '', '', '', '1993-05-30 00:52:25', '1996-11-17'),
(304, 0, 'Mariane Lindgren MD', 'kerluke.daphne@example.net', '266 Prudence Greens Suite 497', '1-531-684-0337x9761', '', '', '', '1997-08-15 12:05:12', '1995-11-28'),
(305, 0, 'Efrain Kozey', 'dora34@example.org', '733 Marcel Glen Suite 290', '07838400680', '', '', '', '2011-08-17 12:13:45', '1976-12-22'),
(306, 0, 'Avis Towne', 'nayeli92@example.net', '0850 Raphaelle Brooks', '805-551-2683x42579', '', '', '', '1975-11-06 10:03:10', '2001-07-22'),
(307, 0, 'Eliza Ziemann', 'green.lizzie@example.com', '274 Whitney Canyon', '(088)877-0113', '', '', '', '2019-07-22 03:50:58', '1975-04-25'),
(308, 0, 'Dr. Jimmy Blanda I', 'pouros.lloyd@example.org', '7403 Amaya Crossroad Suite 603', '252-388-9599x858', '', '', '', '1983-02-23 21:28:27', '1987-12-30'),
(309, 0, 'Brian Boyer II', 'vschoen@example.net', '63991 Laurel Fields Apt. 851', '(287)406-0348x983', '', '', '', '2004-08-21 12:57:28', '1974-04-01'),
(310, 0, 'Ricardo Runte', 'fwhite@example.org', '9322 Torp Drive Suite 296', '+84(8)8744770400', '', '', '', '1977-07-20 15:10:30', '2014-05-27'),
(311, 0, 'Alexandrea Hackett', 'ghansen@example.com', '1000 Parker Points', '(437)854-5827x3814', '', '', '', '2012-02-17 16:50:55', '1977-07-20'),
(312, 0, 'Freeda Harris DVM', 'ova.carroll@example.com', '413 Jena Fork', '1-316-911-4432x20582', '', '', '', '2000-08-07 19:41:35', '2000-04-05'),
(313, 0, 'Miller Zemlak Jr.', 'jeromy.heller@example.com', '31727 Murl Burg Suite 371', '816-983-0672', '', '', '', '2017-10-17 01:26:03', '2011-01-20'),
(314, 0, 'Lucius Mills', 'schmeler.kevin@example.org', '1575 Hirthe Court', '1-866-000-3080x76848', '', '', '', '1977-09-06 14:38:49', '1994-04-06'),
(315, 0, 'Dr. Camila Russel I', 'thiel.alexanne@example.net', '412 Norwood Stream Apt. 584', '488-156-0810', '', '', '', '1976-03-08 02:25:35', '2001-12-16'),
(316, 0, 'Peggie Hirthe PhD', 'pgottlieb@example.com', '8468 King Walk', '772.238.6745', '', '', '', '2020-08-13 01:10:30', '2001-12-20'),
(317, 0, 'Leslie Weimann', 'emmerich.maribel@example.net', '3939 Manuela Isle Suite 871', '07230988696', '', '', '', '2003-10-28 08:06:54', '2000-12-22'),
(318, 0, 'Peggie Gusikowski', 'aisha.carter@example.com', '314 Burdette Squares', '(946)387-2545x56564', '', '', '', '2018-08-29 09:14:10', '1992-04-13'),
(319, 0, 'Christop Hills', 'jazlyn99@example.com', '428 Medhurst Island Suite 151', '(541)435-7388', '', '', '', '2000-04-23 15:13:06', '1999-04-15'),
(320, 0, 'Dr. Berniece McLaughlin', 'feeney.wendell@example.org', '400 Reilly Burgs Suite 864', '444.753.4582x41727', '', '', '', '2014-01-22 22:05:56', '2011-08-30'),
(321, 0, 'Reinhold Bradtke', 'ukub@example.net', '915 Wisoky Manor Apt. 838', '412-635-3956', '', '', '', '2018-10-10 06:54:19', '1976-08-04'),
(322, 0, 'Luella Kemmer', 'shayne.corkery@example.org', '1853 Maybelle Prairie', '(740)794-5830', '', '', '', '1973-05-11 00:28:53', '1991-12-19'),
(323, 0, 'Rosalind Conroy', 'presley.flatley@example.com', '763 Ritchie Square', '04544991161', '', '', '', '1970-09-17 19:31:12', '1973-05-22'),
(324, 0, 'Jovanny Bernhard', 'jessyca.batz@example.com', '323 Murphy Greens Apt. 849', '1-283-575-4961', '', '', '', '1977-09-13 00:25:56', '1975-11-22'),
(325, 0, 'Tia Reichel', 'chelsey.fadel@example.org', '760 Gutmann Estate Suite 321', '919-811-4033', '', '', '', '2019-01-15 17:15:40', '1988-05-05'),
(326, 0, 'Lucie Doyle', 'lourdes.okuneva@example.org', '2770 Weissnat Extension Apt. 658', '050-545-5601x3141', '', '', '', '2014-04-02 19:41:37', '2021-04-11'),
(327, 0, 'Alessia Mertz Jr.', 'candice36@example.net', '1993 Wiza Lane Apt. 726', '(543)638-3222x4224', '', '', '', '2004-08-30 07:47:52', '1991-11-12'),
(328, 0, 'Mr. Brent Bednar DDS', 'fletcher.frami@example.net', '62525 Dickinson Greens Suite 409', '072.875.2627', '', '', '', '1982-06-14 04:33:45', '2005-06-26'),
(329, 0, 'Ava O\'Kon', 'nschimmel@example.com', '6746 Cooper Brook', '1-806-030-3690x3062', '', '', '', '2011-03-09 14:48:38', '1984-05-20'),
(330, 0, 'Dr. Ward Zemlak Sr.', 'bradford.mohr@example.com', '10681 Abbott Plaza', '(434)202-3818x418', '', '', '', '1972-03-09 17:53:34', '2007-10-25'),
(331, 0, 'Kenton Carter', 'montana76@example.org', '38531 Coralie Terrace Apt. 684', '(291)911-8737', '', '', '', '1991-08-10 12:23:28', '1986-12-26'),
(332, 0, 'Dr. Fern Rau V', 'raven.hirthe@example.net', '1008 Spinka Wall', '(330)433-9349x84651', '', '', '', '1988-09-02 22:19:32', '2002-03-11'),
(333, 0, 'Donnie Hahn', 'bschumm@example.net', '74601 Oren Pines Apt. 811', '01326688226', '', '', '', '2000-12-18 05:16:37', '2003-09-02');
INSERT INTO `tb_staff` (`id_staff`, `id_kategori`, `nama_staff`, `email_staff`, `alamat`, `no_telepon`, `gambar_staff`, `gender`, `publish`, `date_created`, `last_modified`) VALUES
(334, 0, 'Prof. Claudie Walter DVM', 'tlind@example.com', '998 Pagac Ranch Suite 781', '828-003-5808x312', '', '', '', '1982-09-03 12:17:33', '1987-10-20'),
(335, 0, 'Lyric Pagac', 'marvin.felton@example.com', '0532 Grady Drive Suite 039', '083-842-2375x54299', '', '', '', '1974-05-01 02:50:16', '1980-02-07'),
(336, 0, 'Taurean Williamson Sr.', 'milton.dickinson@example.org', '93222 DuBuque Mountain', '(669)997-4575', '', '', '', '1970-05-12 20:11:58', '1984-07-11'),
(337, 0, 'Cicero Murazik', 'keegan77@example.net', '81493 Marianna Route Suite 691', '946.523.6043x06878', '', '', '', '1979-10-25 10:27:38', '2019-03-20'),
(338, 0, 'Eulah Schuster', 'vince56@example.net', '09920 Imogene Locks', '00714537647', '', '', '', '1993-01-14 02:07:30', '1978-06-14'),
(339, 0, 'Miss Lupe Adams Jr.', 'feeney.waino@example.com', '694 Gorczany Flats', '(962)747-4282x7351', '', '', '', '1975-09-27 04:25:46', '2005-04-26'),
(340, 0, 'Mr. Jedediah Halvorson', 'lilyan.paucek@example.com', '171 Roger Plains', '(571)675-2850x7509', '', '', '', '1971-10-08 21:00:56', '1976-08-03'),
(341, 0, 'Imelda Lebsack II', 'ywalter@example.org', '86214 Maggio Ports', '1-547-401-6810x520', '', '', '', '1990-10-20 19:00:44', '1986-09-08'),
(342, 0, 'Martine Feeney', 'marilie03@example.com', '433 Deckow Square', '688.463.4534', '', '', '', '2014-12-06 08:07:49', '2010-04-06'),
(343, 0, 'Haven Gerlach', 'reymundo11@example.net', '734 Tromp Highway', '1-839-715-1433x779', '', '', '', '1987-12-04 23:55:27', '1981-11-25'),
(344, 0, 'Murphy Ferry III', 'della62@example.com', '91199 Anjali Lane', '1-003-146-9661x8451', '', '', '', '1975-12-15 15:20:22', '2010-10-25'),
(345, 0, 'Mr. Brice Fisher DVM', 'harrison.mraz@example.org', '1160 Rodolfo Groves Suite 635', '168-418-5237x941', '', '', '', '2009-05-15 15:44:42', '1976-12-09'),
(346, 0, 'Travon Rau', 'brycen80@example.net', '50421 Jaiden Motorway', '1-699-519-3022x806', '', '', '', '2003-05-07 09:39:27', '1982-11-04'),
(347, 0, 'August Keeling III', 'coralie.rau@example.org', '15931 Hudson Flats Suite 330', '+72(9)1405049159', '', '', '', '2017-03-26 12:38:51', '2018-10-08'),
(348, 0, 'Prof. Howell Ferry', 'glover.abraham@example.org', '2116 Marks Light Apt. 286', '(279)445-7042x60651', '', '', '', '1978-12-30 05:45:02', '1991-06-20'),
(349, 0, 'Audra Mante', 'cartwright.charlotte@example.com', '42962 Jack Shoal Apt. 326', '(177)549-0380', '', '', '', '1975-05-25 17:19:18', '1982-12-10'),
(350, 0, 'Ms. Karolann Kihn', 'walker.eulah@example.org', '78808 Herminio Road Apt. 897', '787.105.6539x31177', '', '', '', '2004-02-22 19:23:13', '2017-08-21'),
(351, 0, 'Mr. Tony Roob', 'elaina76@example.net', '70343 Dante Shores Apt. 795', '1-344-243-8071x28146', '', '', '', '1991-10-26 22:30:53', '2002-02-08'),
(352, 0, 'Kylee Gorczany', 'krajcik.chesley@example.net', '6895 Okuneva Plain Suite 157', '966-187-3532x744', '', '', '', '2016-12-31 01:24:18', '2018-08-07'),
(353, 0, 'Braeden Auer', 'jeremie.maggio@example.org', '08253 Lockman Grove Suite 867', '+90(9)2045115997', '', '', '', '2001-04-17 01:13:12', '1971-11-06'),
(354, 0, 'Melvina Grimes', 'rigoberto95@example.com', '85927 Vada Lakes', '851.816.2545x237', '', '', '', '1997-01-05 03:52:34', '1971-07-05'),
(355, 0, 'Bulah Spencer', 'christiansen.kelsie@example.net', '715 Jaren Street Suite 162', '953-086-8411x26103', '', '', '', '1997-04-03 21:33:13', '2015-08-19'),
(356, 0, 'Dr. Aiyana White DDS', 'wunsch.lorenza@example.com', '5321 Jenkins Lane', '613-194-8854x8704', '', '', '', '1994-05-28 10:54:52', '1974-09-30'),
(357, 0, 'Norberto Abernathy', 'cschmitt@example.net', '43977 Maye Neck', '08764405914', '', '', '', '2002-08-20 21:51:22', '2013-01-23'),
(358, 0, 'Mr. Nestor Howell V', 'precious.runolfsdottir@example.com', '2307 Nitzsche Mills', '(163)330-5255x811', '', '', '', '1998-07-18 10:49:51', '1997-10-21'),
(359, 0, 'Abigail Christiansen', 'mireya63@example.com', '98820 Dortha Mountains', '03111893351', '', '', '', '1998-04-27 20:36:54', '2010-10-05'),
(360, 0, 'Ariel Maggio', 'renner.aurelio@example.org', '2392 Pouros Flats Suite 493', '(378)094-0392', '', '', '', '2020-04-04 04:00:42', '2015-10-23'),
(361, 0, 'Kacie Wisoky', 'leora06@example.com', '8426 Xander Locks', '1-866-251-6815', '', '', '', '1999-05-06 04:08:07', '1977-03-24'),
(362, 0, 'Grayce Bahringer', 'trent01@example.com', '3184 Waelchi Drives Suite 810', '460-099-9745x50970', '', '', '', '2018-05-14 15:24:09', '1993-10-14'),
(363, 0, 'Mr. Cristopher Hoppe', 'kovacek.brice@example.org', '395 Evalyn Via', '1-866-831-1858', '', '', '', '1975-05-07 04:18:36', '1987-07-21'),
(364, 0, 'Prof. Aaron Funk', 'amina86@example.org', '96223 Von Road', '(676)621-9930', '', '', '', '2007-11-28 00:59:20', '1994-06-03'),
(365, 0, 'Andreane D\'Amore', 'rico78@example.org', '213 Joanne Spur Suite 746', '1-940-305-7468', '', '', '', '1997-02-02 06:17:32', '2011-07-30'),
(366, 0, 'Prof. Tevin Barrows Sr.', 'flo33@example.com', '1937 O\'Hara Lock', '466.988.3413x503', '', '', '', '2011-08-10 06:43:53', '1991-07-31'),
(367, 0, 'Mr. Janick Friesen', 'ernie23@example.com', '370 Noelia Stravenue', '(322)835-3905', '', '', '', '1993-06-03 10:00:47', '2007-12-13'),
(368, 0, 'Rossie Huel', 'eddie.hilll@example.com', '335 Candido Mission', '1-984-896-4060x90730', '', '', '', '2000-06-24 04:17:43', '2013-05-01'),
(369, 0, 'Monserrat Lynch', 'towne.stefan@example.net', '77130 Prosacco Points', '02026282930', '', '', '', '2009-06-25 07:00:30', '2015-02-06'),
(370, 0, 'Aryanna Considine', 'chadd93@example.net', '97864 Joaquin Mission Suite 489', '177-438-9424x36880', '', '', '', '2005-02-06 07:00:54', '2001-01-28'),
(371, 0, 'Beaulah Sipes', 'lgraham@example.net', '951 Mohammad Row Suite 939', '102.652.7375', '', '', '', '2011-03-28 13:50:03', '2012-08-10'),
(372, 0, 'Dr. Elmer Pollich III', 'hillard69@example.com', '034 Augusta Flat Suite 591', '+12(3)7573777404', '', '', '', '2015-07-23 19:27:54', '1971-12-25'),
(373, 0, 'Miss Leda Hegmann', 'legros.rosalee@example.net', '8628 Lebsack Ridges', '(009)417-0171', '', '', '', '1998-04-06 10:08:43', '2007-07-17'),
(374, 0, 'Mr. Erick Goldner', 'wilfrid.bosco@example.net', '2528 Vivienne Fork Apt. 031', '574.473.7042x629', '', '', '', '1983-12-20 06:48:32', '1971-08-14'),
(375, 0, 'Wilfredo Hansen', 'o\'keefe.kaden@example.com', '57669 Elinore Knolls Suite 989', '+23(8)2359518983', '', '', '', '1989-01-08 11:01:37', '1992-06-09'),
(376, 0, 'Branson Reilly', 'amiya.mclaughlin@example.com', '96367 Summer Corner Suite 610', '08774834016', '', '', '', '1978-06-20 12:02:20', '2005-04-11'),
(377, 0, 'Jazmyn Legros', 'dejah64@example.net', '21741 Alysson Green Suite 118', '07636549347', '', '', '', '1972-04-06 18:26:37', '2017-07-18'),
(378, 0, 'Luz Maggio', 'oberbrunner.aileen@example.org', '447 Norberto Mountains', '(563)431-0271', '', '', '', '2016-12-17 10:13:14', '2019-03-08'),
(379, 0, 'Jakob Abshire', 'vleffler@example.org', '729 Ritchie Row Suite 817', '616.951.7115', '', '', '', '1995-02-24 19:10:02', '1991-08-24'),
(380, 0, 'Oswaldo Waters', 'farrell.billy@example.com', '388 Ulises Grove Apt. 753', '393.711.1118', '', '', '', '2015-04-06 09:36:25', '2019-12-12'),
(381, 0, 'Verlie Fisher', 'blanda.marvin@example.com', '85870 Edna Bridge', '039-660-4734x71771', '', '', '', '1971-10-16 00:14:51', '2010-05-06'),
(382, 0, 'Miss Meaghan Rippin', 'heller.theresia@example.net', '86026 Dooley Shore Apt. 408', '699-801-1717', '', '', '', '2014-09-29 13:04:35', '1983-02-09'),
(383, 0, 'Santa Bergstrom', 'jmoen@example.net', '4484 Hobart Pines Suite 163', '03124392165', '', '', '', '2009-04-09 17:55:03', '2002-06-27'),
(384, 0, 'Modesta Harvey', 'bailey.beau@example.com', '11445 Connelly Lights', '1-695-280-6924x0030', '', '', '', '2001-06-28 09:37:13', '2015-05-31'),
(385, 0, 'Prof. Niko Bogisich III', 'pacocha.tyson@example.org', '2037 King Turnpike', '155-670-3552', '', '', '', '2011-11-29 10:29:28', '1984-12-30'),
(386, 0, 'Fritz Schroeder', 'deon23@example.org', '1716 Kovacek Ramp', '1-834-815-2826', '', '', '', '2000-04-28 02:23:44', '1997-10-12'),
(387, 0, 'Juliana Graham', 'princess63@example.org', '55516 Nitzsche Manors', '1-381-703-4939x84374', '', '', '', '1985-02-09 23:50:06', '1987-06-25'),
(388, 0, 'Oceane McCullough', 'mccullough.derick@example.org', '370 Modesto Rest', '1-097-551-2406x23975', '', '', '', '1970-03-18 13:29:54', '2002-02-15'),
(389, 0, 'Anika Ratke', 'rosella40@example.org', '63033 Maggio Port', '(307)130-2214', '', '', '', '1987-07-12 23:32:08', '1985-04-18'),
(390, 0, 'Asa Powlowski', 'lsteuber@example.net', '678 Jones Squares', '1-148-818-0750', '', '', '', '2009-01-05 23:59:26', '2009-05-03'),
(391, 0, 'Demario Lueilwitz DVM', 'maybelle.batz@example.org', '516 Cade Run Suite 604', '973.444.1191', '', '', '', '2014-04-11 17:14:41', '1977-08-09'),
(392, 0, 'Kari Borer DDS', 'bkris@example.net', '82991 Garret Isle', '1-049-962-3867', '', '', '', '2001-08-06 16:41:30', '2010-11-10'),
(393, 0, 'Joanie Rosenbaum', 'douglas.sibyl@example.org', '97560 Huel Orchard Apt. 570', '(861)219-3351x1083', '', '', '', '2009-05-17 22:21:06', '1997-07-30'),
(394, 0, 'Prof. Julio Schneider I', 'hessel.mona@example.net', '950 Pfannerstill Dam', '1-365-717-8369x20989', '', '', '', '2009-02-24 03:29:03', '1979-03-13'),
(395, 0, 'Danial Wuckert', 'kraig.botsford@example.net', '9516 Justyn Ville', '(700)578-0021x860', '', '', '', '2004-11-12 21:01:41', '1987-01-07'),
(396, 0, 'Ms. Briana Block', 'hintz.manuel@example.org', '75712 Nicklaus Rapids Apt. 165', '757-333-9007', '', '', '', '2006-11-22 03:23:35', '1976-07-28'),
(397, 0, 'Rogers Thiel', 'delaney.rippin@example.org', '84204 Raquel Drive Apt. 786', '00738245894', '', '', '', '1996-05-17 11:06:11', '1987-06-14'),
(398, 0, 'Jamil Emard V', 'jesse60@example.com', '650 Smith Tunnel', '627.961.9318x26950', '', '', '', '2002-01-22 06:31:33', '2000-12-22'),
(399, 0, 'Rosalinda Thompson', 'reinger.emile@example.com', '6435 Edna Plaza', '476.871.2639x06836', '', '', '', '2020-09-21 01:05:01', '1977-04-21'),
(400, 0, 'Crawford Christiansen', 'alfred64@example.com', '3098 Kihn Grove', '02531611426', '', '', '', '2004-04-27 21:03:26', '1971-12-16'),
(401, 0, 'Bailey Kuhic', 'elinor71@example.net', '2403 Pagac Unions', '+55(4)9256194727', '', '', '', '2015-05-01 20:55:02', '1977-09-27'),
(402, 0, 'Dr. Sheila Treutel', 'hansen.brandyn@example.com', '552 Cynthia Dale', '(376)910-6574', '', '', '', '2017-02-11 01:52:18', '1979-08-12'),
(403, 0, 'Prof. Jeffery Sporer I', 'seamus.deckow@example.org', '23633 Gleichner Village', '276.049.8166', '', '', '', '2003-10-05 20:05:13', '1985-05-21'),
(404, 0, 'Kasandra Ferry', 'aufderhar.khalid@example.org', '72929 Strosin Loaf Apt. 931', '761.311.9530', '', '', '', '1974-06-06 16:36:01', '2009-06-21'),
(405, 0, 'Breanne Fritsch', 'jaylen11@example.net', '78619 Cade Ports Suite 832', '1-570-741-2149', '', '', '', '2015-03-14 20:49:25', '2000-11-22'),
(406, 0, 'Theresa Corkery', 'gideon.heaney@example.com', '775 Devonte Locks Apt. 067', '00936452250', '', '', '', '1970-11-26 11:08:12', '1978-03-03'),
(407, 0, 'Emmie Thiel', 'ronaldo.brekke@example.com', '86457 Hessel Forge', '03861022409', '', '', '', '2014-11-26 04:11:57', '2009-06-12'),
(408, 0, 'Ceasar Sanford', 'lpurdy@example.net', '77936 Vena Shores Suite 415', '1-843-808-1311', '', '', '', '1972-04-24 12:15:13', '1978-07-22'),
(409, 0, 'Leila Gerlach', 'uboyer@example.com', '4651 Maggio Lake', '831.731.1593', '', '', '', '1985-03-24 18:46:10', '1988-07-06'),
(410, 0, 'Dr. Shanny Padberg V', 'jakubowski.jayden@example.org', '5232 Kiehn Mountains Suite 807', '592.179.8640', '', '', '', '2009-08-04 20:40:48', '2006-07-07'),
(411, 0, 'Prof. Devin Harber', 'astrid00@example.org', '861 Angelina Courts', '(719)673-5062', '', '', '', '2018-06-23 15:11:05', '1979-06-22'),
(412, 0, 'Janet Larkin I', 'lennie.schamberger@example.net', '0886 Antoinette Camp', '768.239.3066', '', '', '', '1970-06-27 01:52:45', '1981-02-06'),
(413, 0, 'Emelia Stiedemann', 'terrence.medhurst@example.org', '16232 Layla Turnpike Suite 854', '00648624223', '', '', '', '1993-10-28 12:28:18', '2018-07-08'),
(414, 0, 'Mr. Avery Harber', 'robin08@example.net', '969 Tina Lights Apt. 651', '1-374-395-3574', '', '', '', '2006-02-04 03:51:23', '1972-03-12'),
(415, 0, 'Joseph Gutkowski', 'name86@example.org', '269 Odessa Camp Apt. 132', '(929)056-5629x54861', '', '', '', '1974-10-02 12:17:19', '2014-02-23'),
(416, 0, 'Dawn Herzog', 'ardella.mitchell@example.net', '798 Keara River Apt. 788', '1-187-086-4997x945', '', '', '', '2016-11-04 23:14:41', '2001-08-01'),
(417, 0, 'Destin Weimann IV', 'vswaniawski@example.net', '36777 O\'Keefe Dam', '671.933.5783', '', '', '', '1989-03-18 15:49:11', '1999-01-03'),
(418, 0, 'Dr. Toy Kessler', 'frederique29@example.org', '39518 Schmeler Station Suite 024', '372.619.2845x42425', '', '', '', '2015-10-30 20:53:23', '1990-06-15'),
(419, 0, 'Tamara Murray', 'corkery.delmer@example.org', '943 McKenzie Green Suite 172', '09563022138', '', '', '', '2018-10-21 12:45:20', '1979-09-01'),
(420, 0, 'Dr. Jamar Schoen Jr.', 'effie.cassin@example.org', '16130 Novella Locks Apt. 218', '317-520-2805', '', '', '', '2005-10-25 01:01:45', '1996-04-19'),
(421, 0, 'Jannie Upton', 'green.kristy@example.com', '592 Lang Plains', '1-225-540-0603x2547', '', '', '', '1989-09-01 11:35:14', '1998-04-03'),
(422, 0, 'Adelle Harber Sr.', 'lupe.brakus@example.net', '7719 Jakubowski Lane Apt. 862', '836.109.3594x9058', '', '', '', '1994-07-17 13:30:32', '1983-07-17'),
(423, 0, 'Felicity Cole', 'thompson.hanna@example.org', '06423 Paucek Locks Suite 082', '117.237.5603x68678', '', '', '', '1994-07-22 05:53:22', '2007-03-06'),
(424, 0, 'Annie Parker', 'xbrakus@example.org', '952 Velma Falls', '1-430-424-2028', '', '', '', '1984-10-07 03:00:28', '2001-05-04'),
(425, 0, 'Chyna O\'Keefe', 'chilll@example.org', '32949 Cartwright Land', '1-971-966-2846', '', '', '', '1976-12-24 03:51:13', '1985-12-01'),
(426, 0, 'Marjory Smitham DDS', 'wward@example.net', '6751 Celia Plaza Suite 553', '+87(2)1724214825', '', '', '', '2005-06-09 07:35:28', '1974-01-30'),
(427, 0, 'Mr. Rollin Tillman', 'vaughn.denesik@example.org', '18786 Pfeffer Islands', '1-759-301-4748', '', '', '', '1996-05-07 18:59:04', '2003-08-24'),
(428, 0, 'Magnus Funk Sr.', 'stamm.twila@example.org', '48888 Haley Glens Apt. 222', '08158437504', '', '', '', '1993-01-22 20:09:12', '1993-12-06'),
(429, 0, 'Kristina Haag III', 'kaylin65@example.org', '4757 Jerde Wells', '(075)865-5468x6478', '', '', '', '2008-12-18 06:09:09', '1989-09-21'),
(430, 0, 'Danielle Becker', 'wmarquardt@example.net', '75283 Thompson Mountains Apt. 007', '(560)698-6301x13862', '', '', '', '1999-02-24 20:05:43', '1980-09-01'),
(431, 0, 'Dr. Odell Kemmer II', 'stillman@example.net', '6497 Lukas Via', '1-673-748-9692x38352', '', '', '', '2004-01-10 20:16:58', '1980-06-14'),
(432, 0, 'Berry Ryan DDS', 'cummings.braxton@example.net', '3136 Daron Fort', '1-951-596-8054x491', '', '', '', '1974-10-29 19:15:44', '1996-06-21'),
(433, 0, 'Miss Delfina Bashirian', 'champlin.ayden@example.net', '628 Queen Loaf', '860-518-3741x50886', '', '', '', '1979-08-28 17:11:39', '1973-11-06'),
(434, 0, 'Mrs. Aleen Bayer', 'santino.fay@example.org', '0685 Ike Views Apt. 155', '1-549-066-2388x337', '', '', '', '1981-01-27 05:44:05', '2012-10-16'),
(435, 0, 'Clint Gaylord', 'justen37@example.org', '51305 Gorczany Harbors', '01451859780', '', '', '', '1970-11-19 03:40:53', '1973-10-21'),
(436, 0, 'Augusta Hilpert', 'aliyah34@example.com', '69266 Rex Stream', '811.822.4552x09838', '', '', '', '2002-03-08 00:35:23', '1999-04-24'),
(437, 0, 'Sammy Padberg MD', 'marc27@example.net', '274 Esmeralda Centers', '104.289.1252', '', '', '', '1976-08-25 11:26:06', '2019-06-22'),
(438, 0, 'Haskell Hills', 'xveum@example.net', '2347 Kailey Place', '1-351-974-0060', '', '', '', '2008-01-27 14:59:07', '2018-10-08'),
(439, 0, 'Javon Littel', 'kim69@example.org', '32777 Birdie Tunnel', '1-458-680-6610x18174', '', '', '', '1989-12-13 15:06:34', '2012-11-22'),
(440, 0, 'George Goyette', 'roderick76@example.org', '352 Arnaldo Street', '1-990-716-1046x475', '', '', '', '1970-09-09 22:06:31', '2015-08-08'),
(441, 0, 'Savion Reynolds', 'enola.wuckert@example.com', '45858 Odessa Dam', '1-347-790-7908', '', '', '', '2004-11-07 11:34:20', '2007-11-21'),
(442, 0, 'Aracely Marquardt', 'abernathy.mariana@example.com', '3541 Caden Walks Suite 177', '05373278255', '', '', '', '1977-02-07 12:18:04', '2013-06-20'),
(443, 0, 'Krystal Rutherford', 'schmeler.donnie@example.com', '0273 Hirthe Hollow', '1-796-370-8624x404', '', '', '', '2008-10-27 14:27:09', '1975-10-05'),
(444, 0, 'Mr. Jesus Reynolds DDS', 'linda46@example.com', '90805 Stefan Mission Suite 270', '874-343-8285x912', '', '', '', '1984-08-27 21:56:41', '2011-12-22'),
(445, 0, 'Garrick Herman', 'sward@example.net', '46032 Quitzon Corners Suite 344', '1-084-811-5356', '', '', '', '2003-07-08 01:13:10', '2008-10-08'),
(446, 0, 'Prof. Gilberto Yost', 'luella33@example.com', '1259 Carolyne Hills', '164-785-2418x2972', '', '', '', '1996-04-07 15:53:56', '2011-05-14'),
(447, 0, 'Ariane Greenfelder', 'sharon.ratke@example.com', '5830 Elise Mall Apt. 322', '(720)812-3210x762', '', '', '', '1970-07-01 04:37:34', '2002-07-17'),
(448, 0, 'Benjamin Medhurst', 'ralph22@example.org', '4274 Shany Key Suite 453', '(557)002-9052', '', '', '', '2008-01-30 00:27:50', '1971-01-26'),
(449, 0, 'Ella Conroy', 'rippin.shea@example.com', '387 Wehner Throughway', '197.570.8264x60373', '', '', '', '2020-09-16 19:54:30', '1974-09-15'),
(450, 0, 'Geovanny Reilly', 'monique38@example.com', '013 Stokes Estate Apt. 749', '1-451-694-7467', '', '', '', '1996-08-01 15:18:40', '2001-12-26'),
(451, 0, 'Miss Eva Schuppe', 'kulas.savannah@example.org', '4370 Ashly Divide', '1-197-380-4591x024', '', '', '', '2015-11-04 07:35:00', '1988-02-27'),
(452, 0, 'Dr. Myah O\'Keefe II', 'vschoen@example.org', '27877 Hudson Courts', '05548997173', '', '', '', '1993-01-11 09:09:31', '2017-10-05'),
(453, 0, 'Antonia Crooks', 'lucio37@example.net', '7482 Grady Mills Apt. 466', '145-922-3173', '', '', '', '1990-05-26 03:13:20', '1984-07-11'),
(454, 0, 'Bertram Skiles', 'colby62@example.com', '88192 Lonny Prairie', '+38(2)0824592185', '', '', '', '1993-08-21 03:55:50', '1996-11-29'),
(455, 0, 'Erling Oberbrunner', 'hilbert71@example.org', '8078 Macy Islands', '09946309778', '', '', '', '1974-06-17 07:32:39', '2009-06-29'),
(456, 0, 'Prof. Aglae Okuneva DDS', 'wilderman.hope@example.com', '52701 Pouros Squares Suite 821', '1-072-590-4261', '', '', '', '1970-12-16 13:04:47', '1989-02-24'),
(457, 0, 'Ebony Legros', 'jana.durgan@example.com', '6210 Rita Court Apt. 490', '1-089-996-7193x94158', '', '', '', '2018-08-08 17:20:40', '1994-09-02'),
(458, 0, 'Ari Ratke', 'alexzander.fadel@example.com', '6783 Legros Summit Suite 048', '992.565.7135', '', '', '', '1976-02-10 14:51:03', '1974-09-15'),
(459, 0, 'Gerson Bahringer', 'jacobs.amie@example.org', '310 Kunde Forges Apt. 552', '767-410-7297', '', '', '', '1991-06-15 22:18:15', '1972-11-15'),
(460, 0, 'Paula Rolfson II', 'misael66@example.org', '80087 Rosenbaum Centers Suite 174', '850-681-1934', '', '', '', '2019-06-25 15:25:03', '1993-07-13'),
(461, 0, 'Mrs. Aliza Roob', 'paucek.gay@example.org', '345 Adela Haven', '1-617-063-4453x1221', '', '', '', '1972-09-29 04:17:05', '2006-07-27'),
(462, 0, 'Concepcion Borer', 'haven28@example.org', '436 Jayson Way Apt. 850', '025-622-4517x2542', '', '', '', '2001-08-24 22:16:57', '1999-02-05'),
(463, 0, 'Karelle D\'Amore', 'halle69@example.org', '13178 Brekke Mill', '00752162126', '', '', '', '1975-03-11 06:12:39', '2001-08-06'),
(464, 0, 'Lucile Jast', 'may.medhurst@example.net', '7386 Brain Parkway Apt. 871', '07471485429', '', '', '', '1978-07-05 21:05:50', '1978-06-08'),
(465, 0, 'Rosella Miller', 'sanford.lindsey@example.net', '10739 Conn Motorway Suite 608', '506.073.7217x853', '', '', '', '1971-10-08 20:39:29', '2011-09-13'),
(466, 0, 'Cordie Grimes', 'nreynolds@example.org', '7954 Douglas Forge', '(566)405-8429x951', '', '', '', '1990-07-15 11:15:48', '2002-07-06'),
(467, 0, 'Annabel Homenick MD', 'jewell61@example.net', '9129 Minnie Gateway', '+57(3)8902451318', '', '', '', '1975-02-03 19:08:33', '1992-01-05'),
(468, 0, 'Velva D\'Amore', 'reichel.jan@example.net', '135 Rice Lodge', '(573)542-3505', '', '', '', '2006-02-25 07:55:33', '2020-03-24'),
(469, 0, 'Rosalee Robel', 'braun.rocio@example.com', '75013 Volkman Creek', '1-615-552-1312x86721', '', '', '', '1977-09-29 19:20:22', '2009-06-15'),
(470, 0, 'Beulah Adams', 'qturner@example.com', '702 Dicki Glens Suite 684', '(382)795-9254', '', '', '', '1971-06-22 09:20:43', '2008-12-19'),
(471, 0, 'Prof. Pierce Dibbert Jr.', 'elliot73@example.org', '599 Hillary Garden', '874.421.7243x807', '', '', '', '1989-02-02 08:48:58', '1998-08-06'),
(472, 0, 'Winfield Sipes', 'bhyatt@example.com', '59673 Ibrahim Camp', '412-781-3949x219', '', '', '', '2002-07-17 06:36:50', '1975-04-05'),
(473, 0, 'Dr. Jacinto Monahan', 'brown.gerry@example.com', '1664 Else Island Suite 350', '02844261798', '', '', '', '1988-07-24 02:48:05', '1989-08-28'),
(474, 0, 'Janie Swaniawski', 'ugrady@example.com', '45099 Mattie Expressway Apt. 808', '(901)872-6150', '', '', '', '1981-04-27 21:23:21', '2003-06-29'),
(475, 0, 'Sigmund Hartmann', 'tbrekke@example.org', '4671 Adrain Crossing Suite 974', '(803)233-4059', '', '', '', '1983-03-24 05:29:07', '1986-09-20'),
(476, 0, 'Prof. Aniya McKenzie MD', 'ibaumbach@example.net', '81960 Wisozk Shoals Suite 787', '318-874-3177', '', '', '', '1992-10-10 17:33:35', '1972-10-06'),
(477, 0, 'Alexie Ebert', 'rupert.conn@example.org', '2389 Brycen Port', '1-761-256-9746', '', '', '', '2019-07-23 01:24:37', '1984-07-10'),
(478, 0, 'Dr. Kirk Berge Jr.', 'violette.greenfelder@example.org', '386 Nella Place', '882.719.4991x4331', '', '', '', '2019-11-25 17:06:45', '1971-11-11'),
(479, 0, 'Aliza Mayert', 'xruecker@example.org', '5790 Pollich Walks Suite 023', '348-317-9058', '', '', '', '2002-08-17 22:11:20', '2004-01-04'),
(480, 0, 'Malika Vandervort', 'pschoen@example.com', '14086 Feil Street', '052-025-5695x39802', '', '', '', '2014-06-24 21:03:57', '2020-02-22'),
(481, 0, 'Danika Gaylord', 'filomena.bosco@example.com', '417 Champlin Islands', '(201)740-4325x6280', '', '', '', '1995-08-07 05:18:44', '1983-11-14'),
(482, 0, 'Ross Prosacco III', 'hank.bahringer@example.net', '1684 Judah Skyway Apt. 790', '+98(6)0559817056', '', '', '', '1991-05-21 14:18:52', '1992-11-13'),
(483, 0, 'Mrs. Felicity Yundt', 'matilde35@example.net', '6294 Raymundo Crest Suite 787', '(768)763-6553x959', '', '', '', '1977-02-26 08:45:41', '2014-04-30'),
(484, 0, 'Camille Little', 'jaeden.schiller@example.com', '64534 Darrell Port', '494.464.6975', '', '', '', '2020-08-16 22:22:55', '2001-03-26'),
(485, 8, 'Rolando Larkin', 'nfay@example.net', '067 Weissnat Extensions', '941-573-0350', '', '', 'Draft', '2021-05-02 03:25:41', '2021-05-02'),
(486, 9, 'Maureen Bradtke', 'malinda.lakin@example.net', '3065 Douglas Crescent Apt. 204', '1-593-154-5765', '', '', 'Draft', '2021-05-02 03:25:34', '2021-05-02'),
(487, 9, 'Benedict Kris', 'druecker@example.org', '31190 Konopelski Mill Apt. 773', '00006818274', '', '', 'Draft', '2021-05-02 03:25:27', '2021-05-02'),
(488, 14, 'Erna Rempel', 'francisco27@example.com', '883 Armstrong Rue Suite 508', '953.192.9015x85809', '', '', 'Draft', '2021-05-02 03:25:20', '2021-05-02'),
(489, 9, 'Mr. Joshua Friesen V', 'williamson.nicole@example.com', '333 Lila Highway', '+09(2)3330315807', '', 'Laki-Laki', 'Draft', '2021-05-02 05:27:16', '2021-05-02'),
(490, 10, 'Douglas Harvey', 'kihn.kenna@example.com', '495 Porter Mission Suite 407', '082-451-8338', '', 'Laki-Laki', 'Draft', '2021-05-02 05:26:08', '2021-05-02'),
(491, 11, 'Fajar Adi Setyawan', 'fajaras465@gmail.com', '              Lorem ipsum dolor sit amet consectetur adipisicing elit. Et, neque odio! Consequuntur voluptate ducimus deleniti saepe tenetur, possimus aut repellat optio asperiores provident porro a ea animi doloribus officiis inventore quo eos rerum offi', '12180016', 'team-31.jpg', 'Laki-Laki', 'Publish', '2021-05-02 09:16:40', '2021-05-02'),
(492, 10, 'Welly Pangestu Setiawan', 'welly@gmai.com', 'ini alamat', '12180085', 'team-11.jpg', 'Laki-Laki', 'Publish', '2021-05-02 05:27:04', '2021-05-02'),
(493, 13, 'Dimas Pramudya Pangestu', 'dimas@gmail.com', 'ini alamat', '12180041', 'testimonials-5.jpg', 'Laki-Laki', 'Publish', '2021-05-02 05:26:57', '2021-05-02'),
(494, 6, 'Gibaran Hamas Annidal', 'gibran@gmail.com', 'ini alamat', '12180009', 'testimonials-4.jpg', 'Laki-Laki', 'Publish', '2021-05-02 05:26:52', '2021-05-02'),
(495, 13, 'Tria Pratiwi', 'tria@gmail.com', 'ini alamat', '12180069', 'team-2.jpg', 'Perempuan', 'Publish', '2021-05-02 05:20:35', '2021-05-02'),
(496, 13, 'Erdin Gari', 'erdin@gmail.com', 'ini alamt', '12180036', 'testimonials-1.jpg', 'Laki-Laki', 'Publish', '2021-05-02 05:20:22', '2021-05-02'),
(497, 13, 'Pramah Eli Hia', 'prama@gmail.com', 'ini alamat', '12170212', 'team-12.jpg', 'Laki-Laki', 'Publish', '2021-05-02 05:20:13', '2021-05-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(3) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `id_kategori`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 0, 'Erdin Gari', 'erdin@erdin.com', 'default.png', '$2y$10$Tk0flcHcLKBlB6KQI/0VKeH4yqVPo8sUa3XI8KEzKHczO1NU8uVqq', 1, 1, 1619931701),
(4, 0, 'Saya User', 'user@user.com', 'default.png', '$2y$10$rwY.D1.VDefruq.BMOsMSe6HpW1apz9J4bC0hcNdM5qNt9SLBrhGi', 2, 1, 1619931428),
(5, 0, 'Welly Pangestu Setiawan', 'welly@welly.com', 'default.png', '$2y$10$wNCv5W/p7igiRqu4Hcg69OWyP4U4M7RAFtsVgn3hv3djqwF54x7BK', 1, 1, 1619931536),
(6, 0, 'Dimas Pramudya Pangestu', 'dimas@dimas.com', 'default.png', '$2y$10$RRH7NsYq/sccROqrK2FB.eEqKzJI45S.3E.hH54T8idRYX9yWpACq', 1, 1, 1619931584),
(7, 0, 'Gibaran Hamas Annidal', 'gibran@gibran.com', 'default.png', '$2y$10$Qf7QF.MKGKMAQK60XlspaOxWSjcZ02to00FwAWo3PULaMZH/mdVom', 1, 1, 1619931618),
(8, 0, 'Fajar Adi Setyawan', 'fajaras465@gmail.com', 'default.png', '$2y$10$w3rY5muFCdEwq/07TEAjkObNJQIuUoD.ijnfzitVzbeszXsZfKBDK', 1, 1, 1619930486),
(9, 0, 'Pramah Eli Hia', 'pramah@pramah.com', 'default.png', '$2y$10$QcR3ZC1W.cahpg.1XCsiruPngbwTNTcPk9UimisWRe4sNA3BoBDd6', 1, 1, 1619931734);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_token`
--

CREATE TABLE `tb_user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user_token`
--

INSERT INTO `tb_user_token` (`id`, `email`, `token`, `date_created`) VALUES
(6, 'fajaras465@gmail.coms', 'oybxZE/AEMiwi63Z21tqKTiJ90y6x44fN703gz7vagg=', 1619930188),
(7, 'fajaras465@gmail.com', 'HO7/WQkcsS7G0TvCNvGnkF33JXF1VjHHQVuqAVFjv6Q=', 1619930486);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `tb_client`
--
ALTER TABLE `tb_client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indeks untuk tabel `tb_file`
--
ALTER TABLE `tb_file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indeks untuk tabel `tb_kategori_berita`
--
ALTER TABLE `tb_kategori_berita`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_kategori_client`
--
ALTER TABLE `tb_kategori_client`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_kategori_portfolio`
--
ALTER TABLE `tb_kategori_portfolio`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_kategori_staff`
--
ALTER TABLE `tb_kategori_staff`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_layanan`
--
ALTER TABLE `tb_layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `tb_portfolio`
--
ALTER TABLE `tb_portfolio`
  ADD PRIMARY KEY (`id_portfolio`);

--
-- Indeks untuk tabel `tb_setting`
--
ALTER TABLE `tb_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tb_user_token`
--
ALTER TABLE `tb_user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tb_client`
--
ALTER TABLE `tb_client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_file`
--
ALTER TABLE `tb_file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_berita`
--
ALTER TABLE `tb_kategori_berita`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_client`
--
ALTER TABLE `tb_kategori_client`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_portfolio`
--
ALTER TABLE `tb_kategori_portfolio`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_staff`
--
ALTER TABLE `tb_kategori_staff`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_layanan`
--
ALTER TABLE `tb_layanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_portfolio`
--
ALTER TABLE `tb_portfolio`
  MODIFY `id_portfolio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_setting`
--
ALTER TABLE `tb_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_user_token`
--
ALTER TABLE `tb_user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
