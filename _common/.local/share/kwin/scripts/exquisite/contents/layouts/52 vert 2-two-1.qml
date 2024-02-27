import QtQuick 2.6

Item {
    property string name: "One Half, Two, One Quarter"
    property var windows: [
        {
            row: 0,
            rowSpan: 12, // "columns wide"
            column: 0,
            columnSpan: 6 // "rows high"
        },
        {
            row: 6,
            rowSpan: 6, // "columns wide"
            column: 0,
            columnSpan: 3 // "rows high"
        },
        {
            row: 6,
            rowSpan: 6, // "columns wide"
            column: 6,
            columnSpan: 3 // "rows high"
        },
        {
            row: 9,
            rowSpan: 12, // "columns wide"
            column: 0,
            columnSpan: 3 // "rows high"
        }
    ]
}
