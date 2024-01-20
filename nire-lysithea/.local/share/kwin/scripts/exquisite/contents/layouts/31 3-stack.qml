import QtQuick 2.6

Item {
    property string name: "One Half, Two, One Quarter"
    property var windows: [
        { // top
            row: 0,
            rowSpan: 12, // "columns wide"
            column: 0,
            columnSpan: 4  // "rows high"
        },
        { // middle
            row: 4,
            rowSpan: 12, // "columns wide"
            column: 0,
            columnSpan: 4   // "rows high"
        },
        { // bottom
            row: 8,
            rowSpan: 12, // "columns wide"
            column: 0,
            columnSpan: 4 // "rows high"
        }
    ]
}
