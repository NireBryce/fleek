import QtQuick 2.6

Item {
    property string name: "Quad positioning"
    property var windows: [
        { // center quad
            row: 3, 
            rowSpan: 6, // "columns wide"
            column: 3,
            columnSpan: 6 // "rows high"
        },
        // right
        { // left top corner
            row: 0, 
            rowSpan: 3, // "columns wide"
            column: 0,
            columnSpan: 3 // "rows high"
        },
        { // left top right
            row: 0, 
            rowSpan: 3, // "columns wide"
            column: 3,
            columnSpan: 3 // "rows high"
        },
        { // left top bottom
            row: 3, 
            rowSpan: 3, // "columns wide"
            column: 0,
            columnSpan: 3 // "rows high"
        },
        { // left bottom top
            row: 6, 
            rowSpan: 3, // "columns wide"
            column: 0,
            columnSpan: 3 // "rows high"
        },
        { // left bottom corner
            row: 9, 
            rowSpan: 3, // "columns wide"
            column: 0,
            columnSpan: 3 // "rows high"
        },
        { // left bottom right
            row: 9, 
            rowSpan: 3, // "columns wide"
            column: 3,
            columnSpan: 3 // "rows high"
        },
        // right
        { // right-top-left
            row: 0, 
            rowSpan: 3, // "columns wide"
            column: 6,
            columnSpan: 3 // "rows high"
        },
        { // right top corner
            row: 0, 
            rowSpan: 3, // "columns wide"
            column: 9,
            columnSpan: 3 // "rows high"
        },
        { // right top bottom
            row: 3, 
            rowSpan: 3, // "columns wide"
            column: 9,
            columnSpan: 3 // "rows high"
        },
        { // right bottom top
            row: 6, 
            rowSpan: 3, // "columns wide"
            column: 9,
            columnSpan: 3 // "rows high"
        },
        { // right bottom corner
            row: 9, 
            rowSpan: 3, // "columns wide"
            column: 9,
            columnSpan: 3 // "rows high"
        },
        { // right bottom left
            row: 9, 
            rowSpan: 3, // "columns wide"
            column: 6,
            columnSpan: 3 // "rows high"
        },
    ]
}

