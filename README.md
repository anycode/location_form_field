# form_map_field

Map Input Field for Flutter Forms. Used to select coordinates on a map.

## Setup

This package makes use of [google_maps_flutter](https://pub.dev/packages/google_maps_flutter), for platform specific setup use the guidelines
specified [here](https://pub.dev/packages/google_maps_flutter#-readme-tab-)

## Usage
```dart
LocationFormField(
  name: 'Coordinates',
  decoration: InputDecoration(labelText: 'Select Location'),
  markerIconColor: Colors.red,
  markerIconSize: 50,
  onChanged: (val){
    print(val);
  },
),
```
