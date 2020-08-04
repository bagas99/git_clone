<?php
    require 'functions.php';

    // apakah tombol submit sudah di tekan
    if(isset($_POST['tambah'])) {
        tambah($_POST);
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tambah Data Mahasiswa</title>
</head>
<body>
    <h3>Form Tambah Data Mahasiswa</h3>

    <form action="" method="post">
        <ul>
            <li>
                <label for="nrp">
                    NRP :
                    <input type="text" name="nrp" autofocus required>
                </label>
            </li>
            <li>
                <label for="nama">
                    Nama :
                    <input type="text" name="nama" required>
                </label>
            </li>
            <li>
                <label for="email">
                    Email :
                    <input type="text" name="email" required>
                </label>
            </li>
            <li>
                <label for="jurusan">
                    Jurusan :
                    <input type="text" name="jurusan" required>
                </label>
            </li>
            <li>
                <label for="gambar">
                    Gambar :
                    <input type="text" name="gambar" required>
                </label>
            </li>
            <li>
                <button type="submit" name="tambah">Tambah Data</button>
            </li>
        </ul>
    </form>

</body>
</html>