# PalvelintenHallinta
Kurssin miniprojekti Saltilla

# Vaihe yksi:
- Tarkoitus tehdä uudelle Linux-virtuaalikoneelle asetustiedosto,
jotta asetuksia ei tarvitse ajaa käsin.
- Ekaksi tehdään git-repo, kloonataan se, tehdään init.sls-tiedosto,
joka asentaa yhden ohjelman.
- Tehdään projektille nettisivu, joka on tämä tässä.


# Vaihe kaksi:
- Naitettu slave ja master-koneet yhteen.
- Avattu git-repo.
- Tehty init.sls, joka asentaa paketteja, asettaa näppäimistöasetukset ja yrittää asettaa näytön resoluution.
- Tehty resoluutio.sh-tiedosto, jonka pitäisi asettaa resoluutio.
- Tehty keyboard-tiedosto, joka asettaa näppäimistön suomeksi.

# Vaihe kolme:
- Muutettu rakennetta niin, että omat kokonaisuudet ovat omassa kansiossa. Tällä hetkellä kolme eri kokonaisuutta.
    1. asennus - asentaa paketteja
    2. asetukset - säätää ohjelmien ja käyttöjärjestelmän  asetuksia
    3. sshd - ottaa käyttöön ssh:n ja säätää sen asetuksia
- Conf-tiedostot yms. sijaitsevat projektin juuressa.
- Juuressa myös init.sls, jolla voi ajaa kaikki kokonaisuudet kerralla. Käytetään includea.
- Poistettu rikkinäinen resoluutio-asetus.
