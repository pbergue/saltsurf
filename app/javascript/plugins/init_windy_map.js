const initWindy = () => {
  const windyBox = document.getElementById("windy");
  if (!windyBox) return;

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

      const { map, picker, utils, broadcast } = windyAPI;
      // .map is instance of Leaflet map
      const mapElement = document.getElementById('windy');
      const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach( (marker) => {
        const popup = L.popup()
          .setLatLng([marker.lat, marker.lng])
          .setContent(marker.name);
        L.marker([marker.lat, marker.lng]).addTo(map).bindPopup(popup);
      });

      picker.on('pickerOpened', latLon => {
        // picker has been opened at latLon coords
        console.log(latLon);

        const { lat, lon, values, overlay } = picker.getParams();
        // -> 48.4, 14.3, [ U,V, ], 'wind'
        console.log(lat, lon, values, overlay);

        const windObject = utils.wind2obj(values);
        console.log(windObject);
      });

      picker.on('pickerMoved', latLon => {
          // picker was dragged by user to latLon coords
          console.log(latLon);
      });

      picker.on('pickerClosed', () => {
          // picker was closed
      });

      // Wait since wather is rendered
      broadcast.once('redrawFinished', () => {
          picker.open({ lat: 48.15706763424467, lon: -2.846427066797555 });
          // Opening of a picker (async)
      });

    });
  });
};

export { initWindy };
