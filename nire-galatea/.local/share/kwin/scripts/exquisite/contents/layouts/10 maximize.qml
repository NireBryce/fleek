import QtQuick 2.6

Item {
    property string name: "Maximise"
    property var windows: [
        { 
            row: 0, 
            rowSpan: 12, // "columns wide"
            column: 0,
            columnSpan: 12 // "rows high"
        }
    ]
}

