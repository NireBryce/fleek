import QtQuick 2.6

Item {
    property string name: "3x2"
    property var windows: [
        {
            row: 0,
            rowSpan: 4, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        },
        {
            row: 0,
            rowSpan: 4,
            column: 4,
            columnSpan: 6 // "rows high"
        },
        {
            row: 0,
            rowSpan: 4, // "columns wide"
            column: 8,
            columnSpan: 6 // "rows high"
        },
        {
            row: 6,
            rowSpan: 4, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        },
        {
            row: 6,
            rowSpan: 4, // "columns wide"
            column: 4,
            columnSpan: 6 // "rows high"
        },
        {
            row: 6,
            rowSpan: 4, // "columns wide"
            column: 8,
            columnSpan: 6 // "rows high"
        }
    ]
}
