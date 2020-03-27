<!DOCTYPE html>

<head>
    <title>Document</title>
    <link rel="stylesheet" href="assets/style.css">
</head>

<body>
    <?php include "header.php"; ?>
    <form action="" method="POST">
        <div class="resep">
            <div class="resepd">
                <div class="list-dresep">
                    <table>
                        <tr>
                            <td>Jenis Kelamin</td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="jk" class="input" value="laki">Laki-laki<input type="radio" name="jk" class="input" value="Perempuan">Perempuan</td>
                        </tr>
                        <tr>
                            <td>Umur</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="umur" class="input"></td>
                        </tr>
                        <tr>
                            <td>berat</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="berat" class="input"></td>
                        <tr>
                            <td>Tinggi</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="tinggi" class="input"></td>
                        </tr>

                        <td><input type="submit" value="hitung" class="simpan"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>

<script type="text/javascript" src="assets/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="assets/style.js"></script>

</html>
<?php
if (isset($_POST['umur'])) {
    if (!empty($_POST['umur']) && !empty($_POST['berat']) && !empty($_POST['tinggi'])) {
        $umur = $_POST['umur'];
        $berat = $_POST['berat'];
        $tinggi = $_POST['tinggi'];
        $kalori = "0.0215183";
        $jk = $_POST['jk'];
        switch ($jk) {
            case 'laki':
                $jk = 66 + (13.7 * $berat) + (5 * $tinggi) - (6.8 * $umur);
                echo "<p class='list-dresea'>diperkirakan harian metabolisme anda adalah $jk</p>";
                break;
            case 'perempuan':
                $jk = 655 + (9.6 * $berat) + (5 * $tinggi) - (6.8 * $umur);
                echo "<p>diperkirakan harian metabolisme anda adalah $jk</p>";
                break;
        }
    }
}
