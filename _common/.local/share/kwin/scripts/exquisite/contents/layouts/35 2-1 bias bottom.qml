import QtQuick 2.6

Item {
    property string name: "Two Up One Down"
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
        { // bottom
            row: 6,
            rowSpan: 12, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        }
    ]
}

