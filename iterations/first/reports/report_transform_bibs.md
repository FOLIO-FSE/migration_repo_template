# Bibliographic records transformation report
<br/>Data errors preventing records from being migrated are marked **FIX BEFORE MIGRATION**. The library is advised to clean up these errors in the source data.<br/><br/> The sections related to field counts and mapping results are marked **REVIEW**. These do not indicate errors preventing records from being migrated, but may point to data anomalies or in the mappings. The library should review these to make sure that the numbers are what one would expect, knowing the source data. Is this the expected number of serials? Is this the expected number of cartographic materials?
## Timings

Measure | Value
--- | ---:
Time Started: | 2024-03-19T13:06:11.964955+00:00
Time Finished: | 2024-03-19T13:06:49.969449+00:00
Elapsed time: | 0:00:38.004494
## General statistics
A list of general counters to outline the transformation as a whole.
<details><summary>Click to expand all 6 things</summary>

Measure | Count
--- | ---:
Inventory records written to disk | 8,867
Records in file before parsing | 8,867
Records successfully decoded from MARC21 | 8,867
SRS records written to disk | 8,867
Unique ID:s written to legacy map | 8,867
</details>

## HRID and 001/035 handling
There are two ways of handling HRIDs. The default behaviour is to take the current 001 and move that to a new 035. This will also emerge as an Identifier on the Inventory Instances. The 001 and Instance HRID will be generated from the HRID settings in FOLIO. The second option is to maintain the 001s in the records, and also add this as the Instance HRID
<details><summary>Click to expand all 4 things</summary>

Measure | Count
--- | ---:
Added 035 from 001 | 8,867
Created HRID using default settings | 8,867
Values in 003: Empty | 8,867
</details>

## Record status (leader pos 5)
Library action: **All values that are not a, c, d, n or p will be set to c. If this is not what you want, you need to correct these values in your system. **<br/>An overview of the Record statuses (Leader position 5) present in your source data.    Pay attention to the number of occurrences of the value 'd'. These d's are expressing that they are deleted, and the records might not work as expected in FOLIO. Consider marking them as suppressed in your current system and export them as a separate batch in order to have them suppressed in FOLIO. Allowed values according to the MARC standard are a,c,d,n,p
<details><summary>Click to expand all 2 things</summary>

Measure | Count
--- | ---:
Original value: n | 8,867
</details>

## Trivia

<details><summary>Click to expand all 2 things</summary>

Measure | Count
--- | ---:
Total number of Tags processed | 216,371
</details>

## Mapped identifier types
Library action: **REVIEW** <br/>The created FOLIO instances contain the following Identifier type values. The library should review the total number for each value against what they would expect to see mapped.
<details><summary>Click to expand all 9 things</summary>

Measure | Count
--- | ---:
020 -> ISBN | 10,953
020 -> Invalid ISBN | 1
022 -> ISSN | 38
035 -> System control number | 8,867
780 -> ISBN | 4
780 -> ISSN | 4
785 -> ISBN | 3
785 -> ISSN | 3
</details>

## Authorization sources and related information

<details><summary>Click to expand all 100 things</summary>

Measure | Count
--- | ---:
Source of heading or term: . | 3
Source of heading or term: //; | 1
Source of heading or term: //;. | 1
Source of heading or term: /; | 1
Source of heading or term: 0 | 13,237
Source of heading or term: 1 | 36
Source of heading or term: 23 | 31
Source of heading or term: 3 | 1
Source of heading or term: 4 | 2
Source of heading or term: 6 | 12
Source of heading or term: ; | 2
Source of heading or term: ;. | 2
Source of heading or term: Applied | 1
Source of heading or term: BSBE. | 1
Source of heading or term: B»NSBE. | 1
Source of heading or term: Case | 2
Source of heading or term: Cronysm | 6
Source of heading or term: Econometrics | 1
Source of heading or term: Economia. | 1
Source of heading or term: Economics; | 1
Source of heading or term: Estudo | 2
Source of heading or term: Fiction | 1
Source of heading or term: Finance. | 1
Source of heading or term: Finanças. | 1
Source of heading or term: Gestão. | 1
Source of heading or term: HF5415 | 1
Source of heading or term: Institutional/; | 1
Source of heading or term: Lei | 1
Source of heading or term: MNSBE | 1
Source of heading or term: MSBE | 7
Source of heading or term: MSBE. | 1
Source of heading or term: Metodos | 1
Source of heading or term: Modelos | 1
Source of heading or term: N | 10
Source of heading or term: NABE | 1
Source of heading or term: NASBE | 4
Source of heading or term: NASBE. | 1
Source of heading or term: NBE | 2
Source of heading or term: NBSBE | 2
Source of heading or term: NBSBE. | 1
Source of heading or term: NDBE | 1
Source of heading or term: NDSBE | 2
Source of heading or term: NEBE | 5
Source of heading or term: NMSBE | 11
Source of heading or term: NMSBE. | 2
Source of heading or term: NNSBE | 1
Source of heading or term: NOVA | 217
Source of heading or term: NOVASBE | 1
Source of heading or term: NSABE | 5
Source of heading or term: NSABE. | 1
Source of heading or term: NSB | 1
Source of heading or term: NSBBE | 1
Source of heading or term: NSBD | 1
Source of heading or term: NSBDE | 5
Source of heading or term: NSBE | 40,749
Source of heading or term: NSBE. | 5,241
Source of heading or term: NSBE3 | 1
Source of heading or term: NSBED | 2
Source of heading or term: NSBEHD60 | 1
Source of heading or term: NSBENSBE | 2
Source of heading or term: NSBER | 2
Source of heading or term: NSBER. | 2
Source of heading or term: NSBR | 1
Source of heading or term: NSBR. | 1
Source of heading or term: NSBSE | 2
Source of heading or term: NSBWE | 1
Source of heading or term: NSB_E | 1
Source of heading or term: NSBe | 6
Source of heading or term: NSDBE | 3
Source of heading or term: NSE | 1
Source of heading or term: NSEB | 1
Source of heading or term: NSEBE | 1
Source of heading or term: NSNE | 1
Source of heading or term: NSNE. | 2
Source of heading or term: NSVBE | 2
Source of heading or term: NSVE | 2
Source of heading or term: NSbe | 2
Source of heading or term: NSbe. | 1
Source of heading or term: Nsbe | 5
Source of heading or term: ÑSBE | 4
Source of heading or term: ÑSBE. | 1
Source of heading or term: Planeamento. | 1
Source of heading or term: Portugal. | 1
Source of heading or term: Previsão | 1
Source of heading or term: Processamento | 1
Source of heading or term: SBE | 7
Source of heading or term: SBE. | 1
Source of heading or term: Statistical | 1
Source of heading or term: Style | 1
Source of heading or term: bisacsh | 3
Source of heading or term: c | 1
Source of heading or term: fast | 2
Source of heading or term: https://backoffice.library.novasbe.pt/cgi-bin/koha/cataloguing/addbiblio.pl?frameworkcode=MON# | 1
Source of heading or term: nsbe | 4
Source of heading or term: rdacarrier | 8,867
Source of heading or term: rdacontent | 8,867
Source of heading or term: rdamedia | 8,867
Source of heading or term: unlfe | 31
Source of heading or term: unlfe. | 17
</details>

## Instance format ids handling (337 + 338))

<details><summary>Click to expand all 3 things</summary>

Measure | Count
--- | ---:
Successful match  - "nc"->unmediated -- volume | 8,867
Successful match  - nc->unmediated -- volume | 8,867
</details>

## Mapped note types
Library action: **REVIEW** <br/>The created FOLIO records contain the following Note type values.  <br/>The library should review the total number for each value against what they would expect to see mapped.
<details><summary>Click to expand all 8 things</summary>

Measure | Count
--- | ---:
500 (General note) -> General note | 1,152
502 (Dissertation note) -> Dissertation note | 61
504 (Bibliography note) -> Bibliography note | 15
505 (Formatted Contents Note) -> Formatted Contents Note | 1,975
520 (Summary) -> Summary | 4,491
533 (Reproduction note) -> Reproduction note | 1
538 (System Details note) -> System Details note | 1
</details>

## Mapped contributor name types
Library action: **REVIEW** <br/>The created FOLIO instances contain the following Name type values. The library should review the total number for each value against what they would expect to see mapped.
<details><summary>Click to expand all 7 things</summary>

Measure | Count
--- | ---:
100 -> Personal name | 6,342
110 -> Corporate name | 118
111 -> Meeting name | 10
700 -> Personal name | 9,347
710 -> Corporate name | 145
711 -> Meeting name | 3
</details>

## Contributor type mapping
Library action: **REVIEW** <br/>The created FOLIO instances contain the following Contributor type values. The library should review the total number for each value against what they would expect to see mapped.
<details><summary>Click to expand all 30 things</summary>

Measure | Count
--- | ---:
Contributor type code "Adapter" found for $4 "adp" (adp)) | 1
Contributor type code "Annotator" found for $4 "ann" (ann)) | 6
Contributor type code "Author in quotations or text abstracts" found for $4 "aqt" (aqt)) | 1
Contributor type code "Author of afterword, colophon, etc." found for $4 "aft" (aft)) | 3
Contributor type code "Author of introduction, etc." found for $4 "aui" (aui)) | 75
Contributor type code "Author" found for $4 "aut" (aut)) | 9,535
Contributor type code "Copyright holder" found for $4 "cph" (cph)) | 2
Contributor type code "Dedicator" found for $4 "dto" (dto)) | 3
Contributor type code "Degree granting institution" found for $4 "dgg" (dgg)) | 48
Contributor type code "Director" found for $4 "drt" (drt)) | 17
Contributor type code "Distributor" found for $4 "dst" (dst)) | 2
Contributor type code "Editor" found for $4 "edt" (edt)) | 2,518
Contributor type code "Film editor" found for $4 "flm" (flm)) | 1
Contributor type code "Funder" found for $4 "fnd" (fnd)) | 46
Contributor type code "Illustrator" found for $4 "ill" (ill)) | 3
Contributor type code "Inscriber" found for $4 "ins" (ins)) | 28
Contributor type code "Interviewer" found for $4 "ivr" (ivr)) | 1
Contributor type code "Organizer" found for $4 "orm" (orm)) | 9
Contributor type code "Originator" found for $4 "org" (org)) | 1
Contributor type code "Photographer" found for $4 "pht" (pht)) | 2
Contributor type code "Proofreader" found for $4 "pfr" (pfr)) | 80
Mapping failed for $4 "clb" (clb)  | 20
Mapping failed for $4 "pbd" (pbd)  | 1
Mapping failed for $4 "pbl" (pbl)  | 2,588
Mapping failed for $4 "rev" (rev)  | 1
Mapping failed for $4 "rtm" (rtm)  | 1
Mapping failed for $4 "sad" (sad)  | 1
Mapping failed for $4 "ths" (ths)  | 102
Mapping failed for $4 "trl" (trl)  | 320
</details>

## Mapped electronic access relationships types
Library action: **REVIEW** <br/>The created FOLIO instances contain the following Electronic access relationship type values. The library should review the total number for each value against what they would expect to see mapped.
<details><summary>Click to expand all 4 things</summary>

Measure | Count
--- | ---:
No information provided | 4,760
Resource | 12
Version of resource | 1
</details>

## Resource Type Mapping (336)
Library action: **REVIEW** <br/>The created FOLIO instances contain the following Instance type values. The library should review the total number for each value against what they would expect to see mapped.
<details><summary>Click to expand all 3 things</summary>

Measure | Count
--- | ---:
336$b computer dataset mapped from cod | 4,586
336$b text mapped from txt | 4,281
</details>

## Matched Modes of issuance code
Library action: **REVIEW** <br/>The created FOLIO instances contain the following Mode of issuace values. The library should review the total number for each value against what they would expect to see mapped.
<details><summary>Click to expand all 3 things</summary>

Measure | Count
--- | ---:
serial -- 068b5344-e2a6-40df-9186-1829e13cd344 | 48
single unit -- 9d18a02f-5897-4c31-9106-c9abb5c7ae8b | 8,819
</details>

## Language codes in records
A breakdown of language codes occuring in the records. Purely informational.
<details><summary>Click to expand all 17 things</summary>

Measure | Count
--- | ---:
chi | 1
cpp | 2
dut | 3
eng | 7,397
enm | 2
fre | 163
ger | 9
hun | 3
ita | 17
jpn | 1
nor | 1
por | 1,435
rus | 1
spa | 54
swe | 2
||| | 27
</details>

## Suppression
What records got assigned what suppression setting in the records.
<details><summary>Click to expand all 3 things</summary>

Measure | Count
--- | ---:
Staff suppressed = False  | 8,867
Suppressed from discovery = False | 8,867
</details>

## Mapped Alternative title types
Library action: **REVIEW** <br/>The created FOLIO instances contain the following Alternative title type values. The library should review the total number for each value against what they would expect to see mapped. The FOLIO community recommends a coarse-grained mapping.
<details><summary>Click to expand all 2 things</summary>

Measure | Count
--- | ---:
Uniform title | 153
</details>

## Mapped classification types

<details><summary>Click to expand all 3 things</summary>

Measure | Count
--- | ---:
Dewey | 35
UDC | 132
</details>

## Incomplete entity mapping adding entity
**NO ACTION REQUIRED** <br/>This is a coding anomaly that FSE will look into.  <br/>Usually, the library does not have to do anything about it.<br/> One thing to look at is if there are many repeated subfields or unexpected patterns of subfields in the table.
<details><summary>Click to expand all 7 things</summary>

Measure | Count
--- | ---:
600 2:has_value ->>-->> subjects    | 26
650 2:has_value ->>-->> subjects    | 42
651 2:has_value ->>-->> subjects    | 13
700 a:has_value - 4:has_value ->>-->> contributors    | 5
700 a:has_value ->>-->> contributors    | 1
856 a:has_value - b:has_value ->>-->> electronicAccess    | 1
</details>

## Preceding and Succeeding titles

<details><summary>Click to expand all 3 things</summary>

Measure | Count
--- | ---:
precedingTitles created | 4
succeedingTitles created | 3
</details>

## Mapped FOLIO fields
<details><summary>Click to expand field report</summary>

FOLIO Field | Mapped | Unmapped
---|---|---
_version | 0 (0%) | 8,867 (100%) 
administrativeNotes | 8,867 (100%) | 0 (0%) 
alternativeTitles | 147 (2%) | 8,720 (98%) 
alternativeTitles.alternativeTitle | 147 (2%) | 8,720 (98%) 
alternativeTitles.alternativeTitleTypeId | 147 (2%) | 8,720 (98%) 
catalogedDate | 0 (0%) | 8,867 (100%) 
classifications | 166 (2%) | 8,701 (98%) 
classifications.classificationNumber | 166 (2%) | 8,701 (98%) 
classifications.classificationTypeId | 166 (2%) | 8,701 (98%) 
contributors | 8,793 (99%) | 74 (1%) 
contributors.contributorNameTypeId | 8,793 (99%) | 74 (1%) 
contributors.contributorTypeId | 7,569 (85%) | 1,298 (15%) 
contributors.name | 8,793 (99%) | 74 (1%) 
contributors.primary | 6,470 (73%) | 2,397 (27%) 
discoverySuppress | 8,867 (100%) | 0 (0%) 
editions | 886 (10%) | 7,981 (90%) 
electronicAccess | 4,723 (53%) | 4,144 (47%) 
electronicAccess.publicNote | 4,713 (53%) | 4,154 (47%) 
electronicAccess.relationshipId | 4,723 (53%) | 4,144 (47%) 
electronicAccess.uri | 4,723 (53%) | 4,144 (47%) 
holdingsRecords2 | 0 (0%) | 8,867 (100%) 
hrid | 8,867 (100%) | 0 (0%) 
id | 8,867 (100%) | 0 (0%) 
identifiers | 8,867 (100%) | 0 (0%) 
identifiers.identifierTypeId | 8,867 (100%) | 0 (0%) 
identifiers.value | 8,867 (100%) | 0 (0%) 
indexTitle | 8,867 (100%) | 0 (0%) 
instanceFormatIds | 8,867 (100%) | 0 (0%) 
instanceFormats | 0 (0%) | 8,867 (100%) 
instanceTypeId | 8,867 (100%) | 0 (0%) 
languages | 8,867 (100%) | 0 (0%) 
matchKey | 0 (0%) | 8,867 (100%) 
metadata | 0 (0%) | 8,867 (100%) 
modeOfIssuanceId | 8,867 (100%) | 0 (0%) 
natureOfContentTermIds | 0 (0%) | 8,867 (100%) 
notes | 5,731 (65%) | 3,136 (35%) 
notes.instanceNoteTypeId | 5,731 (65%) | 3,136 (35%) 
notes.note | 5,731 (65%) | 3,136 (35%) 
physicalDescriptions | 4,570 (52%) | 4,297 (48%) 
previouslyHeld | 0 (0%) | 8,867 (100%) 
publication | 8,826 (100%) | 41 (0%) 
publication.dateOfPublication | 8,782 (99%) | 85 (1%) 
publication.place | 8,821 (99%) | 46 (1%) 
publication.publisher | 8,818 (99%) | 49 (1%) 
publicationFrequency | 40 (0%) | 8,827 (100%) 
publicationPeriod | 0 (0%) | 8,867 (100%) 
publicationRange | 41 (0%) | 8,826 (100%) 
series | 0 (0%) | 8,867 (100%) 
source | 8,867 (100%) | 0 (0%) 
sourceRecordFormat | 0 (0%) | 8,867 (100%) 
staffSuppress | 8,867 (100%) | 0 (0%) 
statisticalCodeIds | 0 (0%) | 8,867 (100%) 
statusId | 0 (0%) | 8,867 (100%) 
statusUpdatedDate | 0 (0%) | 8,867 (100%) 
subjects | 8,801 (99%) | 66 (1%) 
subjects.value | 8,801 (99%) | 66 (1%) 
tags | 0 (0%) | 8,867 (100%) 
title | 8,867 (100%) | 0 (0%) 
</details>

## Mapped Legacy fields
<details><summary>Click to expand field report</summary>

Legacy Field|Present|Mapped|Unmapped
---|---|---|---
001 | 8,867 (100.0%) | 8,867 (100%) | 0  
008 | 8,867 (100.0%) | 8,867 (100%) | 0  
020 | 11,435 (129.0%) | 11,435 (129%) | 0  
022 | 38 (0.4%) | 38 (0%) | 0  
035 | 8,867 (100.0%) | 8,867 (100%) | 0  
037 | 4,518 (51.0%) | 0 (0%) | 4,518  
041 | 8,844 (99.7%) | 8,844 (100%) | 0  
080 | 132 (1.5%) | 132 (1%) | 0  
082 | 35 (0.4%) | 35 (0%) | 0  
084 | 9 (0.1%) | 0 (0%) | 9  
100 | 6,342 (71.5%) | 6,342 (72%) | 0  
110 | 118 (1.3%) | 118 (1%) | 0  
111 | 10 (0.1%) | 10 (0%) | 0  
130 | 7 (0.1%) | 7 (0%) | 0  
240 | 146 (1.6%) | 146 (2%) | 0  
245 | 8,867 (100.0%) | 8,867 (100%) | 0  
250 | 888 (10.0%) | 888 (10%) | 0  
260 | 8,826 (99.5%) | 8,826 (100%) | 0  
300 | 4,570 (51.5%) | 4,570 (52%) | 0  
310 | 42 (0.5%) | 42 (0%) | 0  
336 | 8,867 (100.0%) | 8,867 (100%) | 0  
337 | 8,867 (100.0%) | 0 (0%) | 8,867  
338 | 8,867 (100.0%) | 8,867 (100%) | 0  
362 | 42 (0.5%) | 42 (0%) | 0  
365 | 15 (0.2%) | 0 (0%) | 15  
490 | 3,381 (38.1%) | 0 (0%) | 3,381  
500 | 1,152 (13.0%) | 1,152 (13%) | 0  
502 | 61 (0.7%) | 61 (1%) | 0  
504 | 15 (0.2%) | 15 (0%) | 0  
505 | 1,975 (22.3%) | 1,975 (22%) | 0  
520 | 4,491 (50.6%) | 4,491 (51%) | 0  
533 | 1 (0.0%) | 1 (0%) | 0  
538 | 1 (0.0%) | 1 (0%) | 0  
600 | 71 (0.8%) | 71 (1%) | 0  
630 | 1 (0.0%) | 1 (0%) | 0  
650 | 51,720 (583.3%) | 51,720 (583%) | 0  
651 | 56 (0.6%) | 56 (1%) | 0  
700 | 9,347 (105.4%) | 9,347 (105%) | 0  
710 | 145 (1.6%) | 145 (2%) | 0  
711 | 3 (0.0%) | 3 (0%) | 0  
760 | 1 (0.0%) | 0 (0%) | 1  
765 | 2 (0.0%) | 0 (0%) | 2  
773 | 51 (0.6%) | 0 (0%) | 51  
776 | 22 (0.2%) | 0 (0%) | 22  
780 | 4 (0.0%) | 4 (0%) | 0  
785 | 3 (0.0%) | 3 (0%) | 0  
801 | 8,823 (99.5%) | 0 (0%) | 8,823  
856 | 4,773 (53.8%) | 4,773 (54%) | 0  
942 | 8,867 (100.0%) | 0 (0%) | 8,867  
970 | 31 (0.3%) | 0 (0%) | 31  
995 | 13,288 (149.9%) | 0 (0%) | 13,288  
</details>
