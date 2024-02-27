import QtQuick 2.6

Item {
    property string name: "3-stack bias bottom"
    property var windows: [
        { // top 
            row: 0,
            rowSpan: 12, // "columns wide"
            column: 0, 
            columnSpan: 3 // "rows high"
        },
        { // middle
            row: 3,
            rowSpan: 12,  // "columns wide"
            column: 0,
            columnSpan: 3 // "rows high"
        },
        { // bottom half
            row: 6,
            rowSpan: 12,  // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        }
    ]
}
