<!DOCTYPE html>
<?php
include "koneksi.php";
$id = $_GET['ida'];
$sql = "SELECT * FROM uts_resep WHERE id_resep='$id'";
$result = mysqli_query($conn, $sql);
?>

<head>
    <title>Document</title>
    <link rel="stylesheet" href="assets/style.css">
</head>

<body>
    <?php include "header.php"; ?>
    <div class="d-resep">
        <div class="resepd">
            <h1>Detail Resep</h1>
            <?php
            $resep = mysqli_fetch_array($result)
            ?>
            <tr>
                <div class="list-dresep">
                    <h3 class=""><?= $resep['nama_resep'] ?></h3>
                    <img src="gambar/<?= $resep['foto'] ?>" alt="resep">
                    <p>Bahan-bahan :</p>
                    <h5><?= $resep['bahan']  ?></h5><br>
                    <p>Cara Pembuatan</p>
                    <?= $resep['cara']  ?>
                </div>
            </tr>
        </div>
    </div>
</body>

<script type="text/javascript" src="assets/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="assets/style.js"></script>

</html>