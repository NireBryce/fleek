import QtQuick 2.6

Item {
    property string name: "3x2"
    property var windows: [
        {
            row: 0,
            rowSpan: 6, // "columns wide"
            column: 0,
            columnSpan: 4 // "rows high"
        },
        {
            row: 0,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 4    // "rows high"
        },
        {
            row: 4,
            rowSpan: 6, // "columns wide"
            column: 0,
            columnSpan: 4 // "rows high"
        },
        {
            row: 4,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 4 // "rows high"
        },
        {
            row: 8,
            rowSpan: 6, // "columns wide"
            column: 0,
            columnSpan: 4 // "rows high"
        },
        {
            row: 8,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 4 // "rows high"
        }
    ]
}
