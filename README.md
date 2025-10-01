# Bling Coding Challenge

**Jakob Merten**

## Überblick

### Projektarchitektur

Die Anwendung ist nach dem **Clean Architecture**-Prinzip strukturiert. Die Architektur ist für diesen Anwendungsfall wahrscheinlich zu komplex. Ich habe sie trotzdem gewählt, um die Konzepte zu verdeutlichen.

- **`core/`**: Zentrale Konfigurationen und Hilfsmethoden (get_it, Theming, etc.)
- **`features/`**: Alle Features der App (In diesem Fall nur ein Feature: `age_estimation`)

Jedes Feature ist in vier Schichten unterteilt:
- **Präsentationsschicht**: Flutter-Widgets (einzelne Komponenten und Screens)
- **Applikationsschicht**: Business Logic (BLoCs), könnte auch Use Cases enthalten. In diesem Fall aber nur die Blocs, die mit der Domänenschicht kommunizieren und den State an die Benutzeroberfläche senden
- **Domänenschicht**: Geschäftslogik und Value Objects, definiert Interfaces der Repositories
- **Infrastrukturschicht**: Externe Datenquellen und Implementierungen der Repositories


## Verwendete Bibliotheken

- **`bloc`**, **`flutter_bloc`**, **`bloc_test`**: State Management mit dem BLoC-Pattern
- **`freezed`**: Code-Generierung für Boilerplate-Code und einfacheres Datenmanagement
- **`get_it`**: Service Locator für Dependency Injection
- **`dartz`**: Funktionale Programmierung für Dart (Either-, Option-Typen) - ist notwendig, um den Ansatz mit den Value Objects umzusetzen (siehe unten)
- **`dio`**: HTTP-Client für vereinfachte API-Kommunikation
- **`toastification`**: Toast-Nachrichten für Error-Handling


## Domain-Driven Design (DDD)

### Value Objects

Ich implementiere **Value Objects** für `Name` und `Age` nach dem DDD-Ansatz. Inspiriert ist das von [ResoCoder's Firebase DDD Serie](https://resocoder.com/category/tutorials/flutter/firebase-ddd/).

Dadurch wird die Domänenlogik zentralisiert und die Validierungslogik für die zentralen Werte dieser App (Age und Name) befindet sich an einem zentralen Ort. Diese Implementierung ist für diesen Anwendungsfall wahrscheinlich zu ausführlich. Ich habe diese Muster hier aber trotzdem gewählt, um das Konzept zu verdeutlichen.

**Funktionsweise:**
- Jedes Value Object enthält einen Wert und die Validierung
- Bei der Objekterstellung wird direkt validiert
- Das Objekt enthält entweder ein `ValueFailure` (bei invalidem Zustand) oder den validen Wert
- Andere Schichten können beispielsweise über die `isValid()`-Methode den Zustand prüfen oder über die `getOrCrash`-Methode den Wert erhalten (diese Methode sollte nur aufgerufen werden, wenn sich zu diesem Zeitpunkt in der App ein valider Wert befinden muss, da die App ansonsten abstürzt)


```
