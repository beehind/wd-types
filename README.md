# wd-types

Tracks [type specimen](https://en.wikipedia.org/wiki/Type_(biology)) known to [wikidata](https://wikidata.org).

See [./wd-types.sh](./wd-types.sh) for automated workflow to track and document type specimen known to wikidata.

[./wd-types.tsv](./wd-types.tsv)

[./wd-types.csv](./wd-types.csv)

[./wd-types.json](./wd-types.json)

[./wd-types.sparql.json](./wd-types.sparql.json)


### provenance

![./qrcode.png](./qrcode.png)

```
<urn:uuid:0659a54f-b713-4f86-a917-5be166a14110> <http://purl.org/pav/hasVersion> <hash://sha256/37d427dc534e83295cbf898795d9ee2ba0d23c2f8fc8dc8dc3c5064677fe8fce> .
```

```
preston alias --anchor hash://sha256/37d427dc534e83295cbf898795d9ee2ba0d23c2f8fc8dc8dc3c5064677fe8fce
```

```
<https://query.wikidata.org/sparql?query=SELECT%20DISTINCT%20%3Fitem%20%3FitemLabel%20%3Fimage%20WHERE%20%7B%0A%20%20%3Fitem%20wdt%3AP31*%2Fwdt%3AP279*%20wd%3AQ51255340%20%3B%0A%20%20%20%20%20%20%20%20wdt%3AP18%20%3Fimage%0A%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22%5BAUTO_LANGUAGE%5D%2Cen%22.%20%7D%0A%7D%0ALIMIT%20200000%0A%0A&format=json> <http://purl.org/pav/hasVersion> <hash://sha256/9393413522abc7e0a4cabbf3808a47632f54d965b61a0f3bd81578575bf47c7a> <urn:uuid:90103a5e-77ee-4893-b1bc-85bf8d554c4b> .
```
