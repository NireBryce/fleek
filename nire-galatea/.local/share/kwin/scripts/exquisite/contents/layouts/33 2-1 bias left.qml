import QtQuick 2.6

Item {
    property string name: "One Left Two Right"
    property var windows: [
        { // left full
            row: 0,
            rowSpan: 6, // "columns wide"
            column: 0,
            columnSpan: 12 // "rows high"
        },
        { // right top
            row: 0,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 6 // "rows high"
        },
        { // right bottom
            row: 6,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 6 // "rows high"
        }
    ]
}
