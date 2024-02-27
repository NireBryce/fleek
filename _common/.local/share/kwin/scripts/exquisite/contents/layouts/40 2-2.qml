import QtQuick 2.5

Item {
    property string name: "Four Tiled"
    property var windows: [
        { // top left
            row: 0,
            rowSpan: 6, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        },
        { // top right
            row: 0,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 6 // "rows high"
        },
        { // bottom left
            row: 6,
            rowSpan: 6, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        },
        { // bottom right
            row: 6,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 6 // "rows high"
        }
    ]
}
