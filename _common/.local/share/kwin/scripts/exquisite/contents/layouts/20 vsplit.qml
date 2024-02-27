import QtQuick 2.6

Item {
    property string name: "Two Vertical Split"
    property var windows: [
        { // top
            row: 0, 
            rowSpan: 6, // "columns wide"
            column: 0,
            columnSpan: 12 // "rows high"
        },
        { // bottom
            row: 0,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 12 // "rows high"
        }
    ]
}

