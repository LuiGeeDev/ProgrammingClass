const API_KEY = '7e894a2c970923032fb7a77ad196a872';
const btn = document.getElementById('button');
const w1 = document.getElementById('w1');
const w2 = document.getElementById('w2');
const w3 = document.getElementById('w3');
const w4 = document.getElementById('w4');
const w5 = document.getElementById('w5');

const weatherDiv = [w1, w2, w3, w4, w5];

function printWeather(weathers) {
  weathers.forEach((day, index) => {
    const { temp } = day.main;
    const desc = day.weather[0].description;
    weatherDiv[index].innerHTML = `${temp}℃ <br> ${desc}`;
  });
}

function fetchWeather(latitude, longitude) {
  fetch(
    `https://api.openweathermap.org/data/2.5/forecast?lat=${latitude}&lon=${longitude}&appid=${API_KEY}&units=metric`,
  )
    .then(response => response.json())
    .then((json) => {
      const weatherList = json.list;
      const weathersAtNoon = weatherList.filter(
        weather => weather.dt_txt.split(' ')[1].slice(0, 2) === '12',
      );
      printWeather(weathersAtNoon);
    });
}

function getWeather() {
  navigator.geolocation.getCurrentPosition((position) => {
    const { latitude } = position.coords;
    const { longitude } = position.coords;
    fetchWeather(latitude, longitude);
  });
}

function init() {
  btn.addEventListener('click', getWeather);
}

init();
