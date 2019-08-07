<?php

    $link = mysqli_connect("localhost", "adminuser", "N%q03d3j", "db2");

    if(mysqli_connect_error()){
    	die("Es gab einen Fehler beim Verbinden zur Datenbank");
    }

	if(array_key_exists("anwenden", $_POST)){
		
           $sonne      = ($_POST['sonne'] == 'Ja') ? '1' : '0';
		   $erdbeere   = isset($_POST['erd'])      ? '1' : '0';
		   $himbeere   = isset($_POST['him'])      ? '1' : '0';
		   $schokolade = isset($_POST['schok'])    ? '1' : '0';
		   $vanille    = isset($_POST['van'])      ? '1' : '0';

		   $query = "INSERT INTO auswahl (sonne,
										  erdbeere,  
										  himbeere,  
										  schokolade,
										  vanille) VALUES ($sonne,     
														   $erdbeere,  
														   $himbeere,  
														   $schokolade,
														   $vanille)";

    		mysqli_query($link, $query);
    }

		$queryYes = mysqli_query($link, "SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM auswahl) AS anzahl FROM auswahl WHERE sonne=1");
		$yesAmount = mysqli_fetch_assoc($queryYes);
	
		$queryNo = mysqli_query($link, "SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM auswahl) AS anzahl FROM auswahl WHERE sonne=0");
		$noAmount = mysqli_fetch_assoc($queryNo);

		$queryStraw = mysqli_query($link, "SELECT COUNT(*) AS anzahl FROM auswahl WHERE erdbeere=1");
		$strawAmount = mysqli_fetch_assoc($queryStraw);

		$queryHim = mysqli_query($link, "SELECT COUNT(*) AS anzahl FROM auswahl WHERE himbeere=1");
		$himAmount = mysqli_fetch_assoc($queryHim);

		$queryChoc = mysqli_query($link, "SELECT COUNT(*) AS anzahl FROM auswahl WHERE schokolade=1");
		$chocAmount = mysqli_fetch_assoc($queryChoc);

		$queryVan = mysqli_query($link, "SELECT COUNT(*) AS anzahl FROM auswahl WHERE vanille=1");
		$vanAmount = mysqli_fetch_assoc($queryVan);
	
?>

<html>
<title>Lasst uns Eis essen</title>

<head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style>
    body {
        padding-top: 50px;
    }
</style>

<body class="container">

    <form method="post">
        <h4>Scheint morgen die Sonne?</h4>
        <input name="sonne" type="radio" value="Ja">Ja<br>
        <input name="sonne" type="radio" value="Nein">Nein
        <br>
        <br>
        <h4>Welches Eis isst du am liebsten?</h4>
        <input type="checkbox" name="erd" value="erdbeere">Erdbeere<br>
        <input type="checkbox" name="him" value="himbeere">Himbeere<br>
        <input type="checkbox" name="schok" value="schokolade">Schokolode<br>
        <input type="checkbox" name="van" value="vanille">Vanille<br>
        <br>
        <input id="anwendenButton" name="anwenden" class="btn btn-info" type="submit" value="Anwenden">
    </form>
	<button type="button" id="showCharts" class="btn btn-warning">Charts Anzeigen</button>
	<br>
	<br>
	<br>
		<div id="charts" class="row" style="display: none; ">
			<div id="chartContainer" class="col-md-6" style="height: 370px; width: 50%;"></div>
			<br>
			<div id="pieContainer" class="col-md-6" style="height: 370px; width: 50%;"></div>
		</div>
	<br>
	<div id="results" style="display: none; ">
		<p id="yesAmount"><?php echo $yesAmount['anzahl']; ?></p>
		<p id="noAmount"><?php echo $noAmount['anzahl']; ?></p>
		<p id="strawAmount"><?php echo $strawAmount['anzahl']; ?></p>
		<p id="himAmount"><?php echo $himAmount['anzahl']; ?></p>
		<p id="chocAmount"><?php echo $chocAmount['anzahl']; ?></p>  
		<p id="vanAmount"><?php echo $vanAmount['anzahl']; ?></p>
	</div>
	<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
	<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
	<script src="diagramm.js"></script>
	<script type="text/javascript">		
		$("#showCharts").click(function() {
			$("#charts").show();
		});
	</script>
</body>

</html>
