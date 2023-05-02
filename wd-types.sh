#!/bin/bash
#
# generate list of type specimen with images known to wikidata
# 

preston track "https://query.wikidata.org/sparql?query=SELECT%20DISTINCT%20%3Fitem%20%3FitemLabel%20%3Fimage%20WHERE%20%7B%0A%20%20%3Fitem%20wdt%3AP31*%2Fwdt%3AP279*%20wd%3AQ51255340%20%3B%0A%20%20%20%20%20%20%20%20wdt%3AP18%20%3Fimage%0A%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22%5BAUTO_LANGUAGE%5D%2Cen%22.%20%7D%0A%7D%0ALIMIT%20200000%0A%0A&format=json"\
 | preston cat\
 | tee wd-types.sparql.json\
 | jq --compact-output '.results[][] | { "id": .["item"].value, "catalogNumber": .["itemLabel"].value, "imageUrl": .["image"].value }'\
 | tee wd-types.json\
 | mlr --ijsonl --ocsv cat\
 | tee wd-types.csv\
 | mlr --icsv --otsvlite cat\
 | tee wd-types.tsv

 
