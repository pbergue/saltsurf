const initWindy = () => {
 const windyBox = document.getElementById("windy");
  const options = {
    // Required: API key
      key: windyBox.dataset.windyMapApiKey, // REPLACE WITH YOUR KEY !!!
    // Put additional console output
    verbose: true,

    // Optional: Initial state of the map
    lat: 48.15706763424467,
    lon: -2.846427066797555,
    zoom: 7,
  };

  const mapArea = document.getElementById("windy-tab");
  mapArea.addEventListener('click', (event) => {
    // Initialize Windy API
    windyInit(options, windyAPI => {
      // windyAPI is ready, and contain 'map', 'store',
      // 'picker' and other usefull stuff

      const { map } = windyAPI;
      // .map is instance of Leaflet map
      const mapElement = document.getElementById('windy');
      const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach( (marker) => {
        const popup = L.popup()
          .setLatLng([marker.lat, marker.lng])
          .setContent(marker.name);
        L.marker([marker.lat, marker.lng]).addTo(map).bindPopup(popup);
      });
    });
  });
};

export { initWindy };
