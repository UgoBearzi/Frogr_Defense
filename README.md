# Frogr Defense
## Requisiti Funzionali
1. **Griglia per posizionare i vari elementi:** fatta di quadrati selezionabili col mouse.
2. **Vari elementi su griglia**: come il Tile, Road, Tower, Start, etc.
3. **Nemici con semplice pathfinding:** cioè seguono la loro strada per arrivare alla "torre".
4. **Torrette:** che sparano colpi ai nemici cioè hanno un'animazione semplice di sparare un proiettile.
5. **Menu a sinistra:** per selezionare quando iniziare la ondata, vedere la vita della torre e selezionare torrette.
6. **Sistema monetario:** per comprare torrette con soldi ottenuti uccidendo nemici;
## Requisiti non Funzionali
1. **Usabilità:** interfaccie semplici da usare;

## Scelte Progettuali
Il gioco è composto da una griglia che è composta da quadrati (Tiles) che verranno occupati da vari elementi
come ad esempio la strada per i nemici, il punto di plartenza dei nemici, la torre o le torrette. Un nemico
seguirà la strada in base alla direzione indicata nell'oggetto e quando arriverà alla torre morirà ed 
infliggerà una quantita di danno alla torre, se la torre ha 0 punti vita allora è game over. Le torrette si
possono selezionare dal menù, allora se dopo si clicca su uno spazio vuoto si posizionerà la torretta, una
volta posizionata si spenderà il costo della torretta, ogni volta che un nemico viene ucciso da una torretta
allora si guadagnerà un po di soldi.
## UML
![Progetto drawio (1)](https://github.com/user-attachments/assets/9b0717b4-7064-4bb2-951c-d5549d4212d5)
