import QtQuick 2.6

Item {
    property string name: "One Up Two Down"
    property var windows: [
        { // top
            row: 0,
            rowSpan: 12, // "columns wide"
            column: 0,
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

