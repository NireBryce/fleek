import QtQuick 2.6

Item {
    property string name: "Two Horizontal Split"
    property var windows: [
        { // left
            row: 0,
            rowSpan: 12, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        },
        { // right
            row: 6,
            rowSpan: 12, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        }
    ]
}
