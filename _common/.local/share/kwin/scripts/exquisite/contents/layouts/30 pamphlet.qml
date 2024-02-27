import QtQuick 2.5

Item {
    property string name: "Three Vertical Split"
    property var windows: [
        { // X-1-1 left
            row: 0,
            rowSpan: 4, // "columns wide"
            column: 0,
            columnSpan: 12 // "rows high"
        },
        { // 1-X-1 middle
            row: 0,
            rowSpan: 4, // "columns wide"
            column: 4,
            columnSpan: 12 // "rows high"
        },
        { // 1-1-X right
            row: 0,
            rowSpan: 4, // "columns wide"
            column: 8,
            columnSpan: 12 // "rows high"
        }
    ]
}
