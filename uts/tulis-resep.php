<!DOCTYPE html>
<?php include 'koneksi.php'; ?>

<head>
    <title>Document</title>
    <link rel="stylesheet" href="assets/style.css">
</head>

<body>
    <?php include "header.php"; ?>
    <form action="" method="POST" enctype="multipart/form-data">
        <table class="form">
            <tr>
                <td>Nama Pemilik</td>
            </tr>
            <tr>
                <td><input type="text" name="namap" class="input"></td>
            </tr>
            <tr>
                <td>Nama Resep</td>
            </tr>
            <tr>
                <td><input type="text" name="namar" class="input"></td>
            </tr>
            <tr>
                <td>Bahan-bahan</td>
            </tr>
            <tr>
                <td><textarea name="bahan" cols="30" rows="15" class="input"></textarea></td>
            </tr>
            <tr>
                <td>Cara Pembuatan</td>
            </tr>
            <tr>
                <td><textarea name="cara" cols="30" rows="15" class="input"></textarea></td>
            </tr>
            <tr>
                <td>Foto</td>
            </tr>
            <tr>
                <td><input type="file" src="" alt="" name="foto"></td>
            </tr>
            <tr>
                <td><input type="submit" value="simpan" class="simpan"></td>
            </tr>
        </table>
    </form>
</body>

<script type="text/javascript" src="assets/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="assets/style.js"></script>
<script>
    $(document).ready(function() {
        setTimeout(function() {
            $(".datakosong").fadeOut("slow", function() {
                $(".datakosong").remove();
            });
        }, 1900);
    });
</script>

</html>

<?php

if (isset($_POST['namap'])) {
    if (!empty($_POST['namap']) && !empty($_POST['namar']) && !empty($_POST['bahan']) && !empty($_POST['cara']) && !empty($_FILES['foto'])) {
        $namap = $_POST['namap'];
        $namar = $_POST['namar'];
        $bahan = $_POST['bahan'];
        $cara = $_POST['cara'];
        $foto = $_FILES['foto']['name'];
        $foto_boleh = array('png', 'jpg', 'jpeg');
        $p = explode('.', $foto);
        $ekstensi = strtolower(end($p));
        $fotonya = $_FILES['foto']['tmp_name'];
        $angka_acak = rand(1, 999);
        $nama_baru = $angka_acak . '-' . $foto;
        if (in_array($ekstensi, $foto_boleh) == true) {
            move_uploaded_file($fotonya, 'gambar/' . $nama_baru);
            $sql = "INSERT INTO uts_resep(nama,nama_resep,bahan,cara,foto) VALUE('$namap','$namar','$bahan','$cara','$nama_baru')";
            $sql = mysqli_query($conn, $sql);
            if (!$sql) {
                die("query tidak bisa dijalankan") . mysqli_connect_errno($sql);
            } else { ?>
                <script>
                    alert("Resep Berhasil Ditambahkan");
                    window.location = 'index.php';
                </script> <?php
                        }
                    } else { ?>
            <h3 class="datakosong">foto yang diperbolehkan jpg, png, jpeg</h3>
        <?php
                    }
                } else {
        ?>
        <h3 class="datakosong">Lengkapi resep tersebut</h3>
<?php
                }
            }
?>