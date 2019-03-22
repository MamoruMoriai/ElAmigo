window.onload = function() {

var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: gon.data,
        datasets: [{
            label: '# of Votes',
            data: gon.data,
            borderColor: 'rgba(150, 250, 150, 1)',
            borderWidth: 5
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
};
