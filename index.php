<!DOCTYPE html>
<html>

<body>

    <!-- Lorsque vous cliquez sur le bouton, la page est rechargée et le code PHP est exécuté -->
    <form method="post">
        <input type="submit" name="runBatch" value="nice">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['runBatch'])) {
        //chemin relatif batch file
        $cheminFichierBatch = 'batchfiles\outil_reparation_image_systeme.bat';

        // Exécute le fichier batch
        //exec($cheminFichierBatch);
        system($cheminFichierBatch);
        //shell_exec($cheminFichierBatch);
    }
    ?>

</body>

</html>