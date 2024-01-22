import QtQuick 2.5

Item {
    property string name: "1:2:1 Triple Split"
    property var windows: [
        { // left
            row: 0,
            rowSpan: 3, // "columns wide"
            column: 0,
            columnSpan: 12 // "rows high"
        },
        {  // middle top
            row: 0,
            rowSpan: 6, // "columns wide"
            column: 3,
            columnSpan: 6 // "rows high"
        },
        {  // middle bottom
            row: 6,
            rowSpan: 6, // "columns wide"
            column: 3,
            columnSpan: 6 // "rows high"
        },
        { // bottom
            row: 0,
            rowSpan: 3, // "columns wide"
            column: 9,
            columnSpan: 12 // "rows high"
        }
    ]
}
