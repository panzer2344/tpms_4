import QtQuick 2.2
import QtQuick.LocalStorage 2.13

Item {
    property var db;

    Component.onCompleted: {
        db = LocalStorage.openDatabaseSync("myDB", "1.0");
        createTable();
    }

    function createTable() {
        db.transaction(function(tx) {
            tx.executeSql("create table if not exists notes (
                id integer primary key autoincrement,
                text text not null);");
        });
    }

    function getAll(callback) {
        db.readTransaction(function(tx) {
            var result = tx.executeSql("select * from notes;");
            callback(results.rows);
        });
    }

    function insertNote(text) {
        db.transaction(function(tx) {
            tx.executeSql("insert into notes(text) values(?)", [text]);
        });
    }

    function updateNote(id, text) {
        db.transaction(function(tx) {
            tx.executeSql("update notes set text = ? where id = ?", [text, id]);
        });
    }

    function deleteNote(id) {
        db.transaction(function(tx) {
            tx.executeSql("delete from notes where id = ?", [id]);
        });
    }
}
