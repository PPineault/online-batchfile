<!DOCTYPE html>
<html>

<body>

    <!-- Lorsque vous cliquez sur le bouton, la page est rechargée et le code PHP est exécuté -->
    <form method="post">
        <input type="submit" name="runBatch" value="nice">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['runBatch'])) {
        // Remplacez 'chemin/vers/votre/fichier.bat' par le chemin de votre fichier batch
        $cheminFichierBatch = 'batchfiles\test.bat';

        // Exécute le fichier batch
        exec($cheminFichierBatch);
    }
    ?>

</body>

</html>