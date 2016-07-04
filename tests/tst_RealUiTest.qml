/**
 * Tests that operate on the UI level. They expect window to be shown. All the mouseClick-like test utilities can be used then
 */
import QtQuick 2.0
import QtTest 1.0
import Sailfish.Silica 1.0

//import "../src/qml/pages"
import "../harbour-sailelfcloud/qml/pages"


// Putting TestCase into the full app structure to test UI interactions and probably page transitions too
ApplicationWindow {
    id: wholeApp

    property var elfCloud: ElfCloudAdapterMock { }
    property var helpers: HelpersMock { }

    property var pageStack: Item {
        function push() {
            console.log("pushMock")
        }

        function replace() {
            console.log("replaceMock")
        }
    }

    initialPage: MainPage {
        id: mainPage
    }

    TestCase {
        name: "test "

        // You want see anything yet at this moment, but UI is actually constructed already and e.g. mouseClick will work
        // Painting happens later, you can set up timer to wait for it (painting happens some 50-100ms after ApplicationWindow's
        // applicationActive becomes true), then you might be able to
        // see graphics update when test is clicking through buttons, though you might need to yield control from time to time then
        when: windowShown

        function test_menuAction() {
        }
    }

}

