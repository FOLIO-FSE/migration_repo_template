# Item transformation report
<br/>Data errors preventing records from being migrated are marked **FIX BEFORE MIGRATION**. The library is advised to clean up these errors in the source data.<br/><br/> The sections related to field counts and mapping results are marked **REVIEW**. These do not indicate errors preventing records from being migrated, but may point to data anomalies or in the mappings. The library should review these to make sure that the numbers are what one would expect, knowing the source data. Is this the expected number of serials? Is this the expected number of cartographic materials?
## Timings

Measure | Value
--- | ---:
Time Started: | 2024-03-22T20:02:40.320493+00:00
Time Finished: | 2024-03-22T20:03:04.286862+00:00
Elapsed time: | 0:00:23.966369
## General statistics
A list of general counters to outline the transformation as a whole.
<details><summary>Click to expand all 7 things</summary>

Measure | Count
--- | ---:
Number of Legacy items in file_name='novasbe_item_995_fixed.tsv' discovery_suppressed=False staff_suppressed=False service_point_id='' create_source_records=True | 13,288
Number of Legacy items in total | 13,288
Number of empty rows in novasbe_item_995_fixed.tsv | 0
Number of files processed | 1
Number of records written to disk | 13,288
Number of rows in novasbe_item_995_fixed.tsv | 13,288
</details>

## FOLIO default values added
The below FOLIO default values were added to records that had no mapped value in the source data.
<details><summary>Click to expand all 9 things</summary>

Measure | Count
--- | ---:
 added to barcode | 58
 added to chronology | 13,288
 added to copyNumber | 13,288
 added to enumeration | 13,288
 added to itemLevelCallNumber | 82
 added to notes[0].note | 13,286
 added to notes[2].note | 11,733
 added to volume | 9,936
</details>

## Unmapped properties

<details><summary>Click to expand all 8 things</summary>

Measure | Count
--- | ---:
chronology | 13,288
copyNumber | 13,288
enumeration | 13,288
itemLevelCallNumber | 82
notes[0].note | 13,286
notes[2].note | 11,733
volume | 9,936
</details>

## Default values from mapping added
The values below were added to all records from the 'value' field in the mapping file, overriding any mapped values from the source data.
<details><summary>Click to expand all 7 things</summary>

Measure | Count
--- | ---:
1dde7141-ec8a-4dae-9825-49ce14c728e7 added to notes[2].itemNoteTypeId | 13,288
351e8646-0c4d-4ccf-8f41-ece73dabd40b added to notes[0].itemNoteTypeId | 13,288
True added to notes[0].staffOnly | 13,288
True added to notes[1].staffOnly | 13,288
True added to notes[2].staffOnly | 13,288
ca4b6f00-62c4-4614-a73d-c9325212b46d added to notes[1].itemNoteTypeId | 13,288
</details>

## Status mapping

<details><summary>Click to expand all 6 things</summary>

Measure | Count
--- | ---:
'0' -> Available | 13,237
'1' -> Long missing | 36
'3' -> Unavailable | 1
'4' -> Lost and paid | 2
'6' -> Withdrawn | 12
</details>

## Mapped Material Types

<details><summary>Click to expand all 10 things</summary>

Measure | Count
--- | ---:
COMP -> Computador | 2
DEL -> Recurso eletrônico | 56
EBK -> eBook | 4,631
JOG -> Jogo | 1
LIT -> Livro de literatura | 341
MNL -> Material não livro | 1
MON -> Livro | 4,415
PER -> Revista | 3,719
REC -> Livro recomendado | 122
</details>

## Permanent Loan type mapping

<details><summary>Click to expand all 4 things</summary>

Measure | Count
--- | ---:
0 -> Normal | 6,276
1 -> Presencial/Restrito | 2,372
3 -> Online | 4,640
</details>

## Location mapping
These are the results for the mapping between legacy locations and your new FOLIO location structure
<details><summary>Click to expand all 7 things</summary>

Measure | Count
--- | ---:
1F -> 1F | 1,133
2F -> 2F | 3,239
BKF -> BKF | 18
BSD -> BSD | 10
ST -> ST | 612
Unmapped (Default value was set) -- SINLOCALIZACION -> SINLOCALIZACION | 8,276
</details>

## Suppression
What records got assigned what suppression setting in the records.
<details><summary>Click to expand all 2 things</summary>

Measure | Count
--- | ---:
Suppressed from discovery = False | 13,288
</details>

## Mapped FOLIO fields
<details><summary>Click to expand field report</summary>

FOLIO Field | Mapped | Unmapped
---|---|---
_version | 0 (0%) | 13,288 (100%) 
accessionNumber | 0 (0%) | 13,288 (100%) 
administrativeNotes | 0 (0%) | 13,288 (100%) 
barcode | 13,230 (100%) | 58 (0%) 
chronology | 0 (0%) | 13,288 (100%) 
circulationNotes | 0 (0%) | 13,288 (100%) 
copyNumber | 0 (0%) | 13,288 (100%) 
descriptionOfPieces | 0 (0%) | 13,288 (100%) 
discoverySuppress | 13,288 (100%) | 0 (0%) 
effectiveCallNumberComponents | 0 (0%) | 13,288 (100%) 
effectiveLocationId | 0 (0%) | 13,288 (100%) 
effectiveShelvingOrder | 0 (0%) | 13,288 (100%) 
electronicAccess | 0 (0%) | 13,288 (100%) 
enumeration | 0 (0%) | 13,288 (100%) 
formerIds | 13,288 (100%) | 0 (0%) 
holdingsRecord2 | 0 (0%) | 13,288 (100%) 
holdingsRecordId | 13,288 (100%) | 0 (0%) 
hrid | 0 (0%) | 13,288 (100%) 
id | 13,288 (100%) | 0 (0%) 
inTransitDestinationServicePointId | 0 (0%) | 13,288 (100%) 
itemDamagedStatusDate | 0 (0%) | 13,288 (100%) 
itemDamagedStatusId | 13,288 (100%) | 0 (0%) 
itemIdentifier | 13,288 (100%) | 0 (0%) 
itemLevelCallNumber | 13,206 (99%) | 82 (1%) 
itemLevelCallNumberPrefix | 0 (0%) | 13,288 (100%) 
itemLevelCallNumberSuffix | 0 (0%) | 13,288 (100%) 
itemLevelCallNumberTypeId | 0 (0%) | 13,288 (100%) 
lastCheckIn | 0 (0%) | 13,288 (100%) 
materialType | 0 (0%) | 13,288 (100%) 
materialTypeId | 13,288 (100%) | 0 (0%) 
metadata | 0 (0%) | 13,288 (100%) 
missingPieces | 0 (0%) | 13,288 (100%) 
missingPiecesDate | 0 (0%) | 13,288 (100%) 
notes | 13,288 (100%) | 0 (0%) 
notes.itemNoteTypeId | 13,288 (100%) | 0 (0%) 
notes.note | 13,288 (100%) | 0 (0%) 
notes.staffOnly | 13,288 (100%) | 0 (0%) 
numberOfMissingPieces | 0 (0%) | 13,288 (100%) 
numberOfPieces | 0 (0%) | 13,288 (100%) 
permanentLoanTypeId | 13,288 (100%) | 0 (0%) 
permanentLocation | 0 (0%) | 13,288 (100%) 
permanentLocationId | 13,288 (100%) | 0 (0%) 
purchaseOrderLineIdentifier | 0 (0%) | 13,288 (100%) 
statisticalCodeIds | 0 (0%) | 13,288 (100%) 
status | 13,288 (100%) | 0 (0%) 
status.date | 13,288 (100%) | 0 (0%) 
status.name | 13,288 (100%) | 0 (0%) 
tags | 0 (0%) | 13,288 (100%) 
temporaryLoanTypeId | 0 (0%) | 13,288 (100%) 
temporaryLocation | 0 (0%) | 13,288 (100%) 
temporaryLocationId | 0 (0%) | 13,288 (100%) 
volume | 3,352 (25%) | 9,936 (75%) 
yearCaption | 0 (0%) | 13,288 (100%) 
</details>

## Mapped Legacy fields
<details><summary>Click to expand field report</summary>

Legacy Field|Present|Mapped|Unmapped
---|---|---|---
CirculationType | 13,288 (100.0%) | 13,288 (100%) | 0  
Copias | 13,288 (100.0%) | 13,288 (100%) | 0  
Volumenes | 13,288 (100.0%) | 13,288 (100%) | 0  
ano | 13,288 (100.0%) | 13,288 (100%) | 0  
barcode | 13,288 (100.0%) | 13,288 (100%) | 0  
callNumber | 13,288 (100.0%) | 13,288 (100%) | 0  
damagedStatus | 13,288 (100.0%) | 13,288 (100%) | 0  
dateAcquired | 39,864 (300.0%) | 39,864 (300%) | 0  
holdingId | 13,288 (100.0%) | 13,288 (100%) | 0  
issue | 13,288 (100.0%) | 13,288 (100%) | 0  
itemId | 13,288 (100.0%) | 13,288 (100%) | 0  
legacyId | 13,288 (100.0%) | 13,288 (100%) | 0  
materialType | 13,288 (100.0%) | 13,288 (100%) | 0  
nota | 39,864 (300.0%) | 39,864 (300%) | 0  
permanentlocation | 13,288 (100.0%) | 13,288 (100%) | 0  
price | 39,864 (300.0%) | 39,864 (300%) | 0  
</details>
