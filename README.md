# osaan.fi virtualisoidun kehitysympäristön pystytys

Tämä projekti pystyttää virtuaalisen kehitysympäristön [osaan.fi](https://github.com/Opetushallitus/osaan.fi) projektille.

## Tarvittavat ohjelmistot (kehityskoneessa)

Asenna seuraavat ohjelmat kehityskoneellesi
- git
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

### Asennus Ubuntuun

Seuraavat komennot asentavat tarvittavat ohjelmistot Ubuntuun
```
sudo add-apt-repository "deb http://fi.archive.ubuntu.com/ubuntu/ trusty multiverse"
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y virtualbox
sudo apt-get install -y vagrant
```

## Lähdekoodin haku (kehityskoneessa)

```
git clone https://github.com/Opetushallitus/osaan.fi.git
```

## Virtuaalikoneiden luonti (kehityskoneessa)

```
cd osaan.fi/vagrant
vagrant up osaan-db
vagrant up osaan-app
```

```
cd <tämä projekti>
vagrant up --provider virtualbox
```

## Siirtyminen virtuaalikoneeseen (kehityskoneessa)

```
cd <tämä projekti>
vagrant ssh
```

## Lähdekoodin haku (virtuaalikoneessa)

```
git clone https://github.com/Opetushallitus/osaan.fi.git
git clone https://github.com/Opetushallitus/clojure-utils.git
```

## Kääntäminen ja paketointi (virtuaalikoneessa)

```
cd osaan.fi
dev-scripts/build.sh
```

## Asennus paikalliseen kehitysympäristöön (virtuaalikoneessa)

```
cd osaan.fi
eval "$(ssh-agent -s)"
dev-scripts/deploy.sh
```

## Virtuaalikoneiden tuhoaminen (kehityskoneessa)

```
cd <tämä projekti>
vagrant destroy
```

```
cd osaan.fi/vagrant
vagrant destroy osaan-db
vagrant destroy osaan-app
```
