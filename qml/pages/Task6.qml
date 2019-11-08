import QtQuick 2.2
import Sailfish.Silica 1.0

Page {
    Dao {id: dao}

    SilicaListView {
        model: ListModel { id: notesListModel }
        delegate: ListItem {
            Label {
                text: text
            }
        }
    }

    function selectNotes() {
        notesListModel.clear();
        dao.getAll(function(notes){
            for(var i = 0; i < notes.length; i++) {
                var note = notes.item(i);
                notesListModel.append({id: note.id, text: note.text});
            }
        });
    }

    Component.onCompleted: selectNotes()
}
