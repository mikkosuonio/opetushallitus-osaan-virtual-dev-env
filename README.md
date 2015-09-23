# osaan.fi virtualisoidun kehitysympäristön pystytys

Tämä projekti pystyttää virtuaalisen kehitysympäristön [osaan.fi](https://github.com/Opetushallitus/osaan) projektille.

## Virtuaalikoneen luonti

```
vagrant up --provider virtualbox
```

## Siirtyminen virtuaalikoneeseen

```
vagrant ssh
```

## Lähdekoodin haku (virtuaalikoneessa)

```
git clone https://github.com/Opetushallitus/osaan.fi.git
git clone https://github.com/Opetushallitus/clojure-utils.git
```

## Kääntäminen ja paketointi (virtuaalikoneessa)

```
cd osaan.fi/app
./build.sh
```

```
cd osaan.fi/db
./build.sh
```

## Asennus paikalliseen kehitysympäristöön

Tätä ei voi nyt ajaa, koska virtuaalikoneita ei voi ajaa sisäkkäin.

TODO: korjaa

```
dev-scripts/init-db.sh
dev-scripts/init-app.sh
dev-scripts/deploy.sh
```

## Virtuaalikoneen tuhoaminen

```
vagrant destroy
```
