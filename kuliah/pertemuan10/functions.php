<?php

function koneksi() {
    return mysqli_connect('localhost', 'root', '', 'latihan');
}

function query($query) {

    $conn = koneksi();

    $result = mysqli_query($conn, $query);

    // jka hasilnya hanya 1 data
    if (mysqli_num_rows($result) == 1) {
        return mysqli_fetch_assoc($result);
    }

    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }

    return $rows;
}

function tambah($data) {
    $conn = koneksi();

    $gambar= $data['gambar'];
    $nrp= $data['nrp'];
    $nama= $data['nama'];
    $email= $data['email'];
    $jurusan= $data['jurusan'];

    $query = "INSERT INTO
                mahasiswa
            VALUES
            (null, '$gambar', '$nrp', ' $nama', '$email', '$jurusan')";
    mysqli_query($conn, $query);
}