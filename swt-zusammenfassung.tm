<TeXmacs|1.0.7.10>

<style|generic>

<\body>
  <section|Konfigurationsverwaltung>

  Mechanismus zur <strong|Identifizierung, Lenkung> und
  <strong|Rückverfolgung> der Versionen jedes Software-Elements.

  <\description>
    <item*|Software-Konfiguration>Benannte, formal freigegebene Menge von
    Software-Elementen mit jeweiligen Versionsangaben, die aufeinander
    abgestimmt sind.

    Bestandteile: Programmtext, Dokumentation, Konfigurationsdateien,
    Werkzeuge

    <item*|Software-Element>Jeder identifizierbare Bestandteil des
    Produkts/der Produktlinie.

    <item*|Version>Ausprägung eines Software-Elements zu einem bestimmten
    Zeitpunkt.

    <item*|Revisionen>Zeitlich nacheinander liegende Versionen.

    Versionsverwaltung mit <em|Vorwärts-> oder <em|Rückwärts-Deltas>
    (Unterschiede zwischen Versionen)

    <item*|Variante>Variante einer Version z.B. mit unterschiedlichen
    Datenstrukturen/Algorithmen (<math|\<rightarrow\>> Branches)

    <item*|Einbuchen (Check-in), Ausbuchen (Check-out)>Bei letzterem sind zu
    unterscheiden <strong|striktes Ausbuchen> [mit Sperren] und
    <strong|optimistisches Ausbuchen.>
  </description>

  <section|Einführung>

  <\description>
    <item*|Softwaretechnik>Technologische und organisatorische Disziplin zur
    systematischen Entwicklung und Pflege von Softwaresystemen, die
    spezifizierte funktionale und nichtfunktionale Attribute erfüllen.

    <\itemize-minus>
      <item>Die <em|Pflege> von Softwaresystemen kann bis zu 2/3 der
      Gesamtkosten ausmachen!
    </itemize-minus>

    <item*|Software>Alle zum Betrieb eines Computersystems notwendigen
    \Rnichtapparativen`` Bestandteile, die <em|keine reinen Daten> sind, also
    z.B.

    <\description>
      <item*|Programme>Quellprogramme, Zwischencode, Objektcode,
      Bibliotheken, Frameworks, Installationsprogramme

      <item*|Zugehörige Daten>Konfigurationsdateien, Sprachdateien,
      Initialisierungsdaten

      <item*|Dokumentation>Anforderungsdokumentation, Testprotokolle,
      Anwendungsbeispiele, Handbücher, FAQ
    </description>

    <strong|Charakteristiken:> Immaterielles Produkt, kein Verschleiss (aber
    scheinbare Alterung), nicht durch physikalische Gesetze begrenzt,
    <em|nicht> leichter zu ändern als ein physikalisches Produkt gleicher
    Komplexität, schneller und leichter zu verteilen als physikalische
    Produkte, schwer zu \Rvermessen``.

    <item*|Funktionale Attribute>Spezifizieren die Funktion der Software.

    <item*|Nichtfunktionale Attribute/Qualitätsattribute>Spezifizieren,
    <em|wie gut> die Software ihre Funktion erfüllt
    (Zuverlässigkeit/Robustheit/Verfügbarkeit, Geschwindigkeit,
    Benutzerfreundlichkeit, Sicherheit, Änderbarkeit, Dokumentationsgrad)

    <item*|Anforderungen an marktreife Software>Funktionstreue \|
    Qualitätstreue \| Termintreue \| Kostentreue
  </description>

  <strong|Wasserfallmodell> mit 6 Phasen [und dazugehörigen Dokumenten]:

  <\enumerate-numeric>
    <item>Planung [Machbarkeitsstudie, Lastenheft, Projektplan,
    Projektkalkulation]

    <item>Definition [Pflichtenheft, Objektmodell, dynamisches Modell,
    UI-Konzept, Handbuch]

    <item>Entwurf [Entwurfsdokumente, Modulführer]

    <item>Implementierung [Komponenten, Dokumentation, Testeinrichtung]

    <item>Testen [Fertiges System]

    <item>Abnahme, Einsatz und Wartung
  </enumerate-numeric>

  <section|Planungsphase (Anforderungserhebung)>

  <strong|Ziel:> Beschreiben des zu entwickelnden Systems in Worten des
  Kunden, Überprüfung der Durchführbarkeit.

  Anforderungsspezifikation verwendet natürliche Sprache; Analysemodelle
  verwenden formale Notationen (z.B. UML)

  Techniken zur Anforderungserhebung:

  <\description>
    <item*|Fragebögen>

    <item*|Interviews>

    <item*|Aufgaben- und Dokumentanalyse>

    <item*|Szenarien>Beschreibung der konkreten Verwendung eines Systems
    (anhand eines Beispiels) in Textform aus Sicht eines Benutzers; Folge von
    Aktionen und Ereignissen. Kann Texte, Bilder, Videos und Ablaufpläne
    enthalten.

    <item*|Anwendungsfälle>

    <\description>
      <item*|Akteur>Rolle eines Benutzers oder eines anderen Systems, das mit
      dem geplanten System interagiert.

      <item*|Anwendungsfall>Klasse von Funktionen, welche das System
      anbietet. Wichtige Bestandteile sind:

      <\itemize-minus>
        <item>Teilnehmende Akteure

        <item>Eingangsaktionen

        <item>Ereignisfluss

        <item>Ausgangsaktionen

        <item>Ausnahmen

        <item>Nichtfunktionale Anforderungen
      </itemize-minus>

      <item*|Anwendungsfalldiagramm>Menge aller Anwendungsfälle, die zusammen
      die gesamte Funktionalität des Systems beschreiben.
    </description>
  </description>

  Anforderungen: Funktionale und nichtfunktionale Anforderungen (siehe oben);
  <strong|Einschränkungen:> bezüglich Implementierung [Sprache etc.],
  Schnittstellen, Einsatzumgebung, Lieferumfang, Rechtliches [Lizenzen,
  Zertifikate, Datenschutz]

  Anforderungen: <em|korrekt, vollständig,> untereinander <em|konsistent,
  eindeutig, realisierbar, verfolgbar> [jeder Systemfunktion müssen die
  dadurch erfüllten Anforderungen zuzuordnen sein].

  <subsection|Lastenheft>

  <\enumerate-numeric>
    <item>Zielbestimmung [Was soll das Produkt?]

    <item>Produkteinsatz [Zweck, Zielgruppe]

    <item>Funktionale Anforderungen [<verbatim|/FA42/>: XXX]

    <item>Produktdaten [z.B. zu speichernde Daten]

    <item>Nichtfunktionale Anforderungen

    <item>Systemmodelle

    <\enumerate-alpha>
      <item>Szenarien

      <item>Anwendungsfälle
    </enumerate-alpha>

    <item>Glossar
  </enumerate-numeric>

  <subsection|Durchführbarkeitsuntersuchung>

  <\itemize-minus>
    <item>Fachliche Durchführbarkeit [überhaupt realisierbar? Nötige Hardware
    zum Entwickeln?]

    <item>Alternative Lösungsvorschläge

    <item>Personelle Durchführbarkeit

    <item>Risikountersuchung

    <item>Ökonomische Durchführbarkeit [Aufwands- und Terminschätzung,
    Wirtschaftlichkeit]

    <item>Rechtliche Gesichtspunkte [Datenschutz, Zertifizierung, Standards]
  </itemize-minus>

  <section|Definitionsphase>

  Ziel: Erstellung des Pflichtenhefts

  <subsection|Pflichtenheft>

  <\itemize-minus>
    <item>Verfeinerung des Lastenhefts

    <item>Definiert/modelliert das System <em|so vollständig und exakt,> dass
    die Implementierung ohne Nachfrage oder Unklarkeiten möglich ist.

    <item>Beschreibt nur, <em|was> zu implementieren ist, nicht <em|wie>
    (keine Algorithmen/Datenstrukturen)

    <item>Liefert ein <em|Modell> des zu implementierenden Systems

    <\description>
      <item*|Funktionales Modell (aus dem Lastenheft)>Szenarien und
      Anwendungsfalldiagramm

      <item*|Objektmodell (statisches Modell)>Klassen- und Objektdiagramm

      <item*|Dynamisches Modell>Sequenzdiagramm, Zustandsdiagramm,
      Aktivitätsdiagramm
    </description>
  </itemize-minus>

  <subsection|Objektorientierung>

  <\description>
    <item*|Objekt>Ein erkennbares und eindeutig von anderen Objekten
    unterscheidbares Element.

    <item*|Klasse>Eine (prinzipiell willkürliche) Kategori über der Menge
    aller Objekte.

    <item*|Exemplar/Instanz>Ein konkretes Element aus einer bestimmten Klasse

    <item*|Attribut>Eine Eigenschaft, die für alle Exemplare einer Klasse
    definiert und vorhanden ist.

    <item*|Objektidentität>Existenz eines Objekts ist unabhängig von den
    Werten seiner Attribute

    <\itemize-minus>
      <item>Gleichheit 0. Stufe: dasselbe Objekt, identisch

      <item>Gleichheit 1. Stufe: Gleichheit 0. Stufe oder paarweise
      Gleichheit 0. Stufe in allen Attributen

      <item>Gleichheit 2. Stufe: Gleichheit 1. Stufe oder paarweise
      Gleichheit 1. Stufe in allen Attributen

      <item>etc.
    </itemize-minus>

    <item*|Zustand>Gleicher Zustand <math|\<rightarrow\>> Gleiches Verhalten
    aus Aussensicht in einem bestimmten (Aufruf-)Kontext

    <item*|Kapselungsprinzip>Der Zustand ist von aussen sichtbar, wird aber
    nur im Inneren des Objekts verwaltet

    <item*|Substitutionsprinzip (Ist-ein-Semantik)>Jede Instanz einer
    Unterklasse muss genauso verwendbar sein wie eine Instanz ihrer
    Oberklasse. Unterklassen <em|spezialisieren> die Oberklasse also.

    <item*|Methodensignatur>Methodenname + Rückgabetyp + Parameterliste

    <item*|Signaturvererbung/Implementierungsvererbung>Bei der
    Signaturvererbung wird nur die Methodensignatur vererbt, bei der
    Implementierungsvererbung zusätzlich die Implementierung aus der
    Oberklasse.

    <item*|Überschreiben>Neuimplementieren der geerbten Methode unter
    Beibehaltung der Signatur

    <item*|Überladen>Mehrere Methoden mit gleichen Namen, aber
    unterschiedlicher Signatur [reines Komfortmerkmal, hat nichts mit
    OO/Vererbung zu tun

    <item*|Polymorphie>Vielgestaltigkeit

    <\description>
      <item*|Statische Polymorphie>Überladen

      <item*|Dynamische Polymorphie>Es wird diejenige Methode mit der
      angegebenen Signatur aufgerufen, die in der Vererbungshierarchie am
      speziellsten ist.
    </description>

    <item*|Schnittstelle>Definition einer Menge <em|abstrakter> Methoden, die
    von den implementierenden Klassen angeboten werden müssen.

    <item*|Varianz>Modifikation eines Parametertyps bei einer überschriebenen
    Methode

    <\description>
      <item*|Kovarianz>In der überschriebenen Methode wird eine
      Spezialisierung des Parametertyps verwendet <math|\<rightarrow\>>
      Rückgabetyp

      <item*|Kontravarianz>In der überschriebenen Methode wird eine
      Verallgemeinerung des Parametertyps verwendet <math|\<rightarrow\>>
      Parameter

      <item*|Invarianz>Keine Typmodifikation (<math|\<rightarrow\>>
      Parameter, die gleichzeitig Ein- und Ausgabeparameter sind)
    </description>
  </description>

  \SUML-Klassendiagramme\T

  <subsection|UML>

  <subsection|Objektmodellierung>

  Vorgehensweise bei der Objektmodellierung:

  <\description>
    <item*|1. Finden der Kandidaten>Reale Objekte, Formularanalyse
    (Bottom-Up), Dokumentanalyse (Top-Down)

    <small-table|<block|<tformat|<table|<row|<cell|<strong|Wortart>>|<cell|<strong|Modellelement>>|<cell|<strong|Beispiel>>>|<row|<cell|Substantiv>|<cell|Klasse>|<cell|Auto,
    Hund>>|<row|<cell|Name>|<cell|Exemplar einer
    Klasse>|<cell|Peter>>|<row|<cell|Intransitives
    Verb>|<cell|Botschaft>|<cell|laufen, schlafen>>|<row|<cell|Transitives
    Verb>|<cell|Assoziation>|<cell|<em|etw.> essen, <em|jmd.>
    lieben>>|<row|<cell|Verb \Rsein``>|<cell|Vererbung>|<cell|ist eine (Art
    von) <math|\<ldots\>>>>|<row|<cell|Verb
    \Rhaben``>|<cell|Aggregation>|<cell|hat ein
    <math|\<ldots\>>>>|<row|<cell|Modalverb>|<cell|Zusicherung>|<cell|müssen,
    sollen>>|<row|<cell|Adjektiv>|<cell|Attribut>|<cell|3 Jahre
    alt>>>>>|Linguistische Analyse (nach Abbott) als erste Annäherung>

    Noch keine Vererbungsstrukturen bilden!

    <item*|2. Finden von Assoziationen>Dauerhafte Beziehungen zwischen
    Objekten, die

    <\enumerate-numeric>
      <item>über einen <em|längeren Zeitraum> existieren

      <item><em|problemrelevant> sind

      <item><em|unabhängig> von allen nicht beteiligten Klassen sind.
    </enumerate-numeric>

    Kandidaten: Verben in der Problembeschreibung

    Aggregationen: Rangordnung/semantischer Zusammenhang (\Rbesteht aus``,
    \Rist Teil von``)

    <item*|3. Finden von Attributen>Attribute müssen problemrelevant sein und
    an der Benutzeroberfläche zu sehen sein [sonst Implementierungsdetails]

    <item*|4. Erstellen von Vererbungsstrukturen>Substitutionsprinzip
    beachten! Im objektorientierten Analysemodell gibt es in der Regel
    <em|viele Assoziationen,> aber <em|wenig Vererbung.>

    <item*|5. Dynamisches Model erstellen>Quelle: Szenarien, Anwendungsfälle
    -- Ergebnis: Sequenz- und Aktivitätsdiagramm. Dient dazu, Operationen der
    Klasse zu identifizieren, Botschaftsfluss durch das System zu definieren,
    Vollständigkeit und Korrektheit des statischen Systems zu prüfen und als
    Grundlage für Systemtests.

    <item*|6. Objektlebenszyklus bestimmen>

    <item*|7. Operationen festlegen>Aus Sequenzdiagramm und Lebenszyklus
    übernehmen, so hoch wie möglich in der Vererbungshierarchie eintragen.

    <item*|8. Subsysteme erstellen>Klassen mit gemeinsamem Bezug in Subsystem
    zusammenfassen. Innerhalb eines Subsystem sollte <em|starke Kopplung>
    herrschen, zwischen den Subsystemen dagegen <em|schwache Kopplung>.

    Beachten: Vererbungsstrukturen nur vertikal schneiden, keine
    Aggregationen durchtrennen, möglichst wenige Assoziationen in der
    Schnittstelle zwischen Subsystemen.

    Sinnvolle Grösse: ca. 10--15 Klassen oder eine DIN-A4-Seite.
  </description>

  <section|Entwurfsphase (Designphase)>

  Entwerfen = \RProgrammieren im Grossen``

  <strong|Aufgabe:> Aus den gegebenen <em|Anforderungen> (Definitionsphase)
  eine Softwarearchitektur entwickeln, die alle Anforderungen erfüllt:

  <\itemize-minus>
    <item>Gliederung eines Softwaresystems in Komponenten (Module/Klassen)
    und Subsysteme (Pakete/Bibliotheken) <math|\<rightarrow\>>
    Bestandshierarchie

    <item>Spezifikation der Komponenten und Subsysteme

    <item>Aufstellen der Benutztrelation zwischen Komponenten und Subsystemen

    <item>Optional: Feinentwurf (Datenstrukturen, Algorithmen, Pseudocode),
    Zuweisen der Komponenten und Subsysteme zu Hardware-Einheiten (bei
    verteilten Systemen)
  </itemize-minus>

  <subsection|Modularer Entwurf>

  Gliederung in externen Entwurf (E) und internen Entwurf (I)

  <\description>
    <item*|E1: Modulführer/Grobentwurf>Gliederung in Komponenten und
    Subsysteme, Beschreibung der Funktion jedes Moduls, eventuell
    Entwurfsmuster wie Schichten- oder Fliessbandarchitektur

    Beschreibt für jedes Modul: Was ist das Geheimnis/die
    Entwurfsentscheidung dieses Moduls? Was ist die Funktion des Moduls?

    Beschreibt für jedes Subsystem: Gliederung in Module und andere
    Subsysteme (Bestandshierarchie)

    <item*|E2: Modulschnittstellen>Genaue Beschreibung der von jedem Modul
    zur Verfügung gestellten Elemente

    Ergebnis: \RBlack-Box``-Beschreibung jedes Moduls: Öffentliche
    Programmelemente, Ein-/Ausgabeformate, Methodensignaturen, Beschreibung
    des Effekts der Unterprogramme, Fehlerbehandlung

    <item*|I1: Benutztrelation>Beschreibt, wie Module und Subsysteme einander
    benutzen. Sollte ein azyklischer gerichteter Graph sein
    <math|\<rightarrow\>> Aufbau und Testen inkrementell

    <item*|I2: Feinentwurf>Siehe oben
  </description>

  Definition eines Moduls:

  <\description>
    <item*|Modul>Menge von Programmelementen (Typen, Klassen, Konstanten,
    Prozeduren etc.), die nach dem Geheimnisprinzip/Kapselungsprinzip
    gemeinsam entworfen und geändert werden.

    <item*|Geheimnisprinzip>Jedes Modul verbirgt eine wichtige
    Entwurfsentscheidung hinter einer wohldefinierten Schnittstelle, die sich
    bei Änderungen dieser Entscheidung nicht mit ändert.

    Beispiele für Entwurfsentscheidungen/Geheimnisse der Module:
    Datenstrukturen und deren Implementierung,
    maschinennahe/betriebssystemnahe Details, Ein-/Ausgabeformate, GUI, Texte
  </description>

  Anforderungen an ein Modul:

  <\itemize-minus>
    <item>Entwurf, Implementierung, Testen <em|unabhängig> von der späteren
    genauen Nutzung

    <item>Implementierung möglich, ohne dass <em|Implementierungsdetails>
    anderer Module bekannt sind, und Benutzung ohne Kenntnis des inneren
    Aufbaus möglich <em|(Kapselung)>

    <item>Starke Kohäsion innerhalb des Moduls, geringere Kohäsion zwischen
    Modulen

    <item>Sollte einfach genug sein, um für sich voll verstanden werden zu
    können.
  </itemize-minus>

  <subsubsection|Benutztrelation>

  Definition: Komponente <verbatim|A> <strong|benutzt> Komponente
  <verbatim|B> genau dann, wenn <verbatim|A> für den korrekten Ablauf die
  <em|Verfügbarkeit> einer korrekten Implementierung von <verbatim|B>
  erfordert.

  Beispiel: Delegation an <verbatim|B>, Zugriff auf Variable von
  <verbatim|B>; Aufruf, der korrekte Implementierung von <verbatim|B>
  erfordert, Anlegen einer Instanz eines Typs aus <verbatim|B>.

  Benutztrelation kann Halb- oder Totalordnung sein. Zyklenfreie
  Benutztrelation heisst <strong|Benutzthierarchie>. [Bei Rückrufen/Callbacks
  von <verbatim|B> nach <verbatim|A> ist die Hierarchie trotzdem zyklenfrei]

  <subsection|Objektorientierter Entwurf>

  Erweiterung des modularen Entwurfs, aber Flexibilisierung durch das
  <em|Geheimnisprinzip>.

  Zusätzliche Möglichkeiten durch Objektorientierung <math|\<rightarrow\>>
  Entwurfsmuster!

  <subsubsection|Externer Entwurf>

  Statt Modulführer: <strong|Paket- und Klassenführer> [UML-Klassendiagramm,
  UML-Paketdiagramm]

  Statt Modulschnittstellen: Schnittstellen der Klassen, abstrakte Klassen,
  Interfaces

  <subsubsection|Interner Entwurf>

  Benutztrelation: auf der Ebene von Paketen

  Feinentwurf: wie beim modularen Entwurf

  <subsection|Architekturstile>

  <\description>
    <item*|Abstrakte Maschine/Virtuelle Maschine>Menge von Softwarebefehlen,
    die auf einer darunterliegenden virtuellen oder realen Maschine aufbauen
    und diese ganz oder teilweise verdecken können.

    Beispiel: Programmiersprache, Betriebssystem, GUI-Bibliothek, Java-VM,
    API

    <item*|Schichtenarchitektur>Gliederung einer Softwarearchitektur in
    hierarchisch geordnete Schichten. Eine Schicht hat eine wohldefinierte
    Schnittstelle, nutzt nur die <em|darunterliegenden> Schichten und stellt
    ihre Dienste darüberliegenden Schichten zur Verfügung

    Benutztrelation zwischen Schichten: linear, baumartig oder DAG;
    innerhalb: beliebig

    <em|Intransparente Schichtenarchitektur:> Schicht kann nur auf direkt
    darunter liegende Schicht zugreifen; <em|Transparente
    Schichtenarchitektur:> alle darunterliegenden Schichten

    <em|Vorteile:> Strukturierung in Abstraktionsebenen [Schichten
    <math|<wide|=|^>> abstrakte Maschinen], Entwurfsfreiheit innerhalb der
    Schichten, gute Wiederverwendbarkeit/Änderbarkeit/Portabilität.

    <em|Nachteile:> Effizienzverlust bei intransparenter
    Schichtenarchitektur, Schichten nicht immer klar definierbar.

    <em|Speziell:> <strong|3-Schichten-Architektur> [Benutzerschnittstelle,
    Anwendungskern, Datenbank]; wenn die Schichten auf unterschiedlichen
    Rechnern laufen: <strong|3-stufige Architektur>

    <strong|4-Schichten-Architektur> [Benutzerschnittstellen,
    Anwendungskerne, gemeinsame Grundfunktionen, Kern]

    <em|Beispiele:> Betriebssystem [Prozess-, Speicher-, Dateiverwaltung,
    GUI, Anwendungen], Webdienste [Browser, Webserver, Anwendungsserver,
    Datenbank]

    <em|Siehe auch:> Entwurfsmuster Fassade

    <item*|Klient/Dienstgeber (client/server)>Ein oder mehrere Dienstgeber
    bieten Dienste für Klienten an. Klient muss die Schnittstelle des
    Dienstgebers kennen, aber nicht umgekehrt.

    Klient und Dienstgeber können auf unterschiedlichen Rechnern laufen

    <em|Beispiel:> Frontend/Backend bei DB-Systemen, FTP-Client/Server

    <item*|Partnernetze (peer-to-peer)>Verallgemeinerung von Client/Server:
    Alle Subsysteme sind gleichberechtigt (sowohl Klient als auch
    Dienstgeber); Partner laufen auf unterschiedlichen Rechnern.

    <em|Stichworte:> Dezentralisierung, Selbstorganisation, Autonomie der
    Partner, Zuverlässigkeit, Verfügbarkeit

    <em|Beispiel:> Bittorrent, TCP/IP, DNS

    <item*|Datenablage (repository)>Subsysteme interagieren über eine
    zentrale Datenstruktur, die Datenablage. Datenablage sorgt für Konsistenz
    und ordnet gleichzeitige Zugriffe

    <em|Beispiel:> IDE [Übersetzer, Debugger, Editor greifen auf
    Strukturbaum/Symboltabelle zu]

    <item*|Model/View/Controller>Trennung von Daten [Modell] und deren
    Darstellung [View/Sicht]; Interaktion zwischen Sicht und Modell durch
    Controller

    <em|Unterschied zur 3-Schichten-Architektur:> diese ist hierarchisch, MVC
    nicht (\RDreiecksbeziehung`` Modell <math|\<leftrightarrow\>> Steuerung
    <math|\<leftrightarrow\>> Sicht)

    <image|mvc.png|389px|147px||>

    <item*|Fliessband (pipeline)>Jede Stufe ist eigenständiger
    Prozess/Thread; Daten werden zwischen den Stufen weitergereicht (evtl.
    mit Puffer, um Geschwindigkeitsschwankungen auszugleichen)

    <em|Vorteil:> Gleichzeitige Ausführung bei Parallelrechnern (dabei
    sollten die einzelnen Stufen etwa gleich lange brauchen)

    <em|Beispiel:> Pipes auf der Unix-Shell, Videocodierung

    <em|Anwendbarkeit:> Verarbeitung von Datenströmen

    <item*|Rahmenarchitektur (framework)>Bietet ein (nahezu) vollständiges
    Programm, das durch Ausfüllen geplanter \RLücken`` oder
    Erweiterungspunkten erweitert werden kann (mittels Einschüben/Plug-ins)

    <em|Prinzip:> Hollywood-Prinzip (\RDon't call us -- we'll call you``)

    <em|Beispiel:> Eclipse

    <em|Oft verwendete Entwurfsmuster:> Strategie, Fabrikmethode, abstrakte
    Fabrik, Schablonenmethode
  </description>

  <subsection|Entwurfsmuster>

  Familien von Lösungen für ein Software-Entwurfsproblem

  <em|Vorteile:> Vereinfachte Kommunikation [Bereitstellung eines
  Vokabulars], Erfassung von Konzepten [Dokumentation des Entwurfs],
  Dokumentation und Förderung des Standes der Kunst, Verbesserung der
  Code-Qualität und -Struktur

  <subsubsection|Entkopplungsmuster>

  Teilen ein System in <em|mehrere Einheiten,> sodass einzelne Einheiten
  <em|unabhängig voneinander> erstellt, verändert, ausgetauscht und
  wiederverwendet werden können.

  <\description>
    <item*|Adapter (adapter, wrapper)>Passt die Schnittstelle einer Klasse an
    eine andere Schnittstelle an <math|\<rightarrow\>> Zusammenarbeit
    inkompatibler Klassen

    <em|Anwendung:> Wiederverwendung einer existierenden Klasse

    <image|adapter.png|33%|33%||>

    <item*|Beobachter (observer)>Definiert eine <verbatim|1:n>-Abhängigkeit
    zwischen Objekten, sodass die Zustandsänderung eines Objekts dazu führt,
    dass alle abhängigen Objekte benachrichtigt und automatisch aktualisiert
    werden.

    Beobachter benutzen das Subjekt (i.S. der Benutzthierarchie)

    <em|Anwendbarkeit:> Benachrichtigung von Objekten, ohne etwas über diese
    zu wissen

    <em|Nachteile:> Aufwand der Aktualisierung nicht bekannt (Kaskade von
    Aktualisierungen), zunächst keine Information, <em|was> geändert wurde.

    <image|beobachter1.png|40%|40%||>

    <image|beobachter2.png|40%|40%||>

    <item*|Brücke>Entkoppelt <em|Abstraktion> von ihrer <em|Implementierung,>
    sodass beide unabhängig voneinander variiert werden können.

    <em|Anwendbarkeit:> Vermeidung dauerhafter Verbindung zwischen
    Abstraktion und ihrer Implementierung, Erweiterbarkeit sowohl von
    Abstraktion als auch Implementierung durch Unterklassenbildung, Nutzung
    einer Implementierung von mehreren Objekten aus.

    <image|bruecke.png|40%|40%||>

    <item*|Iterator (iterator, enumerator)>Ermöglicht den <em|sequentiellen
    Zugriff> auf Elemente eines zusammengesetzten Objekts, ohne die interne
    Repräsentation offenzulegen und bietet eine <em|einheitliche
    Schnittstelle> zur Traversierung unterschiedlicher Strukturen (polymorphe
    Iteration)

    Iterator ist <em|robust,> d.h. jeder Iterator enthält eine eigene
    \RLaufvariable``.

    <em|Beispiel:> Java-Interface <verbatim|Iterator>

    <image|iterator.png|40%|40%||>

    <item*|Stellvertreter (proxy)>Kontrolliert den Zugriff auf ein Objekt.
    Varianten:

    <\description>
      <item*|Protokollierender Stellvertreter>Zählt Referenzen auf das Objekt
      oder andere Zugriffsinformationen.

      <item*|Puffernder Stellvertreter (caching proxy) / Platzhalter (virtual
      proxy)>Lädt ein teures Objekt erst dann, wenn es wirklich benötigt wird
      (verzögertes Laden) oder verwaltet einen Pool von Objekten.

      <item*|Fernzugriffsvertreter (remote proxy)>Lokaler Stellvertreter für
      ein Objekt in einem anderen Adressraum.

      <item*|Schutzwand (firewall)>Kontrolliert Zugriff auf das
      Originalobjekt.

      <item*|Synchronisierungsvertreter>Kontrolliert gleichzeitigen Zugriff
      auf ein Objekt.

      <item*|Dekorierer>Auch eine Art Stellvertreter (siehe unten)
    </description>

    <image|stellvertreter.png|40%|40%||>

    <item*|Dekorierer>Fügt dynamisch neue Funktionalität zu einem Objekt
    hinzu, Alternative zur Vererbung. [Dekorierer vs. Stellvertreter siehe S.
    66]

    <image|dekorierer.png|40%|40%||>

    <item*|Vermittler>Definiert ein Objekt, welches das Zusammenspiel
    mehrerer Objekte kapselt.

    Förderung von <em|loser Kopplung>

    <em|Anwendbarkeit:> Wenn komplexe Interaktionen zwischen Objekten
    vorliegen und Wiederverwendbarkeit erschweren.

    <em|Beispiel:> Zusammengesetzte GUI-Komponenten

    <image|vermittler.png|40%|40%||>
  </description>

  <subsubsection|Varianten-Muster>

  <em|Gemeinsamkeiten> verwandter Einheiten werden <em|herausgezogen> und an
  einer einzigen Stelle beschrieben <math|\<rightarrow\>> Einheitlichkeit,
  Vermeidung von Redundanz

  <\description>
    <item*|Abstrakte Fabrik>Schnittstelle zum Erzeugen einer <em|Familie
    verwandter Objekte,> ohne konkrete Klassen zu benennen.

    <em|Anwendbarkeit:> Wenn eine Familie von aufeinander abgestimmten
    Objekten verwendet werden muss.

    <image|abstraktefabrik.png|40%|40%||>

    <item*|Besucher>Kapselt eine <em|Operation> auf Elementen einer Struktur
    als ein <em|Objekt.>

    <em|Zweck:> Definition einer neuen Operation auf Klassen, ohne diese
    Klassen zu verändern.

    <image|besucher.png|40%|40%||>

    <item*|Fabrikmethode>Definiert eine Klassenschnittstelle mit Operationen
    zum Erzeugen eines Objekts, aber lässt <em|Unterklassen entscheiden,> von
    <em|welcher Klasse> das zu erzeugende Objekt ist.

    <em|Anwendung:> Klasse kennt Objekte, die sie erzeugt, nicht im Voraus;
    Delegation an Hilfs-Unterklassen.

    Fabrikmethode <math|<wide|=|^>> Einschubmethode bei einer
    Schablonenmethode für Objekterzeugung.

    <image|fabrikmethode.png|40%|40%||>

    <item*|Kompositum>Fügt Objekte zu <em|Baumstrukturen> zusammen, um
    Hierarchien zu repräsentieren. Einheitliche Behandlung von Objekten wie
    Aggregaten.

    <em|Beispiel:> <verbatim|Component>-Klasse in Java

    <image|kompositum.png|40%|40%||>

    <image|kompositum2.png|40%|40%||>

    <item*|Schablonenmethode>Definiert das <em|Skelett eines Algorithmus> in
    einer abstrakten Klasse, wobei einzelne Schritte an die Unterklassen
    delegiert werden. Unterklassen können einzelne Schritte des Algorithmus
    verändern, nicht aber seine Struktur.

    Schritte werden auch <em|Einschubmethoden> oder <em|Hooks> genannt.

    <em|Zweck:> Festlegen der Struktur eines Algorithmus, Herausziehen
    gemeinsamen Verhaltens.

    <em|Siehe auch:> Architekturmuster \RFramework``

    <image|schablonenmethode.png|40%|40%||>

    <item*|Strategie>Definiert eine <em|Familie von Algorithmen,> kapselt sie
    und macht sie austauschbar.

    <em|Zweck:> Variation des Algorithmus unabhängig vom nutzenden Klienten.

    <em|Anwendbarkeit:> Viele verwandte Klassen, die sich nur in ihrem
    Verhalten unterscheiden; unterschiedliche Verhaltensweisen für eine
    Klasse.

    <image|strategie.png|40%|40%||>
  </description>

  <subsubsection|Zustandshandhabungsmuster>

  Bearbeiten den <em|Zustand> von Objekten, unabhängig von deren Zweck.

  <\description>
    <item*|Einzelstück>Es existiert genau <em|ein Exemplar> einer Klasse, das
    einen globalen Zugriffspunkt besitzt. Die Klasse selbst verwaltet dieses
    Exemplar und fängt die Befehle zum Erzeugen neuer Objekte ab.

    <image|einzelstueck.png|40%|40%||>

    <item*|Fliegengewicht>Objekte kleinster Granularität werden <em|gemeinsam
    genutzt,> um grosse Mengen von ihnen <em|effizient speichern> zu können.

    <em|Innerer/intrinsischer Zustand:> für alle Exemplare gemeinsam, wird in
    der Fliegengewicht-Instanz gespeichert.

    <em|Äusserer/extrinsischer Zustand:> für jedes Exemplar unterschiedlich,
    wird in externer Datenstruktur gespeichert.

    <image|fliegengewicht.png|40%|40%||>

    <item*|Memento><em|Externalisiert> eine Momentaufnahme des <em|internen
    Zustands> eines Objekts (aber ohne die Implementierungsdetails
    offenzulegen), sodass das Objekt später in diesen Zustand zurückversetzt
    werden kann.

    <em|Beispiele:> Speicherung von Spielständen, naiver Undo-Mechanismus.

    <image|memento.png|40%|40%||>

    <item*|Prototyp>Objekterzeugung durch Verwendung und <em|Klonen> eines
    typischen Exemplars.

    <em|Beispiel:> <verbatim|Object.clone()> erstellt in Java eine \Rseichte
    Kopie`` (Gleichheit 1. Stufe) eines Objekts

    <em|Zweck:> Vermeidet z.B. Klassenhierarchie von Fabriken, die parallel
    zur Klassenhierarchie der Produkte verläuft. Anwendbar auch, wenn die
    Klassen zu erzeugender Objekte erst zur Laufzeit spezifiziert werden oder
    das Erzeugen eines Objekts mehr Zeit erfordert als das Anlegen einer
    Kopie.

    <image|prototyp.png|40%|40%||>

    <item*|Zustand>Ändert das <em|Verhalten> eines Objekts, wenn sich dessen
    <em|interner Zustand> ändert. [Siehe Implementierung von
    Zustandsautomaten]

    <image|zustand.png|40%|40%||>
  </description>

  <subsubsection|Steuerungsmuster>

  Steuerung des <em|Kontrollflusses,> Aufruf der richtigen Methode zur
  richtigen Zeit.

  <\description>
    <item*|Befehl (command)>Kapselt einen Befehl als Objekt.

    <em|Möglichkeiten:> Warteschlange von Operationen, Logbuch,
    Rückgängigmachen, Makrobefehle [siehe Kompositum], Parametrisierung einer
    Operation.

    <em|Charakteristisch:> Methode <verbatim|führeAus()> des Befehlsobjekts.

    <image|befehl.png|40%|40%||>

    <item*|Auftraggeber/-nehmer (master/worker)>Auftraggeber <em|verteilt
    Arbeit> an identische Arbeiter (Auftragnehmer) und berechnet das
    Endergebnis aus den zurückgelieferten Teilergebnissen.

    <em|Zweck:> Teile & Herrsche, Parallelisierung.

    <em|Beispiele:> Seti@home, Folding@home

    <image|masterworker.png|40%|40%||>
  </description>

  <subsubsection|Bequemlichkeitsmuster>

  <em|Sparen> Schreib- oder Denkarbeit

  <\description>
    <item*|Bequemlichkeitsklasse>Vereinfacht Methodenaufruf durch Speichern
    der (Standard-)Parameterwerte in einer speziellen Klasse
    (Bequemlichkeitsklasse). Die Standardwerte können <em|während des
    Programmablaufs> gesetzt werden und gelten dann für alle zukünftigen
    Aufrufe.

    <image|beqklasse.png|40%|40%||>

    <item*|Bequemlichkeitsmethode (vorbelegte Parameter)>Vereinfachung des
    Methodenaufrufs durch die Bereitstellung häufig genutzter
    Parameterkombinationen in <em|überladenen Methoden.>

    <image|beqmethode.png|40%|40%||>

    <item*|Fassade>Bietet eine <em|einheitliche Schnittstelle> zu einer Menge
    von Schnittstellen eines Subsystems. <em|Vereinfacht> die Benutzung eines
    komplexen Subsystems und <em|entkoppelt> das Subsystem von den Klienten
    und anderen Subsystemen.

    <em|Wichtig:> Kein Stellvertreter, die Subsystemklassen sind bei Bedarf
    trotzdem direkt nutzbar.

    <image|fassade.png|40%|40%||>

    <item*|Null-Objekt><em|Stellvertreter> eines Objekts mit gleicher
    Schnittstelle, der nichts tut. Vermeidet unnötige
    <verbatim|null>-Prüfungen.

    <em|Beispiel:> Swing-Adapterklassen mit leeren Methodenrümpfen.

    <image|nullobjekt.png|40%|40%||>
  </description>

  <section|Implementierungsphase>

  <\itemize-minus>
    <item>Konzeption von <em|Datenstrukturen> und <em|Algorithmen>

    <item>Strukturierung des Programms durch geeignete
    <em|Verfeinerungsebenen>

    <item><em|Dokumentation> der Problemlösung und der
    Implementierungsentscheidungen

    <item><em|Umsetzung> der Konzepte in die Konstrukte der verwendeten
    Programmiersprache

    <strong|<item>Ergebnis:> Quellcode inkl. Dokumentation, Binärcode,
    ausführbare Testfälle und Testprotokoll bzw. Verifikationsdokumentation
  </itemize-minus>

  <subsection|Abbildung von UML in Code>

  <\description>
    <item*|Klassen>In OO-Sprachen: UML-Klasse <math|\<rightarrow\>>
    Programmiersprachenklasse. In Nicht-OO-Sprachen: Verbund/Record, der die
    Attribute enthält + parametrisierte Methoden; Simulation der Vererbung
    durch manuelles Hinzufügen der Attribute der Oberklasse

    <item*|Assoziationen>

    <image|assoz.png|468px|119px||>

    <image|assoz2.png|427px|204px||>

    Assoziationsklassen:

    <image|assoz3.png|447px|248px||>

    Wichtig bei Änderungen: ACID-Prinzip (<em|Atomicity> [\Rganz oder gar
    nicht``], <em|Consistency> [am Ende steht immer ein konsistenter
    Zustand], <em|Isolation> [keine Beeinflussung durch andere Threads],
    <em|Durability> [Änderungen sind dauerhaft für alle Threads zu sehen])

    <item*|Zustandsautomaten>Entweder <em|implizite Speicherung> (Berechnung
    des Zustands eines Exemplars aus seinen Attributwerten) mit impliziter
    Zustandsübergangsfunktion oder <em|explizite Speicherung> des Zustands in
    einer Instanzvariablen.

    <em|Eingebettete explizite Speicherung:> Fallunterscheidung nach Zustand
    in jeder Methode

    <em|Ausgelagerte explizite Speicherung (Entwurfsmuster \RState``):>
    Auslagern des Zustands (samt Methoden) in eine Zustandklasse und
    Speicherung des aktuellen Zustands in Instanzvariablen.
  </description>

  <subsection|Parallelität>

  <strong|Thread/Faden:> Ausführbarer Instruktionsstrom in einem Prozess mit
  eigenem Befehlszeiger und Stack, aber gemeinsamem Adressraum, gemeinsamem
  Heap und gemeinsamen Ressourcen (z.B. Dateien) mit anderen Fäden.

  <subsubsection|Parallelität in Java>

  <\itemize-minus>
    <item>Implementierung des Interfaces <verbatim|Runnable> oder der Klasse
    <verbatim|Thread> (die ihrerseits <verbatim|Runnable> implementiert)

    <item>Implementierung der Methode <verbatim|run()>

    <item>Aufruf mittels der Methode <verbatim|start()>, darf nur einmal
    aufgerufen werden!

    <item>Zusammenführen (Warten auf Beendigung von Thread <verbatim|t>)
    mittels <verbatim|t.join()>

    <item>Als <verbatim|volatile> deklarierte Variablen werden nicht im Cache
    gespeichert und nach jeder Änderung wieder in den Speicher geschrieben.

    <item>Monitore schützen kritische Abschnitte: Versucht eine Aktivität,
    einen besetzten Monitor zu betreten, wird sie solange blockiert, bis der
    Monitor wieder freigegeben wird. Dieselbe Aktivität kann einen Monitor
    mehrmals betreten.

    <item>Synchronisierung: Block mit <verbatim|synchronized(obj)> [Monitor
    von <verbatim|obj> wird benutzt] oder <verbatim|synchronized>-Methode
    [Monitor von <verbatim|this> bzw. bei statischen Methoden der Monitor der
    Klasse wird benutzt] übernimmt das Betreten und Verlassen des Monitors.

    <item>Warten auf einen Monitor mit <verbatim|wait> [bzw.
    <verbatim|this.wait()> in synchronisierten Methoden] gibt den
    betreffenden Monitor frei und wartet eine angegebene Zeitspanne oder bis
    zum Erhalt eines Signals via <verbatim|notifyAll>.

    Aufgrund von <em|spurious wake-ups> muss <verbatim|wait()> immer in einer
    Schleife mit Wächterbedingung stehen!

    Es muss ausserdem eine <verbatim|InterruptedException> gefangen werden
    (ausgelöst durch <verbatim|Thread.interrupt()>) <math|\<rightarrow\>>
    z.B. sauberes Beenden eines Threads.

    <item>Vermeidung von <strong|Deadlocks> (Blockaden): Monitore immer in
    derselben Reihenfolge anfordern

    <item><verbatim|java.util.concurrent> enthält thread-sichere
    Implementierungen häufig genutzer Klassen.
  </itemize-minus>

  <subsubsection|Parallele Entwurfsmuster>

  <\description>
    <item*|Gebietszerlegung>Teilen des Problems in Teilprobleme, die parallel
    gelöst werden

    <item*|Master/Worker>Siehe entsprechendes Entwurfsmuster

    <item*|Erzeuger/Verbraucher>(mit Puffer)

    <item*|Fliessband>Eigener Thread pro Fliessbandstufe.

    <item*|Paralleles \RTeile und Herrsche``>Parallele Verarbeitung der
    Teilprobleme bis zu einer gewissen Grösse, ab da sequentielle Bearbeitung
    (z.B. paralleles Mergesort)
  </description>

  <subsubsection|Parallele Algorithmen>

  <\description>
    <item*|Matrix-Vektor-Multiplikation>Zeilenweise Aufteilung der Matrix

    ijk-Algorithmus: Klassischer Algorithmus zur Multiplikation zweier
    Matrizen

    ikj-Algorithmus: Cache-freundliche Version

    <item*|Numerische Integration>Aufteilen des Integrationsbereich in
    Teilbereiche, Aufsummieren des Ergebnisses.
  </description>

  <subsubsection|Bewertung paralleler Algorithmen>

  <\description>
    <item*|Speedup/Beschleunigung bei Verwendung von <math|p>
    Prozessoren>Vergleich der parallelisierten Ausführung mit der besten
    sequenziellen Ausführung:

    <\equation*>
      S<around*|(|p|)>=<frac|T<around*|(|1|)>|T<around*|(|p|)>>
    </equation*>

    Idealfall: <math|S<around*|(|p|)>=p>

    <item*|Effizienz>Anteil an der Ausführungszeit, die jeder Prozessor mit
    nützlicher Arbeit verbringt

    <\equation*>
      E<around*|(|p|)>=<frac|S<around*|(|p|)>|p>
    </equation*>

    Idealfall: <math|E<around*|(|p|)>=1>

    <item*|Laufzeit>Wenn <math|\<sigma\>> die Ausführungszeit des
    sequentiellen, nicht parallelisierbaren Teils und <math|\<pi\>> die Zeit
    für die sequentielle Ausführung des parallelisierbaren Teils eines
    Algorithmus ist:

    <\equation*>
      T<around*|(|p|)>=\<sigma\>+<frac|\<pi\>|p>
    </equation*>

    Gesamtlaufzeit des Algorithmus auf <math|p> Prozessoren/Kernen

    <item*|Amdahls Gesetz>Wenn <math|f=<frac|\<sigma\>|\<sigma\>+\<pi\>>> der
    Anteil des sequentiellen, nicht parallelisierbaren Teils am Algorithmus
    ist, dann gilt für den Speedup:

    <\equation*>
      S<around*|(|p|)>\<leq\><frac|1|f>
    </equation*>
  </description>

  <subsection|Programmierrichtlinien>

  <\itemize-minus>
    <item>Erleichtern <em|Lesbarkeit> durch Konsistenz

    <item>Beschleunigen <em|Einarbeitung> und Wiedereinarbeitung

    <item>Sparen <em|Zeit> bei Fehlerfindung, Erweiterung und Pflege
  </itemize-minus>

  <subsection|Selbstkontrolliertes Programmieren>

  <image|skprog.png|50%|50%||>

  Fehlerlogbuch mit Fehlern, deren Suche lange gedauert hat, die hohe Kosten
  verursacht haben oder lange unentdeckt geblieben sind.

  <em|Daten:> Laufende Nummer, Datum, Phase, Kurzbeschreibung, Ursache

  <section|Testphase>

  Zu unterscheiden:

  <\description>
    <item*|Testende Verfahren><math|\<rightarrow\> >Aufdecken von Fehlern

    <item*|Verifizierende Verfahren> <math|\<rightarrow\>> Korrektheitsbeweis

    <item*|Analysierende Verfahren><math|\<rightarrow\>> Bestimmung der
    Eigenschaften einer Systemkomponente
  </description>

  Arten von Fehlern (errors):

  <\description>
    <item*|Versagen/Ausfall (failure, fault)>Abweichung des Verhaltens von
    der Spezifikation

    <item*|Defekt (defect)>Mangel in einem Softwareprodukt, der zu einem
    Versagen führen kann

    <item*|Irrtum (mistake)>Menschliche Aktion, die einen Defekt verursacht.
  </description>

  Fehlerklassen:

  <\description>
    <item*|Anforderungsfehler (Defekt im Pflichtenheft)>Inkorrekte Angaben,
    unvollständige Angaben über funktionale Anforderungen, Inkonsistenz,
    Undurchführbarkeit

    <item*|Entwurfsfehler (Defekt in der Spezifikation)>Unvollständige oder
    fehlerhafte Umsetzung der Anforderung, Inkonsistenz in der Spezifikation;
    Inkonsistenz zwischen Anforderung, Spezifikation und Entwurf

    <item*|Implementierungsfehler (Defekt im Programm)>Fehlerhafte Umsetzung
    der Spezifikation.
  </description>

  Glossar

  <\description>
    <item*|Test (Softwaretest)>Führt eine oder mehrere Komponenten
    <strong|(Testling, Prüfling, Testobjekt)> unter bekannten Bedingungen aus
    und überprüft ihr Verhalten.

    <item*|Testfall>Satz von Daten für die Ausführung eines Teils oder eines
    Testlings.

    <item*|Testtreiber/Testrahmen>Steuert die Ausführung der Testlinge und
    versorgt sie mit Testfällen.

    <item*|Testphasen>Komponententest, Integrationstest, Systemtest,
    Abnahmetest

    <image|testphasen.png|50%|||>

    <item*|Dynamisches Testverfahren (Testen)>Ausführen des zu testenden
    Programms mit bestimmten Testfällen

    <em|Beispiel:> Kontroll- und datenflussorientierte Tests, funktionale
    Tests (black box testing), Leistungstests

    <item*|Statische Testverfahren (Prüfen)>Analyse des Quellcodes ohne
    Ausführen des Programms

    <em|Beispiel:> Manuelle Prüfmethoden (Review), Prüfprogramme (statische
    Analyse, etwa Checkstyle)

    <item*|White-Box-Testen>Bestimmen der Testfälle mit Kenntnis von
    Kontroll- und Datenfluss.

    <item*|Black-Box-Testen>Bestimmen der Testfälle ohne Kenntnis von
    Kontroll- und Datenfluss, nur aus der Spezifikation heraus.
  </description>

  <strong|Testhelfer> ersetzen noch nicht implementierte Klassen:

  <\description>
    <item*|Stummel (stub)>Nicht oder nur rudimentär implementiert, dient als
    Platzhalter für Funktionalität.

    <item*|Attrappe (dummy)>Simuliert die Implementierung zu Testzwecken.

    <item*|Nachahmung (mock)>Attrape mit zusätzlicher Funktionalität, etwa
    Reaktion auf bestimmte Eingaben oder Verhaltensüberprüfungen.
  </description>

  Stummel und Attrappen werden durch echte Implementierungen ersetzt,
  Nachahmungen sind auch für zukünftiges Testen nützlich.

  <subsection|Kontrollflussorientierte Testverfahren>

  Vollständigkeitskriterien werden anhand des <strong|Kontrollflussgraphen>
  definiert

  <\description>
    <item*|Anweisungsüberdeckung>Jeder Grundblock des Programms wird
    ausgeführt.

    Metrik: <math|C<rsub|Anweisung>=C<rsub|0>=<frac|Anzahl durchlaufener
    Anweisungen|Anzahl aller Anweisungen>>

    <item*|Zweigüberdeckung>Alle Zweige (Kanten) im Kontrollflussgraphen
    werden traversiert.

    Metrik: <math|C<rsub|Zweig>=C<rsub|1>=<frac|Anzahl durchlaufener
    Zweige|Anzahl aller Zweige>>

    <item*|Pfadüberdeckung>Alle unterschiedlichen Pfade werden ausgeführt --
    kann nicht immer anwendbar sein, ist nicht praktikabel

    <item*|Einfache Bedingungsüberdeckung>Jede atomare Bedingung wird einmal
    mit <verbatim|wahr> und einmal mit <verbatim|falsch> belegt. Nicht
    ausreichendes Testkriterium!

    <item*|Mehrfache Bedingungsüberdeckung>Die atomaren Bedingungen werden
    mit allen möglichen Kombinationen der Wahrheitswerte belegt. [Aufwendig
    und unpraktikabel]

    <item*|Minimal-mehrfache Bedingungsüberdeckung>Jede Bedingung (ob atomar
    oder zusammengesetzt) muss einmal zu <verbatim|wahr> und einmal zu
    <verbatim|falsch> evaluieren.
  </description>

  <image|testverfahren.png|40%|40%||>

  <strong|Behandlung von Schleifen:>

  <\itemize-minus>
    <item>Ein Satz Testfälle, die den Schleifenrumpf einmal queren

    <item>Ein Satz Testfälle, die den Schleifenrumpf mindestens zweimal
    queren

    <item>Innerhalb der Schleife: Zweigüberdeckung
  </itemize-minus>

  <subsection|Funktionale Testverfahren>

  <em|Ziel:> Testen der Funktionalität, die in der Spezifikation festgelegt
  ist.

  Testfallbestimmung:

  <\description>
    <item*|Funktionale Äquivalenzklassenbildung>Zerlegen des Wertebereichs
    der Eingabeparameter und des Definitionsbereichs der Ausgabeparameter in
    Äquivalenzklassen.

    Testen mit je einem Repräsentanten aus jeder Äquivalenzklasse.

    <item*|Grenzwertanalyse>Wie ÄK-Bildung, aber es werden Elemente <em|auf
    und um den Rand> der Äquivalenzklasse als Testfälle genommen.

    <item*|Zufallsanalyse>Zufällige Testfälle, sinnvoll als Ergänzung zu
    anderen Verfahren oder wenn die Korrektheitsprüfung automatisch erfolgen
    kann (z.B. Sortierverfahren)

    <item*|Test von Zustandsautomaten>Alle Übergänge müssen mindestens einmal
    durchlaufen worden sein.
  </description>

  <subsection|Leitungstests>

  <\description>
    <item*|Lasttest>Testen auf Einhalten der Spezifikation <em|im erlaubten
    Grenzbereich.>

    <item*|Stresstest>Testen des Verhaltens beim <em|Überschreiten der
    definierten Grenzen> und Verhalten nach Rückgang der Überlast.
  </description>

  <subsection|Manuelle Prüfmethoden>

  <\description>
    <item*|Durchsicht/Walkthrough>Entwickler führt Kollegen durch seinen
    Code/Entwurf; Kollegen stellen Fragen und machen Anmerkungen

    <item*|Überprüfung/Review>Formal zwischen Durchsicht und Inspektion,
    Überprüfung durch einen \Rexternen`` Gutachter.

    <item*|Inspektion>Überprüfung anhand von Prüflisten oder Lesetechniken.
    Bis zu 90% aller entdeckten Defekte werden in Inspektionen gefunden; nur
    1/10--1/30 der Kosten gegenüber Testen identifizierter Fehler, ROI oft
    weit über 500%
  </description>

  <subsubsection|Software-Inspektion>

  Mehrere Inspektoren [Vielaugenprinzip, Abstand, Erfahrung] untersuchen
  unabhängig dasselbe Softwaredokument, gefundene Defekte werden
  aufgeschrieben.

  <em|Ziel:> Probleme identifizieren (nicht lösen)

  Phasen:

  <\description>
    <item*|1. Vorbereitung>Teilnehmer/Rollen festlegen, Dokumente
    vorbereiten, Ablauf planen

    <item*|2. Individuelle Fehlersuche>Jeder Inspektor prüft das Dokument
    (ca. 1 Seite/h), insgesamt maximal 1--4 Seiten, Aufschreiben der
    Problempunkte

    <item*|3. Gruppensitzung (2 h)>Problempunkte sammeln und einzeln
    besprechen, Verbesserungsvorschläge sammeln

    <item*|4. Nachbereitung>Problempunkte werden an Editor des Dokuments
    weitergeleitet, der klassifiziert die Defekte und leitet Änderungen ein.

    <item*|5. Prozessverbesserung>
  </description>

  Rollen:

  <\description>
    <item*|Inspektionsleiter>Leitet alle Phasen der Inspektion

    <item*|Moderator>Leitet die Gruppensitzung (meist der Inspektionsleiter)

    <item*|Inspektoren>Prüfen das Dokument

    <item*|Schriftführer>Protokolliert Defekte in der Gruppensitzung

    <item*|Editor>Klassifiziert und behebt Defekte (meist der Autor)

    <item*|Autor>Hat das Dokument verfasst
  </description>

  Lesetechniken:

  <\description>
    <item*|Ad-hoc>

    <item*|Prüflisten>(Abhak-)Listen mit Fragen zum Dokument

    <item*|Szenarien>Anleitung zum Prüfen des Dokuments aus einer bestimmten
    Perspektive [z.B. Wartung, Code-Analyst]; Satz von Fragen (i.A.
    effektiver als Prüflisten)
  </description>

  <subsection|Integrationstests>

  <em|Voraussetzung:> Komponenten bereits einzeln überprüft.

  <em|Ziel:> Zusammenspiel der Komponenten testen.

  Schrittweise Integration einer Komponente in die bereits geprüfte
  Komponentenmenge.

  Folien S. 125--137

  <section|Prozessmodelle>

  <\description>
    <item*|Programmieren durch Probieren>(Code&Fix, Trial&Error) Erst Code
    schreiben, dann Anforderungen etc. überlegen und Programm anpassen

    Fehlende Entwurfsphase <math|\<rightarrow\>> schlecht strukturierter
    Code, kostspielige Wartung, keine Dokumentation, keine Teamarbeit

    <item*|Wasserfallmodell>Siehe oben, jede Aktivität wird vollständig
    (streng sequentiell) durchgeführt <math|\<rightarrow\>> keine
    Rückkopplung, wenig Parallelisierung

    <item*|V-Modell XT>Festlegung von Aktivitäten, Produkten [Ergebnis von
    Aktivitäten] und Verantwortlichkeiten

    <em|4 Submodelle:> Projektmanagement, Qualitätssicherung,
    Konfigurationsmanagement, Systemerstellung; jeweils gegliedert in
    <em|Vorgehensbausteine.>

    <em|\RHandelsübliches`` V-Modell:>\ 

    <image|v-modell.png|503px|215px||>

    <item*|Prototypenmodell>Kann Arbeitsmoral und Vertrauen zwischen Anbieter
    und Kunden stärken. Ganz wichtig: <strong|Prototyp wird weggeworfen!>
    Nach Klärung aller wichtigen Fragen und Wegwurf des Prototyps: Vorgehen
    nach anderem Modell

    <item*|Iteratives Modell>Funktionalität wird Schritt für Schritt erstellt

    <\description>
      <item*|Evolutionär>Nur der Teil, der als nächstes hinzugefügt wird,
      wird geplant und analysiert (<math|x>-faches Wasserfallmodell)
      <math|\<rightarrow\>> Problem im Zusammenspiel zwischen den Teilen

      <item*|Inkrementell>Alles wird geplant und analysiert [was aber
      eigentlich vermieden werden soll] und <math|n>-mal über
      Entwurfs-/Implementierungs-/Testphase iteriert
    </description>

    <math|\<rightarrow\>> Mischformen

    <item*|Synchronisiere und Stabilisiere>(\RMicrosoft-Modell``)
    Organisation in kleinen Teams mit Freiheit für eigene Ideen/Entwürfe:

    Regelmässige <em|Synchronisation> (nächtlich), regelmässige
    <em|Stabilisierung> (3 Monate)

    Planungsphase [<em|vision statement>, Spezifikation, Zeitplan],
    Entwicklungsphase [wichtigste Funktionen zuerst, Testen parallel zur
    Entwicklung, 3x Stabilisierung], Stabilisierungsphase [Beta-Tests,
    Codestabilisierung]

    <item*|Agile Methoden (speziell Extreme Programming)>Wenig Vorausplanung,
    inkrementelle Planung, wenig unnötige Dokumente, flexible Reaktion auf
    Änderungen, Einbeziehung des Kunden in die Entwicklung

    <em|Methoden:> Paarprogrammierung, sehr häufiges und automatisches Testen
    [automatische Komponententests, durch Kunden spezifizierter
    Akzeptanztest], testgetriebene Entwicklung [jede Verhaltensänderung am
    Quelltext wird durch automatisierten Test modelliert, Testcode vor
    Anwendungsode]
  </description>
</body>

<\initial>
  <\collection>
    <associate|language|german>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4.4|5>>
    <associate|auto-11|<tuple|1|5>>
    <associate|auto-12|<tuple|5|6>>
    <associate|auto-13|<tuple|5.1|6>>
    <associate|auto-14|<tuple|5.1.1|7>>
    <associate|auto-15|<tuple|5.2|7>>
    <associate|auto-16|<tuple|5.2.1|7>>
    <associate|auto-17|<tuple|5.2.2|7>>
    <associate|auto-18|<tuple|5.3|8>>
    <associate|auto-19|<tuple|5.4|9>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-20|<tuple|5.4.1|9>>
    <associate|auto-21|<tuple|5.4.2|12>>
    <associate|auto-22|<tuple|5.4.3|14>>
    <associate|auto-23|<tuple|5.4.4|16>>
    <associate|auto-24|<tuple|5.4.5|17>>
    <associate|auto-25|<tuple|6|18>>
    <associate|auto-26|<tuple|6.1|18>>
    <associate|auto-27|<tuple|6.2|19>>
    <associate|auto-28|<tuple|6.2.1|19>>
    <associate|auto-29|<tuple|6.2.2|20>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-30|<tuple|6.2.3|20>>
    <associate|auto-31|<tuple|6.2.4|20>>
    <associate|auto-32|<tuple|6.3|21>>
    <associate|auto-33|<tuple|6.4|21>>
    <associate|auto-34|<tuple|7|21>>
    <associate|auto-35|<tuple|7.1|23>>
    <associate|auto-36|<tuple|7.2|?>>
    <associate|auto-37|<tuple|7.3|?>>
    <associate|auto-38|<tuple|7.4|?>>
    <associate|auto-39|<tuple|7.4.1|?>>
    <associate|auto-4|<tuple|3.1|3>>
    <associate|auto-40|<tuple|7.5|?>>
    <associate|auto-41|<tuple|8|?>>
    <associate|auto-5|<tuple|3.2|3>>
    <associate|auto-6|<tuple|4|3>>
    <associate|auto-7|<tuple|4.1|3>>
    <associate|auto-8|<tuple|4.2|4>>
    <associate|auto-9|<tuple|4.3|5>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal|Linguistische Analyse (nach Abbott) als erste
      Annäherung|<pageref|auto-11>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Konfigurationsverwaltung>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Einführung>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Planungsphase
      (Anforderungserhebung)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Lastenheft
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1.5fn>|Durchführbarkeitsuntersuchung
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Definitionsphase>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Pflichtenheft
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1.5fn>|Objektorientierung
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1.5fn>|UML <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1.5fn>|Objektmodellierung
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Entwurfsphase
      (Designphase)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Modularer Entwurf
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|3fn>|Benutztrelation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1.5fn>|Objektorientierter Entwurf
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|3fn>|Externer Entwurf
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|3fn>|Interner Entwurf
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1.5fn>|Architekturstile
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1.5fn>|Entwurfsmuster
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|3fn>|Entkopplungsmuster
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|3fn>|Varianten-Muster
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|3fn>|Zustandshandhabungsmuster
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|3fn>|Steuerungsmuster
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|3fn>|Bequemlichkeitsmuster
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Implementierungsphase>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Abbildung von UML in Code
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1.5fn>|Parallelität
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|3fn>|Parallelität in Java
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|3fn>|Parallele Entwurfsmuster
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|3fn>|Parallele Algorithmen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|3fn>|Bewertung paralleler Algorithmen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|1.5fn>|Programmierrichtlinien
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1.5fn>|Selbstkontrolliertes Programmieren
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Testphase>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Kontrollflussorientierte Testverfahren
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|1.5fn>|Funktionale Testverfahren
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1.5fn>|Leitungstests
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1.5fn>|Manuelle Prüfmethoden
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|3fn>|Software-Inspektion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|1.5fn>|Integrationstests
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>
    </associate>
  </collection>
</auxiliary>