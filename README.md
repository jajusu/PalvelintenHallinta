# PalvelintenHallinta
Projektissa automatisoidaan uuden Linux-virtuaalikoneen asetusten ajaminen Saltilla. Asennetaan ohjelmia, säädetään ohjelmien asetuksia,
otetaan käyttöön SSH, UFW-palomuuri, Nginx-palvelin ja säädetään niiden asetuksia. Käyttöön voi ottaa joko yhden tai kaikki Saltin
 tiedostot oman tarpeen mukaan.

![tilat ajettu](https://linuxpalvelimet2021syksy.files.wordpress.com/2021/12/proj1.png "Tilat ajettu")

Saltin init.sls-tiedosto sijaitsevat aina omassa kansiossaan lukuunottamatta juuressa olevaa tiedostoa, joka ajaa kaikki tilat kerralla. 

Kaikki kerralla:
sudo salt 'orjanid' state.apply PalvelintenHallinta

Yksi moduuli:
sudo salt 'orjanid' state-apply PalvelintenHallinta/asenne

Kaikki erilliset asetustiedostot ja nettisivut jotka kopiodaaan minioneille, sijaitsevat projektin juuressa.

Master-koneena Debian 11 Bullseye ja orjana Ubuntu 20.04.3 LTS Focal Fossa.

Tämä on Haaga-Helian palvelintenhallinta-kurssin miniprojekti Saltilla. Kurssia opettaa Tero Karvinen. www.terokarvinen.com

# Vaihe 1:
- Tarkoitus tehdä uudelle Linux-virtuaalikoneelle asetustiedosto,
jotta asetuksia ei tarvitse ajaa käsin.
- Ekaksi tehdään git-repo, kloonataan se, tehdään init.sls-tiedosto,
joka asentaa yhden ohjelman.
- Tehdään projektille nettisivu, joka on tämä tässä.

# Vaihe 2:
- Naitettu slave ja master-koneet yhteen.
- Avattu git-repo.
- Tehty init.sls, joka asentaa paketteja, asettaa näppäimistöasetukset ja yrittää asettaa näytön resoluution.
- Tehty resoluutio.sh-tiedosto, jonka pitäisi asettaa resoluutio.
- Tehty keyboard-tiedosto, joka asettaa näppäimistön suomeksi.

# Vaihe 3:
- Muutettu rakennetta niin, että omat kokonaisuudet ovat omassa kansiossa. Tällä hetkellä kolme eri kokonaisuutta.
    1. asenna - asentaa paketteja
    2. asetukset - säätää ohjelmien ja käyttöjärjestelmän  asetuksia
    3. sshd - ottaa käyttöön ssh:n ja säätää sen asetuksia
- Conf-tiedostot yms. sijaitsevat projektin juuressa.
- Juuressa myös init.sls, jolla voi ajaa kaikki kokonaisuudet kerralla. Käytetään includea.
- Poistettu rikkinäinen resoluutio-asetus.

# Vaihe 4:
- Lisätty UFW-palomuuri ja sen asetustiedostot. Avaukset porteille 22,80,81,2222,4505 ja 4506.
- Lisätty Nginx-palvelin ja nettisivut, jotka vastaavat portista 81.
- Lisätty muistiinpanot.txt, jossa huomioita ongelmatilanteista.
- Kirjoitettu kuvaus.
- Rakenne nyt:
    1. asenna - asentaa paketteja
    2. asetukset - säätää ohjelmien ja käyttöjärjestelmän  asetuksia
    3. nginxserver - asentaa Ngingx-serverin, asetukset ja mallisivun
    4. palomuuri - asentaa UFW-palomuurin ja sen asetukset kuntoon 
    5. sshd - ottaa käyttöön ssh:n ja säätää sen asetuksia

# Vaihe 5:
- Testattu toimivuus Debian 11-orjalla.
- Orjalla tehtiin halutut asiat, mutta Salt-minion kaatui, eikä SSH-yhteys toiminut.
- Uudelleenkäynnistettiin Salt-minion paikallisesti, ajettiin tilat uudelleen, jonka jälkeen
kaikki toimi ja päästiin myös SSH:lla sisään.
- sudo service salt-minion status näyttää Salt-minionin tilan.
- Jotta Nginx toimisi aina, tulee huolehtia että Apache2 on pois päältä.
Lisätty Nginx-tiedostoihin
- Ubuntussa ja Debianissa eri versiot Firefoxista. Tehty sääntö asenna-tiedostoon.
