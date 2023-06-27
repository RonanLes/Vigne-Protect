document.addEventListener("DOMContentLoaded", function() {
    fetch("/pagevigne/api.php")
    .then(r => r.json())
    .then( data => {
        let datesTableau = [];
        let C0101Tableau = [];
        let C0102Tableau = [];
        let C0103Tableau = [];
        let C0201Tableau = [];
        let C0202Tableau = [];
        let C0203Tableau = [];
        let C0301Tableau = [];
        let C0302Tableau = [];
        let C0303Tableau = [];
        let C0401Tableau = [];
        let C0402Tableau = [];
        let C0403Tableau = [];

        data.forEach(function( row ) {
            datesTableau.push(row["Date"]);
            C0101Tableau.push(row["C0101"]);
            C0102Tableau.push(row["C0102"]);
            C0103Tableau.push(row["C0103"]);
            C0201Tableau.push(row["C0201"]);
            C0202Tableau.push(row["C0202"]);
            C0203Tableau.push(row["C0203"]);
            C0301Tableau.push(row["C0301"]);
            C0302Tableau.push(row["C0302"]);
            C0303Tableau.push(row["C0303"]);
            C0401Tableau.push(row["C0401"]);
            C0402Tableau.push(row["C0402"]);
            C0403Tableau.push(row["C0403"]);
        });

       /* new Chart(
            document.querySelector("canvas#chart"),
            {
                type: "line",
                data: {
                    labels: datesTableau,
                    datasets: [
                        {
                            label: "Module 1 Capteur 1",
                            data: C0101Tableau
                        },
                        {
                            label: "Module 1 Capteur 2",
                            data: C0102Tableau
                        },
                        {
                            label: "Module 1 Capteur 3",
                            data: C0103Tableau
                        },
                        {
                            label: "Module 2 Capteur 1",
                            data: C0201Tableau
                        },
                        {
                            label: "Module 2 Capteur 2",
                            data: C0202Tableau
                        },
                        {
                            label: "Module 2 Capteur 3",
                            data: C0203Tableau
                        },
                        {
                            label: "Module 3 Capteur 1",
                            data: C0301Tableau
                        },
                        {
                            label: "Module 3 Capteur 2",
                            data: C0302Tableau
                        },
                        {
                            label: "Module 3 Capteur 3",
                            data: C0303Tableau
                        },
                        {
                            label: "Module 4 Capteur 1",
                            data: C0401Tableau
                        },
                        {
                            label: "Module 4 Capteur 2",
                            data: C0402Tableau
                        },
                        {
                            label: "Module 4 Capteur 3",
                            data: C0403Tableau
                        },


                    ]
                }
            }
           
            )*/ 
            new Chart(
                document.querySelector("canvas#chart1"),
                {
                    type: "line",
                    data: 
                    {
                        labels: datesTableau,
                        datasets: [
                            {
                                label: "Module 1 Capteur 1",
                                data: C0101Tableau
                            },
                            {
                                label: "Module 2 Capteur 1",
                                data: C0201Tableau
                            },
                            {
                                label: "Module 3 Capteur 1",
                                data: C0301Tableau
                            },
                            {
                                label: "Module 4 Capteur 1",
                                data: C0401Tableau
                            },
    
                        ]
                    }
                }
            )
            new Chart(
                document.querySelector("canvas#chart2"),
                {
                    type: "line",
                    data: {
                        labels: datesTableau,
                        datasets: [
                            {
                                label: "Module 1 Capteur 2",
                                data: C0102Tableau
                            },
                            {
                                label: "Module 2 Capteur 2",
                                data: C0202Tableau
                            },
                            {
                                label: "Module 3 Capteur 2",
                                data: C0302Tableau
                            },
                            {
                                label: "Module 4 Capteur 2",
                                data: C0402Tableau
                            },
    
    
                        ]
                    }
                }
            )
            new Chart(
                document.querySelector("canvas#chart3"),
                {
                    type: "line",
                    data: {
                        labels: datesTableau,
                        datasets: [
                            
                            {
                                label: "Module 1 Capteur 3",
                                data: C0103Tableau
                            },           
                            {
                                label: "Module 2 Capteur 3",
                                data: C0203Tableau
                            },
                            {
                                label: "Module 3 Capteur 3",
                                data: C0303Tableau
                            },
                            {
                                label: "Module 4 Capteur 3",
                                data: C0403Tableau
                            },
    
    
                        ]
                    }
                }
            )
        }
    );
});
