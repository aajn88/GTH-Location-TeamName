import Polyline from '@mapbox/polyline';

class Location {
    constructor(id, title, description, lat, lng) {
        this.id = id
        this.title = title
        this.description = description
        this.lat = lat
        this.lng = lng
    }
}

class WanderlustApi {
    createTour() {
        var locations = [];
        var i = 0;
        locations.push(new Location(i, 'London Eye', 'This is the London Eye', 51.5031, -0.1196));
        locations.push(new Location(++i, 'Big Ben', 'This is Big Ben', 51.5008, -0.1246));
        locations.push(new Location(++i, 'Random ' + i, 'This is the London Eye', 51.5012, -0.1156));
        locations.push(new Location(++i, 'Random ' + i, 'This is the London Eye', 51.5082, -0.1216));
        locations.push(new Location(++i, 'Random ' + i, 'This is the London Eye', 51.5102, -0.1246));
        return locations;
    }

    async getDirections(locations) {
        var finalPath = [];
        for (let i = 0; i < locations.length - 1; i++) {
            let origin = locations[i];
            let destination = locations[i + 1];
            let coords = await this.getCoords(origin, destination);
            finalPath = [...finalPath, coords];
        }
        return finalPath;
    }

    async getCoords(origin, destination) {
        let resp = await fetch(`https://maps.googleapis.com/maps/api/directions/json?origin=${origin.lat},${origin.lng}&destination=${destination.lat},${destination.lng}&mode=walking&key=AIzaSyBA8sfxygtNonDcAupDGjrKVgUdajw2ouM`);
        let respJson = await resp.json();
        let points = Polyline.decode(respJson.routes[0].overview_polyline.points);
        return points.map((point, index) => {
            return { latitude: point[0], longitude: point[1] };
        });
    }
}

export default wanderlustApi = new WanderlustApi()
