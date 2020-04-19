ReadMe
=====

Inoffizielles LaTeX Template für Datenstrukturen und Algorithmen Abgaben an der Universität Stuttgart. Das Template kann auch für Abgaben anderer Module genutzt werden.
Weitere Informationen unter: https://github.com/spethso/Abgabentemplate

Quick Start
-----------
Falls du git nicht verwenden möchtest, downloade einfach: https://github.com/spethso/Abgabentemplate

Empfohlene LaTeX Umgebungen
---------------------------
* Offline: Rechtschreibprüfung ist verfügbar in [TeXnicCenter](http://www.texniccenter.org/). 
* Bitte downloade [Sumatra PDF](https://www.sumatrapdfreader.org/free-pdf-reader.html) als Viewer und verbinde die beiden.
  Beachte dabei die [Anleitung](http://tex.stackexchange.com/questions/116981/how-to-configure-texniccenter-2-0-with-sumatra-2013-2016-version) für die Konfiguration.
  Verwende [JabRef](http://jabref.sf.net) um deine Literatur zu verwalten.
* Online: [overleaf](https://www.overleaf.com/). Ebenfalls mit [git support](https://www.overleaf.com/blog/195-new-collaborate-online-and-offline-with-overleaf-and-git-beta#.VYFC2UZejkU).

Eine komplette Liste an LaTeX Editoren findest du unter [LaTeX Editors/IDEs question on TeX.SX](http://tex.stackexchange.com/questions/339/latex-editors-ides).

### Empfohlene Einstellungen von MiKTeX
* Installiere MiKTeX für: "Only for: `username`"
* Installiere MiKTeX nach: `C:\MiKTeX`. Dies ermöglicht das Durchsuchen nach der Dokumentation in `C:\MiKTeX29\doc\latex`
* Installiere fehlende Pakete "on the fly": `Yes`

LaTeX Compilation
=================
Das Template kann durch Verwendung normaler LaTeX Befehle kompiliert werden.
Deine LaTeX Umgebung (wie [TeXnicCenter](http://www.texniccenter.org/)) sollte sich um das kompilieren kümmern.
Sollte sich bei der Paketinstallation ein Dialog öffnen, setze den entsprechenden Haken, dass die Pakete "on the fly" installiert werden.

Falls du das Template mit der Kommandozeile kompilieren möchtest, kannst du folgende Tools verwenden.

Automatisches kompilieren unter Verwendung eines makefiles
--------------------------------
Für alle, die [cygwin](http://www.cygwin.com/) installiert haben oder eine Linux Maschine laufen lassen, bietet dieses Template ein einfaches LaTeX makefile an.
Solltest du die Hauptdatei umbenennen, ändere den Dateinamen ebenfalls im makefile.
Um das makefile aufzurufen, führe folgenden Befehl in deiner Kommandozeile aus.

    make

Beim nach dem Ausführen des makefiles werden alle temporären Dateien gelöscht und die "ExXX_LastnameOfMembers.pdf" geöffnet.

Alternativen:
* https://github.com/akerbos/ltx2any
* https://github.com/shiblon/latex-makefile
* https://github.com/ransford/pdflatex-makefile
* https://github.com/brotchie/latex-rubber-makefile
* [LaTeX-Mk](http://latex-mk.sourceforge.net/)
* Ebenfalls http://stackoverflow.com/questions/1240037/recommended-build-system-for-latex und http://tex.stackexchange.com/questions/40738/how-to-properly-make-a-latex-project

Automatisches kompilieren unter Verwendung der build.bat (Windows)
--------------------------------
Für alle Windows Nutzer, die [cygwin](http://www.cygwin.com/) installiert haben, bietet dieses Template eine einfache build.bat an.
Die build.bat Datei ruft dabei das makefile auf.
Zuvor wird jedoch die alte ExXX_LastnameOfMembers.pdf gelöscht.
Nach dem Ausführen der build.bat wird die erzeugte ExXX_LastnameOfMembers.pdf geöffnet.
Solltest du die Hauptdatei umbenennen, ändere den Dateinamen ebenfalls im makefile.

Automatisches kompilieren unter Verwendung von Latexmk
------------------------------------------------------
Für alle, die [Latexmk](https://www.ctan.org/pkg/latexmk/?lang=de) haben, bietet dieses Template eine einfache .latexmkrc an.
Falls der Name der Hauptdatei geändert wurde, muss der Name in der .latexmkrc angepasst werden.
Wenn die Muster gleich bleibt ('Ex' + Übungszahl + '_' + Nachnamen der Teammitglieder), können die beiden Variablen $ExerciseNumber und $LastnameOfMembers jeweils genutzt werden.
Andernfalls muss die Datei in @default_files angepasst werden.
Zum kompilieren einfach folgenden Befehl ausführen:

    latexmk

Latexmk bietet den Vorteil, dass es die Anzahl der Kompilierdurchgänge optimiert.
Somit wird nicht jedes Mal dreimal kompiliert, sondern einmal, wenn es ausreicht.

Zum Löschen der temporären Dateien kann der folgende Befehl genutzt werden:

    latexmk -c

Zum Löschen aller erzeugten Datein (alles, was durch LaTeX erzeugt wird, auch .pdf Dateien) kann folgender Befehl genutzt werden:

    latexmk -C

Beinhaltete Dateien und Ordner
==============================
* ExXX (Ordner mit den relevanten Dateien für ein Übungsblatt)
  * ExXX_LastnameOfMembers.tex
    * Hauptdatei
    * Füge hier den Inhalt ein, oder binde weitere Dateien ein
    * Weitere Dateien können mit `\input` eingebunden werden
  * ExXX_LastnameOfMembers.tcp: TeXnicCenter Projekt um das kompilieren mit mehreren Dateien zu erleichtern.
  * makefile: Das makefile
  * build.bat: Erleichterung für Windows, falls make ausgeführt werden kann
  * .latexmkrc: Diese Datei stellt die Konfiguration für Latexmk bereit.
* README.md: Diese Datei
* LICENCE: Die Lizenz Datei
* figures/: Ordner der alle Bilder beinhaltet.
  Durch Verwendung von PDFLaTeX ist es möglich PDFs, JPGs, PNGs, ... zu verwenden. Es ist empfehlenswert PDFs zu nutzen, um "smooth scaling" zu ermöglichen.
* .gitignore: Diese Datei verhindert dass temporäre Dateien in git commits landen.
* styles: Ordner für die Befehle, Pakete, Formatierungen und Header
  * FormatAndHeader.tex: Datei mit den Formatierungen und den Headereinstellungen.
  * Packages.tex: Datei für das Einbinden von Paketen