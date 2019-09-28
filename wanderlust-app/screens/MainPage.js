import React from 'react';
import wanderlustApi from '../api/WanderlustApi'
import { withTheme } from 'styled-components';
import MapView from 'react-native-maps';

export class MainPage extends React.Component {

    state = {
        locations: undefined,
        markers: undefined,
        coords: undefined,
        coordsLoaded: false,
    };

    constructor(props) {
        super(props);
        this.map = null;
        this.state.locations = wanderlustApi.createTour();
    }

    componentDidMount() {
        if (!this.state.coordsLoaded) {
            (async () => {
                let newCoords = await wanderlustApi.getDirections(this.state.locations);
                this.setState({ coords: newCoords, coordsLoaded: true })
            })();
        }
    }

    render() {
        this.state.markers = this.getMarkers(this.state.locations);
        return (
            <MapView style={{ flex: 1 }} ref={ref => { this.map = ref; }} onLayout={() => this.updateMapCamera(false)}>
                {this.state.markers}
                {this.state.coordsLoaded &&
                    <MapView.Polyline coordinates={this.state.coords.flat()} strokeWidth={2} strokeColor="blue" />}
            </MapView>
        );
    }

    getMarkers(locations) {
        return locations.map(item =>
            <MapView.Marker
                key={item.id}
                coordinate={{
                    latitude: item.lat,
                    longitude: item.lng
                }}
                title={item.title}
                description={item.description}
            />
        );
    }

    updateMapCamera(animate) {
        this.map.fitToCoordinates(this.getLatLngs(this.state.locations), { edgePadding: { top: 20, right: 20, bottom: 337, left: 20 }, animated: animate })
    }

    getLatLngs(locations) {
        return locations.map(item => { return { latitude: item.lat, longitude: item.lng } });
    }
}

export default withTheme(MainPage);
