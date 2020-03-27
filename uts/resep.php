<!DOCTYPE html>
<?php

include "koneksi.php";

$sql = "SELECT * FROM uts_resep";
$result = mysqli_query($conn, $sql);

?>

<head>
    <title>Document</title>
    <link rel="stylesheet" href="assets/style.css">
</head>

<body>
    <?php include "header.php"; ?>
    <div class="s-resep">
        <div class="resep">
            <h2>Resep Makanan</h2>
            <?php
            while ($resep = mysqli_fetch_array($result)) {
            ?>
                <div class="list-resep">
                    <img src="gambar/<?= $resep['foto'] ?>" alt="resep">
                    <h3><?= $resep['nama_resep'] ?></h3>
                    <a href="detailResep.php?ida=<?= $resep['id_resep'] ?>" class="detail">Detail</a>
                    </tr>
                </div>

            <?php
            }
            $jumlah = mysqli_num_rows($result);
            ?>
        </div>
        <h1>Jumlah Resep : <?= $jumlah ?></h1>
    </div>
</body>
<script type="text/javascript" src="assets/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="assets/style.js"></script>

</html>