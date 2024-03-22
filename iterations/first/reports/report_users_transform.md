# Users transformation report
<br/>Data errors preventing records from being migrated are marked **FIX BEFORE MIGRATION**. The library is advised to clean up these errors in the source data.<br/><br/> The sections related to field counts and mapping results are marked **REVIEW**. These do not indicate errors preventing records from being migrated, but may point to data anomalies or in the mappings. The library should review these to make sure that the numbers are what one would expect, knowing the source data. Is this the expected number of serials? Is this the expected number of cartographic materials?
## Timings

Measure | Value
--- | ---:
Time Started: | 2024-03-05T18:53:06.598717+00:00
Time Finished: | 2024-03-05T18:53:24.318032+00:00
Elapsed time: | 0:00:17.719315
## FOLIO default values added
The below FOLIO default values were added to records that had no mapped value in the source data.
<details><summary>Click to expand all 18 things</summary>

Measure | Count
--- | ---:
 added to active | 8,055
 added to customFields.correoAlternativo | 8,055
 added to customFields.fechaDeNascimiento | 8,055
 added to customFields.folio | 8,055
 added to customFields.identificacion | 8,055
 added to customFields.nacionalidad | 8,055
 added to customFields.notas | 8,055
 added to customFields.programaDePendencia | 8,055
 added to customFields.sede | 8,055
 added to customFields.sexo | 8,055
 added to personal.addresses[0].addressLine1 | 8,055
 added to personal.addresses[0].city | 8,055
 added to personal.dateOfBirth | 8,055
 added to personal.mobilePhone | 8,055
 added to personal.phone | 8,055
 added to personal.preferredContactTypeId | 8,055
 added to personal.preferredFirstName | 8,055
</details>

## User group mapping

<details><summary>Click to expand all 9 things</summary>

Measure | Count
--- | ---:
A -> Bachelors and Masters | 7,435
ADM -> ADM | 1
AS -> Teaching assistants | 31
D -> Faculty | 367
E -> Companies | 17
EXT -> EXT | 2
I -> PhD students and Researchers | 7
S -> Library | 195
</details>

## Default values from mapping added
The values below were added to all records from the 'value' field in the mapping file, overriding any mapped values from the source data.
<details><summary>Click to expand all 10 things</summary>

Measure | Count
--- | ---:
True added to notes[0].popUpOnCheckOut | 8,055
True added to notes[0].popUpOnUser | 8,055
True added to notes[1].popUpOnCheckOut | 8,055
True added to notes[1].popUpOnUser | 8,055
True added to notes[2].popUpOnCheckOut | 8,055
True added to notes[2].popUpOnUser | 8,055
True added to personal.addresses[0].primaryAddress | 8,055
users added to notes[1].domain | 8,055
users added to notes[2].domain | 8,055
</details>

## Sub-property removed due to missing required fields
Add the missing required information to the record in your current ILS to ensure that it can be migrated over.
<details><summary>Click to expand all 2 things</summary>

Measure | Count
--- | ---:
notes | 24,165
</details>

## General statistics
A list of general counters to outline the transformation as a whole.
<details><summary>Click to expand all 2 things</summary>

Measure | Count
--- | ---:
Successful user transformations | 8,055
</details>

## Mapped FOLIO fields
<details><summary>Click to expand field report</summary>

FOLIO Field | Mapped | Unmapped
---|---|---
active | 8,055 (100%) | 0 (0%) 
barcode | 8,055 (100%) | 0 (0%) 
enrollmentDate | 8,055 (100%) | 0 (0%) 
expirationDate | 8,055 (100%) | 0 (0%) 
externalSystemId | 8,055 (100%) | 0 (0%) 
id | 8,055 (100%) | 0 (0%) 
patronGroup | 8,055 (100%) | 0 (0%) 
personal | 8,055 (100%) | 0 (0%) 
personal.addresses | 8,055 (100%) | 0 (0%) 
personal.addresses.primaryAddress | 8,055 (100%) | 0 (0%) 
personal.email | 8,055 (100%) | 0 (0%) 
personal.firstName | 8,055 (100%) | 0 (0%) 
personal.lastName | 8,055 (100%) | 0 (0%) 
personal.preferredContactTypeId | 8,055 (100%) | 0 (0%) 
requestPreference | 8,055 (100%) | 0 (0%) 
requestPreference.holdShelf | 8,055 (100%) | 0 (0%) 
username | 8,055 (100%) | 0 (0%) 
</details>

## Mapped Legacy fields
<details><summary>Click to expand field report</summary>

Legacy Field|Present|Mapped|Unmapped
---|---|---|---
Not mapped | 8,055 (100.0%) | 8,055 (100%) | 0  
active TRUE/FALSE | 8,055 (100.0%) | 8,055 (100%) | 0  
addressLine1 | 8,055 (100.0%) | 8,055 (100%) | 0  
borrowernumber | 8,055 (100.0%) | 8,055 (100%) | 0  
branchcode | 8,055 (100.0%) | 8,055 (100%) | 0  
cardnumber | 16,110 (200.0%) | 16,110 (200%) | 0  
categorycode | 16,110 (200.0%) | 16,110 (200%) | 0  
city | 8,055 (100.0%) | 8,055 (100%) | 0  
dateenrolled | 16,110 (200.0%) | 16,110 (200%) | 0  
dateexpiry | 16,110 (200.0%) | 16,110 (200%) | 0  
email | 24,165 (300.0%) | 24,165 (300%) | 0  
firstname | 8,055 (100.0%) | 8,055 (100%) | 0  
surname | 8,055 (100.0%) | 8,055 (100%) | 0  
userid | 8,055 (100.0%) | 8,055 (100%) | 0  
</details>
