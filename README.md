# Archetypische Rekomposition

Dieses Projekt setzt Archetypische Rekomposition exemplarisch um. Es liegen Vergleichs-Beispiele bei.

## Voraussetzungen
Unterstützte Betriebssysteme:
Aktuelle Linux Distributionen (getestet: Ubuntu 22.04, https://ubuntu.com/download/desktop)

Benötigte Software:
Git (https://git-scm.com/downloads oder Paket git)
CMake Version 3.20 oder höher (https://cmake.org/download/ oder Paket cmake)
Clang 15 (Siehe Elternordner)
perf (unterschiedliche Pakete je nach Linux Distribution, unter Ubuntu 22.04 linux-tools-generic)
valgrind (https://valgrind.org/downloads/current.html oder Paket valgrind)
Boost.TypeErasure (https://www.boost.org/users/history/version_1_74_0.html oder Paket libboost-type-erasure-dev (empfohlen))

Pakte unter Ubuntu 22.04 mit
```
> sudo apt-get install [PAKETNAME]
```
installieren.

Benötigte Projekte von Drittanbietern:
´´´
> cd ..
> git clone https://github.com/ldionne/dyno.git
> git clone https://github.com/google/cpp-from-the-sky-down.git
```
Sicherstellen, dass Boost-Header gefunden werden können (automatisch bei Installation über Paket)

# Durchführung der Evaluation

Für das Erstellen der einzelnen Projekte folgende Befehle in diesem Ordner ausführen:
```
> mkdir build
> cmake -S ./ -B ./build  --toolchain=CMake/Linux-Clang.cmake -G="Ninja"
> cmake --build ./build
```

Für das Ausführen der Evaluation folgende Befehle ausführen.
```
> cd Evaluation
> sudo bash evaluation.sh
```

Das Programm perf benötigt standardmäßig erweiterte Rechte.
Sollte dies unerwünscht sein, sowohl Zeile 2 als auch Zeile 18 in evaluation.sh mit # auskommentieren, dann folgenden Befehl ausführen.
```
> bash evaluation.sh
```
