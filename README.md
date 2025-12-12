English
Required:

    Gamemt E6 gaming console, 2025 version

    A good brand microSD card, not a no-name Chinese junk!

    1 bootable Linux system on a flash drive (ubuntu-desktop, lubuntu-desktop, kubuntu-desktop)

    A USB microSD card reader

    A brain with a suitable IQ, 90-100 IQ is enough (note: brains corrupted by TikTok and other junk are not supported!).

    A Windows computer, because the application for writing games to the SD card for the Gamemt E6 2025 console is for Windows.

    Section for preparing the microSD card for use with the program (this is required, otherwise the console will not read games correctly or at all!)

    Boot Linux in liveCD mode.

    Open the bash terminal.

    Copy the script to the desktop: card_format_PL.sh

    Go to the file properties and in permissions, give it execute rights (checkbox).

    Run the script with the command: ./card_format_PL.sh
    Note: You must be in the location where you copied it, e.g., /home/user_name/Desktop.
    Follow the script's instructions.
    Your external storage device name might be, for example, "SDD"
    Example:
    SDD
    |
    --SDA1

    Using the game writing program.
    WARNING!
    Upon first launch, the program will create a local folder structure for you to make it easier to use the program and manage ROMs (games). It's similar to the one on the SD card, with the difference that it stores ROMs and cover images in a subfolder called GUI for each emulator.
    Path to the structure: gamemt_gui\_internal\gamemt
    Any interaction with the files on the card: editing, saving a file using a program other than gamemt_gui.exe may damage the game system on the card and it will not work on the console; you might get a black screen flashing. In that case, you must repeat everything from point 2 again. THE ONLY ALLOWED OPERATION ON THE CARD IS TO SELECT EVERYTHING IN THE CARD'S MAIN FOLDER AND DELETE ALL CONTENTS. Then you can start point 2 again, and everything should work.
    Emulators that do not work are VCPS1 and VCPS2. The list is created, but the games do not work.
    Why? Because immediately after turning on, the console itself destroyed the folder and file structure for VCSP1 and VCSP2. And I suspect there was a BIOS or other files there without which these emulators will not run games. If anyone has an image of the original card before turning on the console, please send a download link; this will allow me to add these features to my program.

    If you have already prepared the card properly, you can run the program; if not, go back to point 1.

    Copy/download the program to any location, but I recommend directly to the disk or in one folder without spaces and special characters!

    Run the .exe program.

    All actions are described and provide logs of performed operations.

Example of correct usage:

    Select the letter of your (prepared!) SD card.

    Click "Prepare SD Card Structure" - the program prepares the card structure with appropriate directories and files so that games can be added to the correct emulator folders.

    Select from the list which emulator you will be uploading games for, e.g., vpsp (vpsp is the PSP emulator).

    Select the 'roms' folder (with games for PSP in our case). Files with the .ISO extension.
    In the gui folder, you can add cover images for them with the exact same name as the game file, or the exact same name with the suffix _001. Example cover in the GUI folder: GodOfWar_001.png (the game filename in roms is GodOfWar.iso)

    Click the "Add Games" button, wait for it to finish adding, and you're done.
    6*. If you are concerned that the game list is long and many are greyed out, then after connecting the SD card to the computer and running the program, use the "Update Game Lists (SD Card)" option.
    Remember to select the correct emulator from the System list whose list you want to update.

Important additional information:

    The "Rom Sites" button opens websites from which you can download ROMs (games) for emulators.

    The "Restore Stock Game List" button restores the original game list. The one that gets created during the card structure setup.

    Language -> select the program UI language.

    The "Show All Disks" checkbox shows all storage devices on your system. Currently connected internal drives, external storage, etc.!
    Do not use it if you are not sure!
Polski
Wymagane: 
-konsola gamemt E6 wersja 2025
- Karta microSD dobrej firmy nie bezimienny chiński badziew!
-1 System bootowalny system linux na predrive (ubuntu-desktop,lubuntu-desktop,kubuntu-desktop)
-Czytnik kart microSD na USB
- Mózg z odpowiednim ilorazem inteligencji 90- 100 iq starczy (uwaga mózgi zepsute tiktokiem i innym badziewiem nie są wspierane !).
- kompuer z systemem windows bo na ten właśnie jes aplikacja do nagrywania gier na karte sd da konsoli gamemt E6 2025
1.Sekcja prygotowania karty microSD do nagrywania programem(to jest wymagane inaczej konsola nie będzie czytać gier poprawnie lub wcale !)
-uruchom linux-a w trybie liveCD.
- uruchom bash terminal
- skopiuj skrypt na pulpit card_format_PL.sh
- wejdź we właściowści pliku i w prawach nadaj mu prawo do wykonywania (checkbox)
- uruchom skrypt poprzez komende:  ./card_format_PL.sh
uwaga musisz być w lokalizacj tam gdzie go skopiowałeś np. /home/user_name/Desktop
Postępuj zgodnie ze instrukcjami skryptu. 
Nazwa twojej pamięci zewnetrznej może być np. "SDD" 
przykład:
SDD
|
--SDA1

2. Używanie programu do nagrywania gier. 
UWAGA!
Program przy pierwszym uruchomieniu utowrzy ci skruktóre lokalną aby łątwiej było ci używać programu i zarządać romami(grami) taka jak na karcie SD tylko z tą różnicą że przchowuje romy i obrazki okłądek w podfolderze GUI dla każdego emulatora.
scieżka do struktury: gamemt_gui\_internal\gamemt
Jakakolwiek interkacja z plikami na karcie: edytowanie , zapisanie pliku poprzez inny program niż gamemt_gui.exe może uszkodzić system gier na karcie i nie będzie działać na konsoli , może migać czarnym ekranem. wtedy musisz powtórzyć wszystko z punktu 2 od nowa.  JEDYNĄ DOPUSZCZALNĄ OPERACJĄ NA KARCIE JEST ZAZNACZENIE WSZYSTKIEGO W GŁÓWNYM FOLDERZE KERTY I USUNIĘCIE CAŁEJ ZAWARTOŚCI .Wtedy możesz zacząć od nowa punktu 2-go i powinno wszsytko działać.
Emulatory które nie działają to VCPS1 i VCPS2. Lista się torzy ale gry nie działąją. 
Dlaczego ? Dlatego że odrazu po włączeniu konsola sama zniszczyła strukture folderów i plików dla VCSP1 i VCSP2. A ja podejrzewam że był tam BIOS lub inne pliki bez których te emulatory nie uruchomią gier. Jeśli ktoś ma obraz karty orginalnej przed właczeniem konsoli proszę o podesłanie linka do pobrania, dzieku temu będę mógł dodać te funkcje do mojego programu.
-jeśli masz już przygotowaną karte odpowienio możesz uruchomić program jeśli nie to wracaj do punktu 1. 
-kopiujesz / pobierasz program do dowlolnej lokalizacji ale polecam bezpośrednio na dysk lub w jednym folderze bez spacji i znaków specjalnych !
- uruchamiasz program exe.
- wszystkie akcje są opisane i dają logi wykonywanych operacji.
Przykłąd poprawnego użycia:
1.wybiersz litere sowjej kartySD(przygotowanej!)
2.Klikasz "Przygotuj Strukture KartySD"- program przygoduje strukture karty z odpowiednimi katalogiami i plikami aby można było dodawać gry do odpowiednich folderów emulatorów.
3.Wybierasz z listy do jakiego emulatora będziesz wgrywać gry np. vpsp (vpsp to emulator PSP)
4. wybiersz folder roms (z grami dla PSP w naszym przypadku). pliki z rozszerzeniem ISO
w folderze gui możesz do dać do nich okładki z identyczną nazwą jak plik gry lub identyczną nazwą i suffixem _001. przykład okładki w folderze GUI: GodOfWar_001.png (nazwa pliku gry w roms jest GodOfWar.iso)
5. kliknij przycisk Dodaj gry , czekasz aż się doda i gotowe.
6*. Jeśli nie odpowiadać że lista gier jest długa a sporo jest szarych to po podpięciu kartySD do komputera i uruchomieniu programu użyj opcji Aktualizuj listy gier(KartaSD).
Pamiętaj aby wybrać w liście System odpowiedni emulator którego listę chesz zaktualizaować. 

Ważdne dodatkowe inforamcje:
-przycisk Strony z Romami otwiera strony z których możesz pobierać romy(gry) na emulatory.
-przycisk przywróc liste gier (stock) przywraca spis orginalny listy gier. Ten który towrzy się prz strukturze karty.
- język -> wybiersz język UI programu 
- checkbox pokaż wszystkie dyski pokazuje wszystkie urządenia pamięci na twoim urządeniu. Dyski wewnetrzne obecnie podpięte , pamięci zewnetrzne etc !
Nie używaj jeśli nie jesteś pewien !
