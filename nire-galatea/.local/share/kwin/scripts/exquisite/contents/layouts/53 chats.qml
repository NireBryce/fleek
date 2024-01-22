import QtQuick 2.6

Item {
    property string name: "chat split"
    property var windows: [
        { // upper left
            row: 0,
            rowSpan: 6,  // "columns wide"
            column: 0,
            columnSpan: 6  // "rows high"
        },
        { // upper right
            row: 0,     
            rowSpan: 6,  // "columns wide"
            column: 6, 
            columnSpan: 6    // "rows high"
        },
        { // lower left, left half
            row: 6,
            rowSpan: 3, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        },
        {
            row: 6,
            rowSpan: 3, // "columns wide"
            column: 3,
            columnSpan: 6 // "rows high"
        },
        {
            row: 6,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 6 // "rows high"
        }
    ]
}
