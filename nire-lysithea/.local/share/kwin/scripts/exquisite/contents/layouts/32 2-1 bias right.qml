import QtQuick 2.6

Item {
    property string name: "Two Left One Right"
    property var windows: [
        { // left top
            row: 0,
            rowSpan: 6, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        },
        { // left bottom
            row: 6,
            rowSpan: 6, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        },
        { // right full
            row: 0,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 12 // "rows high"
        }
    ]
}
