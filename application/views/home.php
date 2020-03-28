<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biodata Mahasiswa</title>
</head>
<body>
    <h2>Selamat Datang <?=$nama?></h2>
    <h4>Biodata Mahasiswa</h4>
        <table>
            <tr>
                <th>NIM</th>
                <td><?=$nim?></td>
            </tr>
            <tr>
                <th>Nama</th>
                <td><?=$nama?></td>
            </tr>
            <tr>
                <th>Program Studi</th>
                <td><?=$program_studi?></td>
            </tr>
            <tr>
                <th>Jurusan</th>
                <td><?=$jurusan?></td>
            </tr>
            <tr>
                <th>Fakultas</th>
                <td><?=$fakultas?></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><?=$email?></td>
            </tr>
            <tr>
                <th>Ranggal Lahir</th>
                <td><?=$tanggal_lahir?></td>
            </tr>
            <tr>
                <th>Jenis Kelamin</th>
                <td><?=$jenis_kelamin?></td>
            </tr>
        </table>
</body>
</html>