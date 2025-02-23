# Frogr Defense
## Requisiti Funzionali
1. **Griglia per posizionare i vari elementi:** fatta di quadrati selezionabili col mouse.
2. **Vari elementi su griglia**: come il Tile, Road, Tower, Spawner e Turret.
3. **Nemici con semplice pathfinding:** cioè seguono la loro strada per arrivare alla torre.
4. **Torrette che sparano:** sparano ai nemici cioè hanno un'animazione semplice di sparare un proiettile.
5. **Menu a sinistra:** per selezionare quando iniziare la ondata, selezionare e comprare torrette.
6. **Sistema monetario:** per comprare torrette con soldi ottenuti uccidendo nemici.
7. **5 ondate:** sempre pù difficili.
## Requisiti non Funzionali
1. **Usabilità:** interfaccie semplici da usare.
## Scelte Progettuali
Il gioco è composto da una griglia che è a sua volta composta da quadrati (Tiles) che verranno occupati da vari elementi
come ad esempio la strada per i nemici, il punto di partenza dei nemici, la torre o le torrette. Un nemico parte dal punto 
di partenza (Spawner) e dopo seguirà la strada (Road) in base alla direzione indicata nell'oggetto e quando arriverà alla torre 
morirà ed infliggerà una quantita di danno alla torre, se la torre ha 0 punti vita allora è game over. Le torrette (Turret) si
possono selezionare dal menù, allora se dopo si clicca su uno spazio vuoto si posizionerà la torretta, una
volta posizionata si spenderà il costo della torretta, ogni volta che un nemico viene ucciso da una torretta
allora si guadagnerà una quantita di soldi in base al nemico.
## UML
![ProgettoFinitoUML](https://github.com/user-attachments/assets/28ad2b1e-6f67-43ab-a2e0-07c1c756ee92)
## Problemi riscontrati
1. La velocita dei proiettili aumentava con ogni sparo, risolto mettendo un tempo di delay tra i colpi
2. I costi delle torrette erano troppo alti o bassi, risolto provando con vari prezzi
3. I nemici non seguivano la strada, risolto mettendo un controllo che controlla se un nemico è all'interno della strada
4. I nemici infliggevano danno continuo alla torre, risolto mettendo una variabile ai nemici che controlla se sono visibili o meno
