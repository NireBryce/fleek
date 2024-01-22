import QtQuick 2.5

Item {
    property string name: "Left Sidebar"
    property var windows: [
        {
            row: 0, // sidebar
            rowSpan: 3, // "columns wide"
            column: 0,
            columnSpan: 12 // "rows high"
        },
        {
            row: 0, // main
            rowSpan: 9, // "columns wide"
            column: 3,
            columnSpan: 12 // "rows high"
        }
    ]
}
