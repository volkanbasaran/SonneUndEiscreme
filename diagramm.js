	window.onload = function() {

	var straw = +$("#strawAmount").text();
	var him = +$("#himAmount").text();
	var choc = +$("#chocAmount").text();
	var van = +$("#vanAmount").text();

	var opt = {
		animationEnabled: true,
		title: {
			text: "Anteile der Geschmackswahlen"
		},
		data: [{
			type: "doughnut",
			innerRadius: "40%",
			showInLegend: false,
			legendText: "{label}",
			indexLabel: "{label}: #percent%",
			dataPoints: [
				{ label: "Schokolade", y: choc },
				{ label: "Erdbeere", y: straw },
				{ label: "Vanille", y: van },
				{ label: "Himbeere", y: him }
			]
		}]
	};
	$("#pieContainer").CanvasJSChart(opt);


		var yes = +$("#yesAmount").text();
		var no = +$("#noAmount").text();
		var options = {
				animationEnabled: true,
				title: {
					text: "Scheint morgen die Sonne?"
				},
				axisY: {
					title: "Anteile (in %)",
					suffix: "%",
					includeZero: true
				},
				data: [{
					type: "column",
					yValueFormatString: "#,##0.0#"%"",
					dataPoints: [
						{ label: "Ja", y: yes },	
						{ label: "Nein", y: no }
					]
				}]
			};
			$("#chartContainer").CanvasJSChart(options);

	}
