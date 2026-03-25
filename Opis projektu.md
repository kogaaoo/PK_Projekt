Temat projektu:

	Implementacja klasycznej gry planszowej “Go” dla dwóch graczy.

	Celem projektu jest stworzenie działającej aplikacji umożliwiającej rozgrywkę w chińską grę planszową Go dla dwóch osób przy jednym komputerze. Program będzie w pełni obsługiwał zasady gry, w tym:

- Naprzemienne stawianie kamieni (czarnych i białych) na przecięciach linii.

- Sprawdzanie legalności ruchu (zapobieganie postawieniu kamienia na zajętym polu lub polu bez tzw. "oddechów").

- Mechanikę zbijania kamieni przeciwnika, gdy stracą one wszystkie oddechy.

- Zliczanie punktów (terytorium + jeńcy) i wyłanianie zwycięzcy po zakończeniu partii (spasowaniu przez obu graczy).

- Gra będzie toczyć się na planszy o rozmiarze 9x9, 13x13 lub 19x19 do wyboru w menu.


Logika:

- **Inicjalizacja: Uruchomienie programu i wyświetlenie menu głównego (nowa gra, wyjście).**


- **Ustawienia partii: Wybór rozmiaru planszy.**

- **Pętla główna gry:**

  - **Wyświetlenie aktualnego stanu planszy oraz punktacji.**

  - **Wczytanie ruchu aktywnego gracza (np. podanie współrzędnych "c4" lub wpisanie komendy "pass").**

  - **Walidacja ruchu: sprawdzenie, czy ruch jest zgodny z zasadami (czy pole jest puste, czy ruch nie jest samobójczy, ewentualna implementacja reguły *Ko*).**

  - **Aktualizacja stanu planszy (usunięcie zbitych kamieni, przydzielenie punktów za jeńców).**

  - **Zmiana tury gracza.**

- **Zakończenie: Gdy obaj gracze pod rząd zadeklarują "PASS", następuje podliczenie terytorium, dodanie punktów za jeńców i ogłoszenie zwycięzcy.**

**Szkic interfejsu:**

**Tura: GRACZ 1 (Czarne: X)**

**Punkty (jeńcy): Czarne: 2 | Białe: 0**

A B C D E F G H I

+-------------------+

1 | . . . . . . . . . | 1

2 | . . X O . . . . . | 2

3 | . X . X O . . . . | 3

4 | . . X O O . . . . | 4

5 | . . . . . . . . . | 5

6 | . . . . . . . . . | 6

7 | . . . . . . . . . | 7

8 | . . . . . . . . . | 8

9 | . . . . . . . . . | 9

+-------------------+

A B C D E F G H I

 Wpisz swój ruch (np. d4) lub 'pass':
