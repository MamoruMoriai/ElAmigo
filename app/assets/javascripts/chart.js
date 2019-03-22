window.onload = function() {

//伝票別売上
var ctx = document.getElementById("sale_price").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: gon.date,
        datasets: [{
            label: '伝票別売上',
            data: gon.sale_price,
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

//日別売上
var ctx = document.getElementById("date_price").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: gon.days,
        datasets: [{
            label: '日別売上',
            data: gon.date_price,
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

//時間帯別売上
var ctx = document.getElementById("time_price").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: gon.time,
        datasets: [{
            label: '時間帯別売上',
            data: gon.time_price,
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

//テーブル別売上
var ctx = document.getElementById("table_price").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: gon.table,
        datasets: [{
            label: 'テーブル別売上',
            data: gon.table_price,
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
