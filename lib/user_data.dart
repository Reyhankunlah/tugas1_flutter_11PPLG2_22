class UserData {
  static String nama = '';
  static String username = '';
  static String password = '';
  static String jenisKelamin = '';
  static DateTime? tanggalLahir;

  static void simpan({
    required String namaBaru,
    required String usernameBaru,
    required String passwordBaru,
    required String jenisKelaminBaru,
    required DateTime? tglLahirBaru,
  }) {
    nama = namaBaru;
    username = usernameBaru;
    password = passwordBaru;
    jenisKelamin = jenisKelaminBaru;
    tanggalLahir = tglLahirBaru;
  }
}
