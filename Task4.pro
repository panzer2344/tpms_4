# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = Task4

CONFIG += sailfishapp

SOURCES += src/Task4.cpp

DISTFILES += qml/Task4.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/Task4.changes.in \
    rpm/Task4.changes.run.in \
    rpm/Task4.spec \
    rpm/Task4.yaml \
    translations/*.ts \
    Task4.desktop \
    qml/pages/Task1.qml \
    qml/pages/Task2.qml \
    qml/pages/Task3.qml \
    qml/pages/Task04.qml \
    qml/pages/Task5.qml \
    qml/pages/Task6.qml \
    qml/pages/Dao.qml \
    qml/pages/Task7.qml \
    qml/pages/Task8.qml

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/Task4-de.ts
