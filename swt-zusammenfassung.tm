<TeXmacs|1.0.7.10>

<style|generic>

<\body>
  <section|Konfigurationsverwaltung>

  Mechanismus zur <strong|Identifizierung, Lenkung> und
  <strong|R�ckverfolgung> der Versionen jedes Software-Elements.

  <\description>
    <item*|Software-Konfiguration>Benannte, formal freigegebene Menge von
    Software-Elementen mit jeweiligen Versionsangaben, die aufeinander
    abgestimmt sind.

    Bestandteile: Programmtext, Dokumentation, Konfigurationsdateien,
    Werkzeuge

    <item*|Software-Element>Jeder identifizierbare Bestandteil des
    Produkts/der Produktlinie.

    <item*|Version>Auspr�gung eines Software-Elements zu einem bestimmten
    Zeitpunkt.

    <item*|Revisionen>Zeitlich nacheinander liegende Versionen.

    Versionsverwaltung mit <em|Vorw�rts-> oder <em|R�ckw�rts-Deltas>
    (Unterschiede zwischen Versionen)

    <item*|Variante>Variante einer Version z.B. mit unterschiedlichen
    Datenstrukturen/Algorithmen (<math|\<rightarrow\>> Branches)

    <item*|Einbuchen (Check-in), Ausbuchen (Check-out)>Bei letzterem sind zu
    unterscheiden <strong|striktes Ausbuchen> [mit Sperren] und
    <strong|optimistisches Ausbuchen.>
  </description>

  <section|Einf�hrung>

  <\description>
    <item*|Softwaretechnik>Technologische und organisatorische Disziplin zur
    systematischen Entwicklung und Pflege von Softwaresystemen, die
    spezifizierte funktionale und nichtfunktionale Attribute erf�llen.

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

      <item*|Zugeh�rige Daten>Konfigurationsdateien, Sprachdateien,
      Initialisierungsdaten

      <item*|Dokumentation>Anforderungsdokumentation, Testprotokolle,
      Anwendungsbeispiele, Handb�cher, FAQ
    </description>

    <strong|Charakteristiken:> Immaterielles Produkt, kein Verschleiss (aber
    scheinbare Alterung), nicht durch physikalische Gesetze begrenzt,
    <em|nicht> leichter zu �ndern als ein physikalisches Produkt gleicher
    Komplexit�t, schneller und leichter zu verteilen als physikalische
    Produkte, schwer zu \Rvermessen``.

    <item*|Anforderungen>

    <\description>
      <item*|Funktionale Attribute>Spezifizieren die Funktion der Software.

      <item*|Nichtfunktionale Attribute/Qualit�tsattribute>Spezifizieren,
      <em|wie gut> die Software ihre Funktion erf�llt
      (Zuverl�ssigkeit/Robustheit/Verf�gbarkeit, Geschwindigkeit,
      Benutzerfreundlichkeit, Sicherheit, �nderbarkeit, Dokumentationsgrad)

      <item*|Einschr�nkungen/externe Eigenschaften>Interoperabilit�t,
      Standards/Normen, gesetzliche Vorschriften, ethische Anforderungen,
      Implementierung [Sprache etc.], Schnittstellen, Einsatzumgebung,
      Lieferumfang, Rechtliches [Lizenzen, Zertifikate, Datenschutz]
    </description>

    <item*|Anforderungen an marktreife Software>Funktionstreue \|
    Qualit�tstreue \| Termintreue \| Kostentreue
  </description>

  <strong|Wasserfallmodell> mit 6 Phasen [und dazugeh�rigen Dokumenten]:

  <\enumerate-numeric>
    <item>Planung [Machbarkeitsstudie, Lastenheft, Projektplan,
    Projektkalkulation]

    <item>Definition [Pflichtenheft, Objektmodell, dynamisches Modell,
    UI-Konzept, Handbuch]

    <item>Entwurf [Entwurfsdokumente, Modulf�hrer]

    <item>Implementierung [Komponenten, Dokumentation, Testeinrichtung]

    <item>Testen [Fertiges System]

    <item>Abnahme, Einsatz und Wartung
  </enumerate-numeric>

  <section|Planungsphase (Anforderungserhebung)>

  <strong|Ziel:> Beschreiben des zu entwickelnden Systems in Worten des
  Kunden, �berpr�fung der Durchf�hrbarkeit.

  Anforderungsspezifikation verwendet nat�rliche Sprache; Analysemodelle
  verwenden formale Notationen (z.B. UML)

  Techniken zur Anforderungserhebung:

  <\description>
    <item*|Frageb�gen>

    <item*|Interviews>

    <item*|Aufgaben- und Dokumentanalyse>

    <item*|Szenarien>Beschreibung der konkreten Verwendung eines Systems
    (anhand eines Beispiels) in Textform aus Sicht eines Benutzers; Folge von
    Aktionen und Ereignissen. Kann Texte, Bilder, Videos und Ablaufpl�ne
    enthalten.

    <item*|Anwendungsf�lle>

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

      <item*|Anwendungsfalldiagramm>Menge aller Anwendungsf�lle, die zusammen
      die gesamte Funktionalit�t des Systems beschreiben.
    </description>
  </description>

  Anforderungen m�ssen sein:\ 

  <\itemize-minus>
    <item><em|korrekt> [korrekte Wiedergabe der Kundensicht]

    <item><em|vollst�ndig> [alle Situationen, in denen das System benutzt
    werden kann, sind beschrieben; einschliesslich Fehler und Fehlbedienung]

    <item><em|untereinander konsistent> [kein Widerspruch
    funktionaler/nichtfunktionaler Anforderungen untereinander]

    <item><em|realisierbar>

    <item><em|verfolgbar> [jeder Systemfunktion m�ssen die dadurch erf�llten
    Anforderungen zuzuordnen sein].
  </itemize-minus>

  <em|Probleme> bei der Anforderungserhebung: (Bereichs-)Wissen ist selten
  explizit festgehalten, stillschweigendes Wissen, Verzerrung (absichtlich
  oder unabsichtlich)

  <subsection|Lastenheft>

  <\enumerate-numeric>
    <item>Zielbestimmung [Was soll das Produkt?]

    <item>Produkteinsatz [Zweck, Zielgruppe, Hardware]

    <item>Funktionale Anforderungen [<verbatim|/FA42/>: XXX, nach
    Anwendergruppen geordnet]

    <item>Produktdaten [z.B. zu speichernde Daten]

    <item>Nichtfunktionale Anforderungen (Qualit�tsanforderungen)

    <item>Systemmodelle

    <\enumerate-alpha>
      <item>Szenarien

      <item>Anwendungsf�lle
    </enumerate-alpha>

    <item>Glossar
  </enumerate-numeric>

  <subsection|Durchf�hrbarkeitsuntersuchung>

  <\itemize-minus>
    <item>Fachliche Durchf�hrbarkeit [�berhaupt realisierbar? N�tige Hardware
    zum Entwickeln?]

    <item>Alternative L�sungsvorschl�ge

    <item>Personelle Durchf�hrbarkeit

    <item>Risikountersuchung

    <item>�konomische Durchf�hrbarkeit [Aufwands- und Terminsch�tzung,
    Wirtschaftlichkeit]

    <item>Rechtliche Gesichtspunkte [Datenschutz, Zertifizierung, Standards]
  </itemize-minus>

  <section|Definitionsphase>

  Ziel: Erstellung des Pflichtenhefts

  <subsection|Pflichtenheft>

  <\itemize-minus>
    <item>Verfeinerung des Lastenhefts

    <item>Definiert/modelliert das System <em|so vollst�ndig und exakt,> dass
    die Implementierung ohne Nachfrage oder Unklarkeiten m�glich ist.

    <item>Beschreibt nur, <em|was> zu implementieren ist, nicht <em|wie>
    (keine Algorithmen/Datenstrukturen)

    <item>Liefert ein <em|Modell> des zu implementierenden Systems

    <\description>
      <item*|Funktionales Modell (aus dem Lastenheft)>Szenarien und
      Anwendungsfalldiagramm

      <item*|Objektmodell (statisches Modell)>Klassen- und Objektdiagramm

      <item*|Dynamisches Modell>Sequenzdiagramm, Zustandsdiagramm,
      Aktivit�tsdiagramm
    </description>
  </itemize-minus>

  <subsection|Objektorientierung>

  <\description>
    <item*|Objekt>Ein erkennbares und eindeutig von anderen Objekten
    unterscheidbares Element.

    <item*|Klasse>Eine (prinzipiell willk�rliche) Kategori �ber der Menge
    aller Objekte.

    <item*|Exemplar/Instanz>Ein konkretes Element aus einer bestimmten Klasse

    <item*|Attribut>Eine Eigenschaft, die f�r alle Exemplare einer Klasse
    definiert und vorhanden ist.

    <item*|Objektidentit�t>Existenz eines Objekts ist unabh�ngig von den
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

    <item*|Methodensignatur>Methodenname + R�ckgabetyp + Parameterliste

    <item*|Signaturvererbung/Implementierungsvererbung>Bei der
    Signaturvererbung wird nur die Methodensignatur vererbt, bei der
    Implementierungsvererbung zus�tzlich die Implementierung aus der
    Oberklasse.

    <item*|�berschreiben>Neuimplementieren der geerbten Methode unter
    Beibehaltung der Signatur

    <item*|�berladen>Mehrere Methoden mit gleichen Namen, aber
    unterschiedlicher Signatur [reines Komfortmerkmal, hat nichts mit
    OO/Vererbung zu tun

    <item*|Polymorphie>Vielgestaltigkeit

    <\description>
      <item*|Statische Polymorphie>�berladen

      <item*|Dynamische Polymorphie>Es wird diejenige Methode mit der
      angegebenen Signatur aufgerufen, die in der Vererbungshierarchie am
      speziellsten ist.
    </description>

    <item*|Schnittstelle>Definition einer Menge <em|abstrakter> Methoden, die
    von den implementierenden Klassen angeboten werden m�ssen.

    <item*|Varianz>Modifikation eines Parametertyps bei einer �berschriebenen
    Methode

    <\description>
      <item*|Kovarianz>In der �berschriebenen Methode wird eine
      Spezialisierung des Parametertyps verwendet <math|\<rightarrow\>>
      R�ckgabetyp

      <item*|Kontravarianz>In der �berschriebenen Methode wird eine
      Verallgemeinerung des Parametertyps verwendet <math|\<rightarrow\>>
      Parameter

      <item*|Invarianz>Keine Typmodifikation (<math|\<rightarrow\>>
      Parameter, die gleichzeitig Ein- und Ausgabeparameter sind)
    </description>
  </description>

  \SUML-Klassendiagramme\T

  <subsection|UML>

  <\description>
    <item*|Funktionales Modell>Beschreibt das System aus der Sicht des
    Benutzers (Anwendungsfalldiagramm)

    <item*|Statisches Modell>Klassendiagramm

    <item*|Dynamisches Modell>Interaktionsdiagramme, Zustandsdiagramme,
    Aktivit�tsdiagramme
  </description>

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
    <math|\<ldots\>>>>|<row|<cell|Modalverb>|<cell|Zusicherung>|<cell|m�ssen,
    sollen>>|<row|<cell|Adjektiv>|<cell|Attribut>|<cell|3 Jahre
    alt>>>>>|Linguistische Analyse (nach Abbott) als erste Ann�herung>

    Noch keine Vererbungsstrukturen bilden!

    <item*|2. Finden von Assoziationen>Dauerhafte Beziehungen zwischen
    Objekten, die

    <\enumerate-numeric>
      <item>�ber einen <em|l�ngeren Zeitraum> existieren

      <item><em|problemrelevant> sind

      <item><em|unabh�ngig> von allen nicht beteiligten Klassen sind.
    </enumerate-numeric>

    Kandidaten: Verben in der Problembeschreibung

    Aggregationen: Rangordnung/semantischer Zusammenhang (\Rbesteht aus``,
    \Rist Teil von``)

    <em|Vorteil> von Assoziationen gegen�ber einfachen Referenzen (z.B.
    Instanzvariablen): <strong|Transaktionalit�t/ACID> (muss in Java manuell
    umgesetzt werden)

    <item*|3. Finden von Attributen>Attribute m�ssen problemrelevant sein und
    an der Benutzeroberfl�che zu sehen sein [sonst Implementierungsdetails]

    <item*|4. Erstellen von Vererbungsstrukturen>Substitutionsprinzip
    beachten! Im objektorientierten Analysemodell gibt es in der Regel
    <em|viele Assoziationen,> aber <em|wenig Vererbung.>

    <item*|5. Dynamisches Model erstellen>Quelle: Szenarien, Anwendungsf�lle
    -- Ergebnis: Sequenz- und Aktivit�tsdiagramm. Dient dazu, Operationen der
    Klasse zu identifizieren, Botschaftsfluss durch das System zu definieren,
    Vollst�ndigkeit und Korrektheit des statischen Systems zu pr�fen und als
    Grundlage f�r Systemtests.

    <item*|6. Objektlebenszyklus bestimmen>

    <item*|7. Operationen festlegen>Aus Sequenzdiagramm und Lebenszyklus
    �bernehmen, so hoch wie m�glich in der Vererbungshierarchie eintragen.

    <item*|8. Subsysteme erstellen>Klassen mit gemeinsamem Bezug in Subsystem
    zusammenfassen. Innerhalb eines Subsystem sollte <em|starke Kopplung>
    herrschen, zwischen den Subsystemen dagegen <em|schwache Kopplung>.

    Beachten: Vererbungsstrukturen nur vertikal schneiden, keine
    Aggregationen durchtrennen, m�glichst wenige Assoziationen in der
    Schnittstelle zwischen Subsystemen.

    Sinnvolle Gr�sse: ca. 10--15 Klassen oder eine DIN-A4-Seite.
  </description>

  <section|Entwurfsphase (Designphase)>

  Entwerfen = \RProgrammieren im Grossen``

  <strong|Aufgabe:> Aus den gegebenen <em|Anforderungen> (Definitionsphase)
  eine Softwarearchitektur entwickeln, die alle Anforderungen erf�llt:

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
    <item*|E1: Modulf�hrer/Grobentwurf>Gliederung in Komponenten und
    Subsysteme, Beschreibung der Funktion jedes Moduls, eventuell
    Entwurfsmuster wie Schichten- oder Fliessbandarchitektur

    Beschreibt f�r jedes Modul: Was ist das Geheimnis/die
    Entwurfsentscheidung dieses Moduls? Was ist die Funktion des Moduls?

    Beschreibt f�r jedes Subsystem: Gliederung in Module und andere
    Subsysteme (Bestandshierarchie)

    <item*|E2: Modulschnittstellen>Genaue Beschreibung der von jedem Modul
    zur Verf�gung gestellten Elemente

    Ergebnis: \RBlack-Box``-Beschreibung jedes Moduls: �ffentliche
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
    gemeinsam entworfen und ge�ndert werden.

    <item*|Geheimnisprinzip>Jedes Modul verbirgt eine wichtige
    Entwurfsentscheidung hinter einer wohldefinierten Schnittstelle, die sich
    bei �nderungen dieser Entscheidung nicht mit �ndert.

    Beispiele f�r Entwurfsentscheidungen/Geheimnisse der Module:
    Datenstrukturen und deren Implementierung,
    maschinennahe/betriebssystemnahe Details, Ein-/Ausgabeformate, GUI, Texte
  </description>

  Anforderungen an ein Modul:

  <\itemize-minus>
    <item>Entwurf, Implementierung, Testen <em|unabh�ngig> von der sp�teren
    genauen Nutzung

    <item>Implementierung m�glich, ohne dass <em|Implementierungsdetails>
    anderer Module bekannt sind, und Benutzung ohne Kenntnis des inneren
    Aufbaus m�glich <em|(Kapselung)>

    <item>Starke Koh�sion innerhalb des Moduls, geringere Koh�sion zwischen
    Modulen

    <item>Sollte einfach genug sein, um f�r sich voll verstanden werden zu
    k�nnen.
  </itemize-minus>

  <subsubsection|Benutztrelation>

  Definition: Komponente <verbatim|A> <strong|benutzt> Komponente
  <verbatim|B> genau dann, wenn <verbatim|A> f�r den korrekten Ablauf die
  <em|Verf�gbarkeit> einer korrekten Implementierung von <verbatim|B>
  erfordert.

  Beispiel: Delegation an <verbatim|B>, Zugriff auf Variable von
  <verbatim|B>; Aufruf, der korrekte Implementierung von <verbatim|B>
  erfordert, Anlegen einer Instanz eines Typs aus <verbatim|B>.

  Benutztrelation kann Halb- oder Totalordnung sein. Zyklenfreie
  Benutztrelation heisst <strong|Benutzthierarchie>. [Bei R�ckrufen/Callbacks
  von <verbatim|B> nach <verbatim|A> ist die Hierarchie trotzdem zyklenfrei]

  <em|Nachteil> einer nicht zyklenfreien Benutztrelation: <strong|\RNothing
  works until everything works``> -- Implementierung und Testen der Module
  nicht nacheinander m�glich.

  <subsection|Objektorientierter Entwurf>

  Erweiterung des modularen Entwurfs, aber Flexibilisierung durch das
  <em|Geheimnisprinzip>.

  Zus�tzliche M�glichkeiten durch Objektorientierung <math|\<rightarrow\>>
  Entwurfsmuster!

  <subsubsection|Externer Entwurf>

  Statt Modulf�hrer: <strong|Paket- und Klassenf�hrer> [UML-Klassendiagramm,
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
    und diese ganz oder teilweise verdecken k�nnen.

    Beispiel: Programmiersprache, Betriebssystem, GUI-Bibliothek, Java-VM,
    API

    <item*|Schichtenarchitektur>Gliederung einer Softwarearchitektur in
    hierarchisch geordnete Schichten. Eine Schicht hat eine wohldefinierte
    Schnittstelle, nutzt nur die <em|darunterliegenden> Schichten und stellt
    ihre Dienste dar�berliegenden Schichten zur Verf�gung

    Benutztrelation zwischen Schichten: linear, baumartig oder DAG;
    innerhalb: beliebig

    <em|Intransparente Schichtenarchitektur:> Schicht kann nur auf direkt
    darunter liegende Schicht zugreifen; <em|Transparente
    Schichtenarchitektur:> alle darunterliegenden Schichten

    <em|Vorteile:> Strukturierung in Abstraktionsebenen [Schichten
    <math|<wide|=|^>> abstrakte Maschinen], Entwurfsfreiheit innerhalb der
    Schichten, gute Wiederverwendbarkeit/�nderbarkeit/Portabilit�t.

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
    bieten Dienste f�r Klienten an. Klient muss die Schnittstelle des
    Dienstgebers kennen, aber nicht umgekehrt.

    Klient und Dienstgeber k�nnen auf unterschiedlichen Rechnern laufen

    <em|Beispiel:> Frontend/Backend bei DB-Systemen, FTP-Client/Server

    <item*|Partnernetze (peer-to-peer)>Verallgemeinerung von Client/Server:
    Alle Subsysteme sind gleichberechtigt (sowohl Klient als auch
    Dienstgeber); Partner laufen auf unterschiedlichen Rechnern.

    <em|Stichworte:> Dezentralisierung, Selbstorganisation, Autonomie der
    Partner, Zuverl�ssigkeit, Verf�gbarkeit

    <em|Beispiel:> Bittorrent, TCP/IP, DNS

    <item*|Datenablage (repository)>Subsysteme interagieren �ber eine
    zentrale Datenstruktur, die Datenablage. Datenablage sorgt f�r Konsistenz
    und ordnet gleichzeitige Zugriffe

    <em|Beispiel:> IDE [�bersetzer, Debugger, Editor greifen auf
    Strukturbaum/Symboltabelle zu]

    <item*|Model/View/Controller>Trennung von Daten [Modell] und deren
    Darstellung [View/Sicht]; Interaktion zwischen Sicht und Modell durch
    Controller

    Kombination der Entwurfsmuster <em|Beobachter, Kompositum> und
    <em|Strategie>

    <em|Unterschied zur 3-Schichten-Architektur:> diese ist hierarchisch, MVC
    nicht (\RDreiecksbeziehung`` Modell <math|\<leftrightarrow\>> Steuerung
    <math|\<leftrightarrow\>> Sicht)

    <image|mvc.png|389px|147px||>

    <item*|Fliessband (pipeline)>Jede Stufe ist eigenst�ndiger
    Prozess/Thread; Daten werden zwischen den Stufen weitergereicht (evtl.
    mit Puffer, um Geschwindigkeitsschwankungen auszugleichen)

    <em|Vorteil:> Gleichzeitige Ausf�hrung bei Parallelrechnern (dabei
    sollten die einzelnen Stufen etwa gleich lange brauchen)

    <em|Beispiel:> Pipes auf der Unix-Shell, Videocodierung

    <em|Anwendbarkeit:> Verarbeitung von Datenstr�men

    <item*|Rahmenarchitektur (framework)>Bietet ein (nahezu) vollst�ndiges
    Programm, das durch Ausf�llen geplanter \RL�cken`` oder
    Erweiterungspunkten erweitert werden kann (mittels Einsch�ben/Plug-ins)

    <em|Prinzip:> Hollywood-Prinzip (\RDon't call us -- we'll call you``)

    <em|Beispiel:> Eclipse

    <em|Oft verwendete Entwurfsmuster:> Strategie, Fabrikmethode, abstrakte
    Fabrik, Schablonenmethode
  </description>

  <subsection|Entwurfsmuster>

  Familien von L�sungen f�r ein Software-Entwurfsproblem

  <em|Vorteile:> Vereinfachte Kommunikation [Bereitstellung eines
  Vokabulars], Erfassung von Konzepten [Dokumentation des Entwurfs],
  Dokumentation und F�rderung des Standes der Kunst, Verbesserung der
  Code-Qualit�t und -Struktur

  <subsubsection|Entkopplungsmuster>

  Teilen ein System in <em|mehrere Einheiten,> sodass einzelne Einheiten
  <em|unabh�ngig voneinander> erstellt, ver�ndert, ausgetauscht und
  wiederverwendet werden k�nnen.

  <\description>
    <item*|Adapter (adapter, wrapper)>Passt die Schnittstelle einer Klasse an
    eine andere Schnittstelle an <math|\<rightarrow\>> Zusammenarbeit
    inkompatibler Klassen

    <em|Anwendung:> Wiederverwendung einer existierenden Klasse

    <image|adapter.png|33%|33%||>

    <item*|Beobachter (observer)>Definiert eine <verbatim|1:n>-Abh�ngigkeit
    zwischen Objekten, sodass die Zustands�nderung eines Objekts dazu f�hrt,
    dass alle abh�ngigen Objekte benachrichtigt und automatisch aktualisiert
    werden.

    Beobachter benutzen das Subjekt (i.S. der Benutzthierarchie)

    <em|Anwendbarkeit:> Benachrichtigung von Objekten, ohne etwas �ber diese
    zu wissen

    <em|Nachteile:> Aufwand der Aktualisierung nicht bekannt (Kaskade von
    Aktualisierungen), zun�chst keine Information, <em|was> ge�ndert wurde.

    <image|beobachter1.png|40%|40%||>

    <image|beobachter2.png|40%|40%||>

    <item*|Br�cke>Entkoppelt <em|Abstraktion> von ihrer <em|Implementierung,>
    sodass beide unabh�ngig voneinander variiert werden k�nnen.

    <em|Anwendbarkeit:> Vermeidung dauerhafter Verbindung zwischen
    Abstraktion und ihrer Implementierung, Erweiterbarkeit sowohl von
    Abstraktion als auch Implementierung durch Unterklassenbildung, Nutzung
    einer Implementierung von mehreren Objekten aus.

    <image|bruecke.png|40%|40%||>

    <item*|Iterator (iterator, enumerator)>Erm�glicht den <em|sequentiellen
    Zugriff> auf Elemente eines zusammengesetzten Objekts, ohne die interne
    Repr�sentation offenzulegen und bietet eine <em|einheitliche
    Schnittstelle> zur Traversierung unterschiedlicher Strukturen (polymorphe
    Iteration)

    Iterator ist <em|robust,> d.h. jeder Iterator enth�lt eine eigene
    \RLaufvariable``.

    <em|Beispiel:> Java-Interface <verbatim|Iterator>

    <image|iterator.png|40%|40%||>

    <item*|Stellvertreter (proxy)>Kontrolliert den Zugriff auf ein Objekt.
    Varianten:

    <\description>
      <item*|Protokollierender Stellvertreter>Z�hlt Referenzen auf das Objekt
      oder andere Zugriffsinformationen.

      <item*|Puffernder Stellvertreter (caching proxy) / Platzhalter (virtual
      proxy)>L�dt ein teures Objekt erst dann, wenn es wirklich ben�tigt wird
      (verz�gertes Laden) oder verwaltet einen Pool von Objekten.

      <item*|Fernzugriffsvertreter (remote proxy)>Lokaler Stellvertreter f�r
      ein Objekt in einem anderen Adressraum.

      <item*|Schutzwand (firewall)>Kontrolliert Zugriff auf das
      Originalobjekt.

      <item*|Synchronisierungsvertreter>Kontrolliert gleichzeitigen Zugriff
      auf ein Objekt.

      <item*|Dekorierer>Auch eine Art Stellvertreter (siehe unten)
    </description>

    <image|stellvertreter.png|40%|40%||>

    <item*|Dekorierer>F�gt dynamisch neue Funktionalit�t zu einem Objekt
    hinzu, Alternative zur Vererbung. [Dekorierer vs. Stellvertreter siehe S.
    66]

    Ziel: Transparente Entkopplung einer bestimmten <em|Instanz> gg�. dem
    Rest des Programms

    Mitwirkende: <verbatim|Subjekt (Komponente)>, <verbatim|Dekorierer>,
    <verbatim|Konkrete Komponente>

    <image|dekorierer.png|40%|40%||>

    <item*|Vermittler>Definiert ein Objekt, welches das Zusammenspiel
    mehrerer Objekte kapselt.

    F�rderung von <em|loser Kopplung>

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

    <em|Mitwirkende:> <verbatim|AbstrakteFabrik>,
    <verbatim|KonkreteFabrik>en, <verbatim|Produkte>,
    <verbatim|KonkreteProdukte>

    <em|Anwendbarkeit:> Wenn eine Familie von aufeinander abgestimmten
    Objekten verwendet werden muss.

    <image|abstraktefabrik.png|40%|40%||>

    <item*|Besucher>Kapselt eine <em|Operation> auf Elementen einer Struktur
    als ein <em|Objekt.>

    Mitwirkende: <verbatim|Element>, <verbatim|KonkreteElemente>
    (implementieren eine \RnimmEntgegen``-Methode f�r den allgemeinen
    Besucher), <verbatim|Besucher> (enth�lt eine \RBesuche``-Methode f�r
    jedes konkrete Element!), <verbatim|KonkreteBesucher>

    <em|Zweck:> Definition einer neuen Operation auf Klassen, ohne diese
    Klassen zu ver�ndern.

    <image|besucher.png|40%|40%||>

    <item*|Fabrikmethode>Definiert eine Klassenschnittstelle mit Operationen
    zum Erzeugen eines Objekts, aber l�sst <em|Unterklassen entscheiden,> von
    <em|welcher Klasse> das zu erzeugende Objekt ist.

    <em|Mitwirkende:> <verbatim|Erzeuger> (mit abstrakter Fabrikmethode),
    <verbatim|KonkreterErzeuger> (der die Fabrikmethode implementiert),
    <verbatim|Produkt>, <verbatim|KonkretesProdukt>

    <em|Anwendung:> Klasse kennt Objekte, die sie erzeugt, nicht im Voraus;
    Delegation an Hilfs-Unterklassen.

    Fabrikmethode <math|<wide|=|^>> Einschubmethode bei einer
    Schablonenmethode f�r Objekterzeugung.

    <image|fabrikmethode.png|40%|40%||>

    <item*|Kompositum>F�gt Objekte zu <em|Baumstrukturen> zusammen, um
    Hierarchien zu repr�sentieren. Einheitliche Behandlung von Objekten wie
    Aggregaten.

    <em|Mitwirkende:> <verbatim|Komponente<strong|>> (gemeinsame, abstrakte
    Oberklasse), <verbatim|Kompositum>, <verbatim|Blatt>

    <em|Beispiel:> <verbatim|Component>-Klasse in Java

    <image|kompositum.png|40%|40%||>

    <image|kompositum2.png|40%|40%||>

    <item*|Schablonenmethode>Definiert das <em|Skelett eines Algorithmus> in
    einer abstrakten Klasse, wobei einzelne Schritte an die Unterklassen
    delegiert werden. Unterklassen k�nnen einzelne Schritte des Algorithmus
    ver�ndern, nicht aber seine Struktur.

    Schritte werden auch <em|Einschubmethoden> oder <em|Hooks> genannt.

    <em|Zweck:> Festlegen der Struktur eines Algorithmus, Herausziehen
    gemeinsamen Verhaltens.

    <em|Siehe auch:> Architekturmuster \RFramework``

    <image|schablonenmethode.png|40%|40%||>

    <item*|Strategie>Definiert eine <em|Familie von Algorithmen,> kapselt sie
    und macht sie austauschbar.

    <em|Mitwirkende:> <verbatim|Kontext> (�ber <em|Aggregation> mit Strategie
    verkn�pft), <verbatim|Strategie> (abstrakt),
    <verbatim|KonkreteStrategie>n

    <em|Zweck:> Variation des Algorithmus unabh�ngig vom nutzenden Klienten.

    <em|Anwendbarkeit:> Viele verwandte Klassen, die sich nur in ihrem
    Verhalten unterscheiden; unterschiedliche Verhaltensweisen f�r eine
    Klasse.

    <image|strategie.png|40%|40%||>
  </description>

  <subsubsection|Zustandshandhabungsmuster>

  Bearbeiten den <em|Zustand> von Objekten, unabh�ngig von deren Zweck.

  <\description>
    <item*|Einzelst�ck>Es existiert genau <em|ein Exemplar> einer Klasse, das
    einen globalen Zugriffspunkt besitzt. Die Klasse selbst verwaltet dieses
    Exemplar und f�ngt die Befehle zum Erzeugen neuer Objekte ab.

    <image|einzelstueck.png|40%|40%||>

    <item*|Fliegengewicht>Objekte kleinster Granularit�t werden <em|gemeinsam
    genutzt,> um grosse Mengen von ihnen <em|effizient speichern> zu k�nnen.

    <em|Innerer/intrinsischer Zustand:> f�r alle Exemplare gemeinsam, wird in
    der Fliegengewicht-Instanz gespeichert.

    <em|�usserer/extrinsischer Zustand:> f�r jedes Exemplar unterschiedlich,
    wird in externer Datenstruktur gespeichert.

    <em|Mitwirkende:> <verbatim|FliegengewichtFabrik>,
    <verbatim|Fliegengewicht> (abstrakt), <verbatim|KonkreteFliegengewicht>e

    <image|fliegengewicht.png|40%|40%||>

    <item*|Memento><em|Externalisiert> eine Momentaufnahme des <em|internen
    Zustands> eines Objekts (aber ohne die Implementierungsdetails
    offenzulegen), sodass das Objekt sp�ter in diesen Zustand zur�ckversetzt
    werden kann.

    <em|Beispiele:> Speicherung von Spielst�nden, naiver Undo-Mechanismus.

    <image|memento.png|40%|40%||>

    <item*|Prototyp>Objekterzeugung durch Verwendung und <em|Klonen> eines
    typischen Exemplars.

    <em|Beispiel:> <verbatim|Object.clone()> erstellt in Java eine \Rseichte
    Kopie`` (Gleichheit 1. Stufe) eines Objekts

    <em|Zweck:> Vermeidet z.B. Klassenhierarchie von Fabriken, die parallel
    zur Klassenhierarchie der Produkte verl�uft. Anwendbar auch, wenn die
    Klassen zu erzeugender Objekte erst zur Laufzeit spezifiziert werden oder
    das Erzeugen eines Objekts mehr Zeit erfordert als das Anlegen einer
    Kopie.

    <image|prototyp.png|40%|40%||>

    <item*|Zustand>�ndert das <em|Verhalten> eines Objekts, wenn sich dessen
    <em|interner Zustand> �ndert. [Siehe Implementierung von
    Zustandsautomaten]

    <image|zustand.png|40%|40%||>
  </description>

  <subsubsection|Steuerungsmuster>

  Steuerung des <em|Kontrollflusses,> Aufruf der richtigen Methode zur
  richtigen Zeit.

  <\description>
    <item*|Befehl (command)>Kapselt einen Befehl als Objekt.

    <em|M�glichkeiten:> Warteschlange von Operationen, Logbuch,
    R�ckg�ngigmachen, Makrobefehle [Befehl + Kompositum], Parametrisierung
    einer Operation.

    <em|Charakteristisch:> Methode <verbatim|f�hreAus()> des Befehlsobjekts.

    <image|befehl.png|40%|40%||>

    <item*|Auftraggeber/-nehmer (master/worker)>Auftraggeber <em|verteilt
    Arbeit> an identische Arbeiter (Auftragnehmer) und berechnet das
    Endergebnis aus den zur�ckgelieferten Teilergebnissen.

    <em|Zweck:> Teile & Herrsche, Parallelisierung.

    <em|Beispiele:> Seti@home, Folding@home

    <image|masterworker.png|40%|40%||>
  </description>

  <subsubsection|Bequemlichkeitsmuster>

  <em|Sparen> Schreib- oder Denkarbeit

  <\description>
    <item*|Bequemlichkeitsklasse>Vereinfacht Methodenaufruf durch Speichern
    der (Standard-)Parameterwerte in einer speziellen Klasse
    (Bequemlichkeitsklasse). Die Standardwerte k�nnen <em|w�hrend des
    Programmablaufs> gesetzt werden und gelten dann f�r alle zuk�nftigen
    Aufrufe.

    <em|Charakteristisch:> Methode <verbatim|setzeZustand()>, �berladene
    Methoden mit verschiedenen Parameteranzahlen

    <image|beqklasse.png|40%|40%||>

    <item*|Bequemlichkeitsmethode (vorbelegte Parameter)>Vereinfachung des
    Methodenaufrufs durch die Bereitstellung h�ufig genutzter
    Parameterkombinationen in <em|�berladenen Methoden.>

    <image|beqmethode.png|40%|40%||>

    <item*|Fassade>Bietet eine <em|einheitliche Schnittstelle> zu einer Menge
    von Schnittstellen eines Subsystems. <em|Vereinfacht> die Benutzung eines
    komplexen Subsystems und <em|entkoppelt> das Subsystem von den Klienten
    und anderen Subsystemen.

    <em|Wichtig:> Kein Stellvertreter, die Subsystemklassen sind bei Bedarf
    trotzdem direkt nutzbar.

    <image|fassade.png|40%|40%||>

    <item*|Null-Objekt><em|Stellvertreter> eines Objekts mit gleicher
    Schnittstelle, der nichts tut. Vermeidet unn�tige
    <verbatim|null>-Pr�fungen.

    <em|Beispiel:> Swing-Adapterklassen mit leeren Methodenr�mpfen.

    <image|nullobjekt.png|40%|40%||>
  </description>

  <section|Implementierungsphase>

  <\itemize-minus>
    <item>Konzeption von <em|Datenstrukturen> und <em|Algorithmen>

    <item>Strukturierung des Programms durch geeignete
    <em|Verfeinerungsebenen>

    <item><em|Dokumentation> der Probleml�sung und der
    Implementierungsentscheidungen

    <item><em|Umsetzung> der Konzepte in die Konstrukte der verwendeten
    Programmiersprache

    <strong|<item>Ergebnis:> Quellcode inkl. Dokumentation, Bin�rcode,
    ausf�hrbare Testf�lle und Testprotokoll bzw. Verifikationsdokumentation
  </itemize-minus>

  <subsection|Abbildung von UML in Code>

  <\description>
    <item*|Klassen>In OO-Sprachen: UML-Klasse <math|\<rightarrow\>>
    Programmiersprachenklasse. In Nicht-OO-Sprachen: Verbund/Record, der die
    Attribute enth�lt + parametrisierte Methoden; Simulation der Vererbung
    durch manuelles Hinzuf�gen der Attribute der Oberklasse

    <item*|Assoziationen>

    <image|assoz.png|468px|119px||>

    <image|assoz2.png|427px|204px||>

    Assoziationsklassen:

    <image|assoz3.png|447px|248px||>

    Wichtig bei �nderungen: ACID-Prinzip (<em|Atomicity> [\Rganz oder gar
    nicht``], <em|Consistency> [am Ende steht immer ein konsistenter
    Zustand], <em|Isolation> [keine Beeinflussung durch andere Threads],
    <em|Durability> [�nderungen sind dauerhaft f�r alle Threads zu sehen])

    <item*|Zustandsautomaten>Entweder <em|implizite Speicherung> (Berechnung
    des Zustands eines Exemplars aus seinen Attributwerten) mit impliziter
    Zustands�bergangsfunktion oder <em|explizite Speicherung> des Zustands in
    einer Instanzvariablen.

    <em|Eingebettete explizite Speicherung:> Fallunterscheidung nach Zustand
    in jeder Methode

    <em|Ausgelagerte explizite Speicherung (Entwurfsmuster \RState``):>
    Auslagern des Zustands (samt Methoden) in eine Zustandklasse und
    Speicherung des aktuellen Zustands in Instanzvariablen.
  </description>

  <subsection|Parallelit�t>

  <strong|Thread/Faden:> Ausf�hrbarer Instruktionsstrom in einem Prozess mit
  eigenem Befehlszeiger und Stack, aber gemeinsamem Adressraum, gemeinsamem
  Heap und gemeinsamen Ressourcen (z.B. Dateien) mit anderen F�den.

  <subsubsection|Parallelit�t in Java>

  <\itemize-minus>
    <item>Implementierung des Interfaces <verbatim|Runnable> oder der Klasse
    <verbatim|Thread> (die ihrerseits <verbatim|Runnable> implementiert)

    <item>Implementierung der Methode <verbatim|run()>

    <item>Aufruf mittels der Methode <verbatim|start()>, darf nur einmal
    aufgerufen werden!

    <item>Zusammenf�hren (Warten auf Beendigung von Thread <verbatim|t>)
    mittels <verbatim|t.join()>

    <item>Als <verbatim|volatile> deklarierte Variablen werden nicht im Cache
    gespeichert und nach jeder �nderung wieder in den Speicher geschrieben.

    <item>Monitore sch�tzen kritische Abschnitte: Versucht eine Aktivit�t,
    einen besetzten Monitor zu betreten, wird sie solange blockiert, bis der
    Monitor wieder freigegeben wird. Dieselbe Aktivit�t kann einen Monitor
    mehrmals betreten.

    <item>Synchronisierung: Block mit <verbatim|synchronized(obj)> [Monitor
    von <verbatim|obj> wird benutzt] oder <verbatim|synchronized>-Methode
    [Monitor von <verbatim|this> bzw. bei statischen Methoden der Monitor der
    Klasse wird benutzt] �bernimmt das Betreten und Verlassen des Monitors.

    <item>Warten auf einen Monitor mit <verbatim|wait> [bzw.
    <verbatim|this.wait()> in synchronisierten Methoden] gibt den
    betreffenden Monitor frei und wartet eine angegebene Zeitspanne oder bis
    zum Erhalt eines Signals via <verbatim|notifyAll>.

    Aufgrund von <em|spurious wake-ups> muss <verbatim|wait()> immer in einer
    Schleife mit W�chterbedingung stehen!

    Es muss ausserdem eine <verbatim|InterruptedException> gefangen werden
    (ausgel�st durch <verbatim|Thread.interrupt()>) <math|\<rightarrow\>>
    z.B. sauberes Beenden eines Threads.

    <item>Vermeidung von <strong|Deadlocks> (Blockaden): Monitore immer in
    derselben Reihenfolge anfordern

    <item><verbatim|java.util.concurrent> enth�lt thread-sichere
    Implementierungen h�ufig genutzer Klassen.
  </itemize-minus>

  <subsubsection|Parallele Entwurfsmuster>

  <\description>
    <item*|Gebietszerlegung>Teilen des Problems in Teilprobleme, die parallel
    gel�st werden

    <item*|Master/Worker>Siehe entsprechendes Entwurfsmuster

    <item*|Erzeuger/Verbraucher>(mit Puffer)

    <item*|Fliessband>Eigener Thread pro Fliessbandstufe.

    <item*|Paralleles \RTeile und Herrsche``>Parallele Verarbeitung der
    Teilprobleme bis zu einer gewissen Gr�sse, ab da sequentielle Bearbeitung
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
    Prozessoren>Vergleich der parallelisierten Ausf�hrung mit der besten
    sequenziellen Ausf�hrung:

    <\equation*>
      S<around*|(|p|)>=<frac|T<around*|(|1|)>|T<around*|(|p|)>>
    </equation*>

    Idealfall: <math|S<around*|(|p|)>=p>

    <item*|Effizienz>Anteil an der Ausf�hrungszeit, die jeder Prozessor mit
    n�tzlicher Arbeit verbringt

    <\equation*>
      E<around*|(|p|)>=<frac|S<around*|(|p|)>|p>
    </equation*>

    Idealfall: <math|E<around*|(|p|)>=1>

    <item*|Laufzeit>Wenn <math|\<sigma\>> die Ausf�hrungszeit des
    sequentiellen, nicht parallelisierbaren Teils und <math|\<pi\>> die Zeit
    f�r die sequentielle Ausf�hrung des parallelisierbaren Teils eines
    Algorithmus ist:

    <\equation*>
      T<around*|(|p|)>=\<sigma\>+<frac|\<pi\>|p>
    </equation*>

    Gesamtlaufzeit des Algorithmus auf <math|p> Prozessoren/Kernen

    <item*|Amdahls Gesetz>Wenn <math|f=<frac|\<sigma\>|\<sigma\>+\<pi\>>> der
    Anteil des sequentiellen, nicht parallelisierbaren Teils am Algorithmus
    ist, dann gilt f�r den Speedup:

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
    Versagen f�hren kann

    <item*|Irrtum (mistake)>Menschliche Aktion, die einen Defekt verursacht.
  </description>

  Fehlerklassen:

  <\description>
    <item*|Anforderungsfehler (Defekt im Pflichtenheft)>Inkorrekte Angaben,
    unvollst�ndige Angaben �ber funktionale Anforderungen, Inkonsistenz,
    Undurchf�hrbarkeit

    <item*|Entwurfsfehler (Defekt in der Spezifikation)>Unvollst�ndige oder
    fehlerhafte Umsetzung der Anforderung, Inkonsistenz in der Spezifikation;
    Inkonsistenz zwischen Anforderung, Spezifikation und Entwurf

    <item*|Implementierungsfehler (Defekt im Programm)>Fehlerhafte Umsetzung
    der Spezifikation.
  </description>

  Glossar

  <\description>
    <item*|Test (Softwaretest)>F�hrt eine oder mehrere Komponenten
    <strong|(Testling, Pr�fling, Testobjekt)> unter bekannten Bedingungen aus
    und �berpr�ft ihr Verhalten.

    <item*|Testfall>Satz von Daten f�r die Ausf�hrung eines Teils oder eines
    Testlings.

    <item*|Testtreiber/Testrahmen>Steuert die Ausf�hrung der Testlinge und
    versorgt sie mit Testf�llen.

    <item*|Testphasen>Komponententest, Integrationstest, Systemtest,
    Abnahmetest

    <image|testphasen.png|50%|||>

    <item*|Dynamisches Testverfahren (Testen)>Ausf�hren des zu testenden
    Programms mit bestimmten Testf�llen

    <em|Beispiel:> Kontroll- und datenflussorientierte Tests, funktionale
    Tests (black box testing), Leistungstests

    <item*|Statische Testverfahren (Pr�fen)>Analyse des Quellcodes ohne
    Ausf�hren des Programms

    <em|Beispiel:> Manuelle Pr�fmethoden (Review), Pr�fprogramme (statische
    Analyse, etwa Checkstyle)

    <item*|White-Box-Testen>Bestimmen der Testf�lle mit Kenntnis von
    Kontroll- und Datenfluss.

    <item*|Black-Box-Testen>Bestimmen der Testf�lle ohne Kenntnis von
    Kontroll- und Datenfluss, nur aus der Spezifikation heraus.
  </description>

  <strong|Testhelfer> ersetzen noch nicht implementierte Klassen:

  <\description>
    <item*|Stummel (stub)>Nicht oder nur rudiment�r implementiert, dient als
    Platzhalter f�r Funktionalit�t.

    <item*|Attrappe (dummy)>Simuliert die Implementierung zu Testzwecken.

    <item*|Nachahmung (mock)>Attrape mit zus�tzlicher Funktionalit�t, etwa
    Reaktion auf bestimmte Eingaben oder Verhaltens�berpr�fungen.
  </description>

  Stummel und Attrappen werden durch echte Implementierungen ersetzt,
  Nachahmungen sind auch f�r zuk�nftiges Testen n�tzlich.

  <subsection|Kontrollflussorientierte Testverfahren>

  Vollst�ndigkeitskriterien werden anhand des <strong|Kontrollflussgraphen>
  definiert

  <\description>
    <item*|Anweisungs�berdeckung>Jeder Grundblock des Programms wird
    ausgef�hrt.

    Metrik: <math|C<rsub|Anweisung>=C<rsub|0>=<frac|Anzahl durchlaufener
    Anweisungen|Anzahl aller Anweisungen>>

    <item*|Zweig�berdeckung>Alle Zweige (Kanten) im Kontrollflussgraphen
    werden traversiert.

    Metrik: <math|C<rsub|Zweig>=C<rsub|1>=<frac|Anzahl durchlaufener
    Zweige|Anzahl aller Zweige>>

    <item*|Pfad�berdeckung>Alle unterschiedlichen Pfade werden ausgef�hrt --
    kann nicht immer anwendbar sein, ist nicht praktikabel

    <item*|Einfache Bedingungs�berdeckung>Jede atomare Bedingung wird einmal
    mit <verbatim|wahr> und einmal mit <verbatim|falsch> belegt. Nicht
    ausreichendes Testkriterium!

    <item*|Mehrfache Bedingungs�berdeckung>Die atomaren Bedingungen werden
    mit allen m�glichen Kombinationen der Wahrheitswerte belegt. [Aufwendig
    und unpraktikabel]

    <item*|Minimal-mehrfache Bedingungs�berdeckung>Jede Bedingung (ob atomar
    oder zusammengesetzt) muss einmal zu <verbatim|wahr> und einmal zu
    <verbatim|falsch> evaluieren.
  </description>

  <image|testverfahren.png|40%|40%||>

  <strong|Behandlung von Schleifen:>

  <\itemize-minus>
    <item>Ein Satz Testf�lle, die den Schleifenrumpf einmal queren

    <item>Ein Satz Testf�lle, die den Schleifenrumpf mindestens zweimal
    queren

    <item>Innerhalb der Schleife: Zweig�berdeckung
  </itemize-minus>

  <subsection|Funktionale Testverfahren>

  <em|Ziel:> Testen der Funktionalit�t, die in der Spezifikation festgelegt
  ist.

  Testfallbestimmung:

  <\description>
    <item*|Funktionale �quivalenzklassenbildung>Zerlegen des Wertebereichs
    der Eingabeparameter und des Definitionsbereichs der Ausgabeparameter in
    �quivalenzklassen.

    Testen mit je einem Repr�sentanten aus jeder �quivalenzklasse.

    <item*|Grenzwertanalyse>Wie �K-Bildung, aber es werden Elemente <em|auf
    und um den Rand> der �quivalenzklasse als Testf�lle genommen.

    <item*|Zufallsanalyse>Zuf�llige Testf�lle, sinnvoll als Erg�nzung zu
    anderen Verfahren oder wenn die Korrektheitspr�fung automatisch erfolgen
    kann (z.B. Sortierverfahren)

    <item*|Test von Zustandsautomaten>Alle �berg�nge m�ssen mindestens einmal
    durchlaufen worden sein.
  </description>

  <subsection|Leitungstests>

  <\description>
    <item*|Lasttest>Testen auf Einhalten der Spezifikation <em|im erlaubten
    Grenzbereich.>

    <item*|Stresstest>Testen des Verhaltens beim <em|�berschreiten der
    definierten Grenzen> und Verhalten nach R�ckgang der �berlast.
  </description>

  <subsection|Manuelle Pr�fmethoden>

  <\description>
    <item*|Durchsicht/Walkthrough>Entwickler f�hrt Kollegen durch seinen
    Code/Entwurf; Kollegen stellen Fragen und machen Anmerkungen

    <item*|�berpr�fung/Review>Formal zwischen Durchsicht und Inspektion,
    �berpr�fung durch einen \Rexternen`` Gutachter.

    <item*|Inspektion>�berpr�fung anhand von Pr�flisten oder Lesetechniken.
    Bis zu 90% aller entdeckten Defekte werden in Inspektionen gefunden; nur
    1/10--1/30 der Kosten gegen�ber Testen identifizierter Fehler, ROI oft
    weit �ber 500%
  </description>

  <subsubsection|Software-Inspektion>

  Mehrere Inspektoren [Vielaugenprinzip, Abstand, Erfahrung] untersuchen
  unabh�ngig dasselbe Softwaredokument, gefundene Defekte werden
  aufgeschrieben.

  <em|Ziel:> Probleme identifizieren (nicht l�sen)

  Phasen:

  <\description>
    <item*|1. Vorbereitung>Teilnehmer/Rollen festlegen, Dokumente
    vorbereiten, Ablauf planen

    <item*|2. Individuelle Fehlersuche>Jeder Inspektor pr�ft das Dokument
    (ca. 1 Seite/h), insgesamt maximal 1--4 Seiten, Aufschreiben der
    Problempunkte

    <item*|3. Gruppensitzung (2 h)>Problempunkte sammeln und einzeln
    besprechen, Verbesserungsvorschl�ge sammeln

    <item*|4. Nachbereitung>Problempunkte werden an Editor des Dokuments
    weitergeleitet, der klassifiziert die Defekte und leitet �nderungen ein.

    <item*|5. Prozessverbesserung>
  </description>

  Rollen:

  <\description>
    <item*|Inspektionsleiter>Leitet alle Phasen der Inspektion

    <item*|Moderator>Leitet die Gruppensitzung (meist der Inspektionsleiter)

    <item*|Inspektoren>Pr�fen das Dokument

    <item*|Schriftf�hrer>Protokolliert Defekte in der Gruppensitzung

    <item*|Editor>Klassifiziert und behebt Defekte (meist der Autor)

    <item*|Autor>Hat das Dokument verfasst
  </description>

  Lesetechniken:

  <\description>
    <item*|Ad-hoc>

    <item*|Pr�flisten>(Abhak-)Listen mit Fragen zum Dokument

    <item*|Szenarien>Anleitung zum Pr�fen des Dokuments aus einer bestimmten
    Perspektive [z.B. Wartung, Code-Analyst]; Satz von Fragen (i.A.
    effektiver als Pr�flisten)
  </description>

  <subsection|Integrationstests>

  <em|Voraussetzung:> Komponenten bereits einzeln �berpr�ft.

  <em|Ziel:> Zusammenspiel der Komponenten testen.

  Schrittweise Integration einer Komponente in die bereits gepr�fte
  Komponentenmenge.

  Folien S. 125--137

  <section|Wartungs- und Pflegephase>

  <\description>
    <item*|Wartung>Behebung von <em|Fehler>ursachen von in Betrieb
    befindlichen Software-Produkten, wenn die Fehlerwirkung bekannt ist
    <em|(ereignisgesteuert)>

    <item*|Pflege>Durchf�hrung von �nderungen und <em|Erweiterungen> von in
    Betrieb befindlichen Software-Produkten, wenn die Art der gew�nschten
    �nderungen/Erweiterungen feststeht.
  </description>

  <section|Prozessmodelle>

  <\description>
    <item*|Programmieren durch Probieren>(Code&Fix, Trial&Error) Erst Code
    schreiben, dann Anforderungen etc. �berlegen und Programm anpassen

    Fehlende Entwurfsphase <math|\<rightarrow\>> schlecht strukturierter
    Code, kostspielige Wartung, keine Dokumentation, keine Teamarbeit

    <item*|Wasserfallmodell>Siehe oben, jede Aktivit�t wird vollst�ndig
    (streng sequentiell) durchgef�hrt <math|\<rightarrow\>> keine
    R�ckkopplung, wenig Parallelisierung

    <item*|V-Modell XT>Festlegung von Aktivit�ten, Produkten [Ergebnis von
    Aktivit�ten] und Verantwortlichkeiten

    <em|4 Submodelle:> Projektmanagement, Qualit�tssicherung,
    Konfigurationsmanagement, Systemerstellung; jeweils gegliedert in
    <em|Vorgehensbausteine.>

    <em|4 Bearbeitungszust�nde:> Geplant, In Bearbeitung, Vorgelegt,
    Akzeptiert

    <em|\RHandels�bliches`` V-Modell:>\ 

    <image|v-modell.png|503px|215px||>

    <item*|Prototypenmodell>Kann Arbeitsmoral und Vertrauen zwischen Anbieter
    und Kunden st�rken. Ganz wichtig: <strong|Prototyp wird weggeworfen!>
    Nach Kl�rung aller wichtigen Fragen und Wegwurf des Prototyps: Vorgehen
    nach anderem Modell

    <item*|Iteratives Modell>Funktionalit�t wird Schritt f�r Schritt erstellt

    <\description>
      <item*|Evolution�r>Nur der Teil, der als n�chstes hinzugef�gt wird,
      wird geplant und analysiert (<math|x>-faches Wasserfallmodell)
      <math|\<rightarrow\>> Problem im Zusammenspiel zwischen den Teilen

      <item*|Inkrementell>Alles wird geplant und analysiert [was aber
      eigentlich vermieden werden soll] und <math|n>-mal �ber
      Entwurfs-/Implementierungs-/Testphase iteriert
    </description>

    <math|\<rightarrow\>> Mischformen

    <item*|Synchronisiere und Stabilisiere>(\RMicrosoft-Modell``)
    Organisation in kleinen Teams mit Freiheit f�r eigene Ideen/Entw�rfe:

    Regelm�ssige <em|Synchronisation> (n�chtlich), regelm�ssige
    <em|Stabilisierung> (3 Monate)

    Planungsphase [<em|vision statement>, Spezifikation, Zeitplan],
    Entwicklungsphase [wichtigste Funktionen zuerst, Testen parallel zur
    Entwicklung, 3x Stabilisierung], Stabilisierungsphase [Beta-Tests,
    Codestabilisierung]

    <item*|Agile Methoden (speziell Extreme Programming)>Wenig Vorausplanung,
    inkrementelle Planung, wenig unn�tige Dokumente, flexible Reaktion auf
    �nderungen, Einbeziehung des Kunden in die Entwicklung

    <em|Methoden:> Paarprogrammierung, sehr h�ufiges und automatisches Testen
    [automatische Komponententests, durch Kunden spezifizierter
    Akzeptanztest], testgetriebene Entwicklung [jede Verhaltens�nderung am
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
    <associate|auto-42|<tuple|9|?>>
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
      Ann�herung|<pageref|auto-11>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Konfigurationsverwaltung>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Einf�hrung>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Planungsphase
      (Anforderungserhebung)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Lastenheft
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1.5fn>|Durchf�hrbarkeitsuntersuchung
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

      <with|par-left|<quote|1.5fn>|Parallelit�t
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|3fn>|Parallelit�t in Java
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

      <with|par-left|<quote|1.5fn>|Manuelle Pr�fmethoden
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|3fn>|Software-Inspektion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|1.5fn>|Integrationstests
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Wartungs-
      und Pflegephase> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Prozessmodelle>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>