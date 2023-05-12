#!/bin/bash
# This script erases records from FOLIO Source Record Storage (SRS). 
# It erases exactly those records which have been transformed by FSE Migration Tools and deposited in a file
#   named folio_srs_instances_transform_bibs.json or folio_srs_holdings_transform_mfhd.json .
# Author, Creation date: Ingolf Kuss (hbz NRW), 2023-05-08
# Call the help page (usage) to see how to use this script: ./deleteSrsByIds.sh -h

usage() {
  cat <<EOF
  Deletes records from FOLIO Source Record Storage according to an FSE migration tools "transform" file.
  The transform file contains the SRS records to be deleted in the format FOLIO JSON.
  Sample Calls:          ./deleteSrsByIds.sh -t mytenant -d /home/user/migration_repo_template/iterations/test_iteration/results/ -f folio_srs_holdings_transform_mfhd.json > deleteSrsByIds.holdings.log
                         ./deleteSrsByIds.sh -t mytenant -u http://myhost/okapi -t mytenant -l login.json -f folio_srs_instances_transform_bibs.json > deleteSrsByIds.instances.log

  Command line options:
   - d [directory]      The directory in which the transform file can be found. Default value: $directory
   - f [file]           The file name of the transform file 
                        The transform file is of format JSON and contains a list of the records to be deleted.
                        Records are NOT to be separated by commas (i.e. one record per line) 
                        and there is no JSON "root" element. I.e. like this (sample content of transform file):
			{ "id" : "0bcf0796-5974-52fa-be23-d329d998d157", ... /* further JSON elements which are irrelevant here*/ }
			{"id": "c7562874-19a3-58b9-b496-6d0053afd302",  ... /* further JSON elements which are irrelevant here*/ }
                        ... (further records  [only the id of the records will be needed here])
                        Default value: $file
   - h                  Help page (this test)
   - l [login file]     login.json file with the following content:  { "tenant" : "...", "username" : "...", "password" : "..." }
                    	Default value: $login_datei
   - o [OKAPI_URL]  	OKAPI_URL, Default value: $OKAPI
   - s              	silent off (not silent), Default value: $silent_off
   - t [TENANT]     	TENANT, Default value: $TENANT
   - v              	verbose, Default value: $verbose
EOF
  exit 0
  }

# Default values
useFile=1
file=folio_srs_holdings_transform_mfhd.json
useDirectory=1
directory="../iterations/test_iteration/results/"
verbose=0
silent_off=0
OKAPI=http://localhost:9130
TENANT="diku";
login_datei="login.json"

# Evaluate Command line options and parameters
OPTIND=1         # Reset in case getopts has been used previously in the shell.
while getopts "d:f:h?l:o:st:v" opt; do
    case "$opt" in
    a)  deleteAll=1
        ;;
    d)  useDirectory=1
        directory=$OPTARG
        ;;
    f)  useFile=1
        file=$OPTARG
        ;;
    h|\?) usage
        ;;
    l)  login_datei=$OPTARG
        ;;
    o)  OKAPI=$OPTARG
        ;;
    s)  silent_off=1
        ;;
    t)  TENANT=$OPTARG
	;;
    v)  verbose=1
        ;;
    esac
done
shift $((OPTIND-1))
[ "${1:-}" = "--" ] && shift

# bash functions
function stripOffQuotes {
  local string=$1;
  local len=${#string};
  echo ${string:1:$len-2};
}

# Start main procession
echo "Delete IDs in file with srsIds $file in path $directory."
echo "TENANT=$TENANT"
echo "OKAPI=$OKAPI"
TOKEN=$( curl -s -S -D - -H "X-Okapi-Tenant: $TENANT" -H "Content-type: application/json" -H "Accept: application/json" -d @$login_datei $OKAPI/authn/login | grep -i "^x-okapi-token: " )
echo "TOKEN=$TOKEN"

actDir=$PWD
cd $directory
while IFS= read -r line; do
  unset id
  id=`echo $line | jq ".id"`
  id=$(stripOffQuotes $id)
  echo "deleting id=$id"
  # Delete record item with given {recordId}
  curl -s -S -D - -X DELETE -H "$TOKEN" -H "X-Okapi-Tenant: $TENANT" -H "Content-type: application/json; charset=utf-8" -H "Accept: text/plain" $OKAPI/source-storage/records/$id
done < $file
cd $actDir

exit 0
