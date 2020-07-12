<?php
require 'functions.php';
// tampung ke dalam mahasiswa
$mahasiswa = query("SELECT * FROM mahasiswa");

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

    <table cellpadding="10" cellspacing="0" border="1">
        <tr>
            <th>#</th>
            <th>Gambar</th>
            <th>Nama</th>
            <th>Aksi</th>
        </tr>

        <!-- looping data -->
        <?php $i = 1; foreach($mahasiswa as $m) : ?>
        <tr>
            <td><?= $i++ ?></td>
            <td><img src="img/<?= $m['gambar'] ?>" width="68"></td>
            <td><?= $m['nama'] ?></td>
            <td><a href="detail.php?id=<?= $m['id'] ?>">detail</a></td>
        </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>