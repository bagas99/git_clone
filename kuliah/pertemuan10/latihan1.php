<?php

// koneksi
$conn = mysqli_connect('localhost', 'root', '', 'latihan');

// query isi tabel mahasiswa
$result = mysqli_query($conn, "SELECT * FROM mahasiswa");

// ubah data ke dalam array
// $row = mysqli_fetch_row($result); => array numeric
// $row = mysqli_fetch_assoc($result); => array associative
// $row = mysqli_fetch_array($result); => keduanya

$rows = [];
while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
}

// tampung ke variabel mahasiswa
$mahasiswa = $rows;

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Daftar Mahasiswa</title>
</head>
<body>
    <h3>Daftar Mahasiswa</h3>

    <table cellpadding="10" cellspacing="0">
        <tr>
            <th>#</th>
            <th>Gambar</th>
            <th>NRP</th>
            <th>Nama</th>
            <th>Email</th>
            <th>Jurusan</th>
            <th>Aksi</th>
        </tr>

        <!-- looping data -->
        <?php $i = 1; foreach($mahasiswa as $m) : ?>
        <tr>
            <td><?= $i++ ?></td>
            <td><img src="img/<?= $m['gambar'] ?>" width="68"></td>
            <td><?= $m['nrp'] ?></td>
            <td><?= $m['nama'] ?></td>
            <td><?= $m['email'] ?></td>
            <td><?= $m['jurusan'] ?></td>
            <td>Hapus | Edit</td>
        </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>