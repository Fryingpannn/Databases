SELECT * FROM AgeGroup ag ;

|groupNumber|minAge|maxAge|
|-----------|------|------|
|1          |80    |999   |
|2          |70    |79    |
|3          |60    |69    |
|4          |50    |59    |
|5          |40    |49    |
|6          |30    |39    |
|7          |18    |29    |
|8          |12    |17    |
|9          |5     |11    |
|10         |0     |4     |


SELECT * FROM BelongToGroup btg ;

|pid|groupNumber|
|---|-----------|
|1  |7          |
|2  |6          |
|3  |6          |
|4  |3          |
|5  |3          |
|6  |5          |
|7  |6          |
|8  |4          |
|10 |3          |
|11 |5          |
|12 |7          |
|13 |7          |
|14 |2          |
|15 |8          |
|16 |7          |
|17 |5          |
|18 |3          |
|19 |7          |
|20 |4          |
|21 |3          |
|22 |3          |
|23 |2          |
|24 |6          |
|25 |2          |
|26 |2          |
|27 |6          |
|28 |8          |
|29 |8          |
|30 |6          |
|31 |4          |
|32 |3          |
|33 |3          |
|34 |2          |
|35 |7          |
|36 |6          |
|37 |5          |
|39 |8          |
|41 |5          |
|42 |6          |
|43 |6          |
|44 |4          |
|45 |4          |
|46 |4          |
|47 |3          |
|49 |3          |
|50 |2          |
|51 |6          |
|52 |8          |
|53 |7          |
|54 |7          |
|55 |2          |
|56 |7          |
|57 |5          |
|58 |2          |
|59 |8          |
|60 |4          |
|61 |4          |
|62 |8          |
|63 |7          |
|64 |5          |
|65 |6          |
|66 |2          |
|67 |2          |
|68 |5          |
|69 |6          |
|70 |4          |
|71 |7          |
|72 |8          |
|73 |2          |
|74 |7          |
|75 |8          |
|76 |2          |
|77 |7          |
|78 |6          |
|79 |3          |
|80 |6          |
|81 |7          |
|82 |6          |
|83 |5          |
|84 |5          |
|85 |6          |
|86 |6          |
|87 |6          |
|88 |4          |
|89 |4          |
|90 |8          |
|91 |6          |
|92 |6          |
|93 |5          |
|94 |5          |
|95 |2          |
|96 |8          |
|97 |4          |
|98 |3          |
|99 |4          |
|100|8          |
|101|2          |
|102|5          |
|103|4          |
|104|3          |
|105|5          |
|106|6          |
|107|8          |
|108|4          |
|109|7          |
|110|2          |
|111|3          |
|112|4          |
|113|2          |
|114|7          |
|115|4          |
|116|6          |
|117|4          |
|118|6          |
|119|7          |
|120|2          |
|121|8          |
|122|4          |
|123|6          |
|124|5          |
|125|5          |
|126|7          |
|127|2          |
|128|4          |
|129|6          |
|130|4          |
|131|2          |
|132|2          |
|133|2          |
|134|7          |
|135|5          |
|136|5          |
|137|7          |
|138|4          |
|139|7          |
|140|5          |
|141|7          |
|142|4          |
|143|7          |
|144|6          |
|145|7          |
|146|4          |
|147|6          |
|148|2          |
|149|6          |
|150|4          |
|151|2          |
|152|3          |
|153|6          |
|154|6          |
|155|6          |
|156|4          |
|157|6          |
|158|5          |
|159|6          |
|160|7          |
|161|4          |
|162|7          |
|163|5          |
|164|5          |
|165|3          |
|166|6          |
|167|7          |
|168|4          |
|169|3          |
|170|7          |
|171|8          |
|172|7          |
|173|8          |
|174|2          |
|175|3          |
|176|3          |
|177|7          |
|178|2          |
|179|5          |
|180|4          |
|181|2          |
|182|7          |
|183|5          |
|184|7          |
|185|7          |
|186|8          |
|187|4          |
|188|4          |
|189|6          |
|190|2          |
|191|3          |
|192|5          |
|193|5          |
|194|6          |
|195|5          |
|196|5          |
|197|2          |
|198|7          |
|199|3          |
|200|2          |


SELECT * FROM BookingSlots bs ;

|pID|facilityID|typeOfAppointment|DayOfAppointment|timeOfAppointment|DoseNumber|
|---|----------|-----------------|----------------|-----------------|----------|
|   |1         |                 |2021-03-15      |14:00:00         |          |
|   |1         |                 |2021-04-02      |09:15:00         |          |
|   |1         |                 |2021-07-01      |17:00:00         |          |
|   |1         |                 |2021-07-02      |09:15:00         |          |
|   |1         |                 |2021-07-03      |09:15:00         |          |
|1  |1         |                 |2021-09-12      |10:30:00         |1         |
|   |2         |                 |2021-07-03      |09:15:00         |          |
|6  |2         |Second Dose      |2021-12-21      |12:00:00         |2         |
|4  |2         |Booster          |2021-12-21      |12:15:00         |3         |
|4  |2         |                 |2021-12-23      |12:00:00         |          |
|60 |2         |Second Dose      |2021-12-28      |09:15:00         |2         |
|53 |2         |Second Dose      |2021-12-30      |10:45:00         |2         |
|61 |2         |Booster          |2022-01-28      |09:15:00         |3         |
|60 |2         |Booster          |2022-03-28      |10:15:00         |3         |
|53 |2         |Booster          |2022-03-30      |14:30:00         |3         |
|7  |3         |Second Dose      |2021-12-05      |08:15:00         |2         |
|19 |3         |Booster          |2021-12-05      |11:30:00         |3         |
|20 |3         |Booster          |2021-12-05      |11:45:00         |3         |
|16 |3         |Second Dose      |2021-12-13      |13:15:00         |2         |
|10 |3         |Booster          |2021-12-22      |12:15:00         |2         |
|10 |3         |Booster          |2022-02-12      |12:15:00         |3         |
|7  |3         |Booster          |2022-02-18      |10:15:00         |3         |
|16 |3         |Booster          |2022-03-15      |13:15:00         |3         |
|32 |5         |Second Dose      |2021-12-05      |14:15:00         |2         |
|33 |5         |Second Dose      |2021-12-07      |11:30:00         |2         |
|30 |5         |Second Dose      |2021-12-08      |12:00:00         |2         |
|35 |5         |Second Dose      |2021-12-08      |12:45:00         |2         |
|31 |5         |Second Dose      |2021-12-08      |14:00:00         |2         |
|40 |5         |Second Dose      |2021-12-10      |11:45:00         |2         |
|40 |5         |Second Dose      |2021-12-10      |12:45:00         |2         |
|34 |5         |Second Dose      |2021-12-12      |12:30:00         |2         |
|25 |5         |Booster          |2021-12-13      |14:45:00         |3         |
|36 |5         |Second Dose      |2022-01-08      |09:45:00         |2         |
|35 |5         |Booster          |2022-05-08      |12:45:00         |3         |
|40 |5         |Booster          |2022-05-10      |11:45:00         |2         |
|36 |5         |Booster          |2022-10-08      |12:45:00         |3         |
|8  |8         |Second Dose      |2021-12-08      |15:15:00         |2         |
|51 |8         |Second Dose      |2021-12-09      |12:45:00         |2         |
|41 |8         |Second Dose      |2021-12-10      |11:45:00         |2         |
|12 |8         |Second Dose      |2021-12-11      |13:15:00         |2         |
|13 |8         |Second Dose      |2021-12-13      |13:15:00         |2         |
|45 |8         |Second Dose      |2021-12-20      |10:15:00         |2         |
|43 |8         |Second Dose      |2021-12-20      |13:45:00         |2         |
|50 |8         |Second Dose      |2021-12-28      |10:15:00         |2         |
|52 |8         |Second Dose      |2021-12-30      |08:45:00         |2         |
|51 |8         |Booster          |2022-01-19      |08:45:00         |3         |
|41 |8         |Booster          |2022-03-10      |08:45:00         |3         |
|43 |8         |Booster          |2022-03-20      |16:45:00         |3         |
|52 |8         |Booster          |2022-03-30      |08:45:00         |3         |
|50 |8         |Booster          |2022-04-08      |10:15:00         |3         |
|13 |8         |Booster          |2022-04-13      |13:15:00         |3         |
|45 |8         |Booster          |2022-05-20      |12:00:00         |3         |


SELECT * FROM Eligibility e ;

|groupNumber|province                 |
|-----------|-------------------------|
|1          |British Columbia         |
|1          |Manitoba                 |
|1          |New Brunswick            |
|1          |Newfoundland and Labrador|
|1          |Nova Scotia              |
|3          |Ontario                  |
|1          |Prince Edward Island     |
|1          |Québec                   |
|1          |Saskatchewan             |


SELECT * FROM InfectionHistory ih ;

|pid|dateOfInfection|typeOfInfection  |
|---|---------------|-----------------|
|3  |2021-11-22     |Delta (B.1.617.2)|
|6  |2020-12-29     |Gamma (P1)       |
|10 |2020-12-22     |Gamma (P1)       |
|12 |2021-02-22     |Alpha (B.1.1.7)  |
|14 |2021-05-17     |Gamma (P1)       |
|14 |2021-06-20     |Alpha (B.1.1.7)  |
|17 |2021-03-28     |R.1              |
|17 |2021-07-20     |Gamma (P1)       |
|26 |2021-04-22     |Delta (B.1.617.2)|
|33 |2021-05-13     |Delta (B.1.617.2)|
|41 |2021-10-03     |Gamma (P1)       |
|42 |2021-04-21     |MU (B.1.621)     |
|43 |2021-05-08     |Gamma (P1)       |
|45 |2021-09-02     |R.1              |
|51 |2021-05-14     |Delta (B.1.617.2)|
|54 |2021-02-03     |MU (B.1.621)     |
|54 |2021-07-09     |Delta (B.1.617.2)|
|55 |2021-06-26     |Alpha (B.1.1.7)  |
|56 |2021-11-10     |MU (B.1.621)     |
|58 |2020-12-01     |R.1              |
|58 |2021-10-24     |Gamma (P1)       |
|59 |2020-12-11     |Beta (B.1.351)   |
|59 |2021-04-21     |Delta (B.1.617.2)|
|61 |2021-11-21     |MU (B.1.621)     |
|63 |2021-09-15     |Gamma (P1)       |
|64 |2021-08-15     |Gamma (P1)       |
|64 |2021-09-22     |Delta (B.1.617.2)|
|66 |2021-06-18     |Gamma (P1)       |
|70 |2021-02-22     |Gamma (P1)       |
|70 |2021-07-31     |R.1              |
|71 |2021-10-12     |Alpha (B.1.1.7)  |
|74 |2021-09-12     |R.1              |
|75 |2021-06-07     |MU (B.1.621)     |
|76 |2021-10-12     |R.1              |
|80 |2021-03-04     |Alpha (B.1.1.7)  |
|84 |2021-04-30     |Delta (B.1.617.2)|
|85 |2021-03-21     |MU (B.1.621)     |
|87 |2021-03-11     |Beta (B.1.351)   |
|88 |2021-02-07     |Beta (B.1.351)   |
|94 |2021-01-03     |Alpha (B.1.1.7)  |
|96 |2021-06-21     |Beta (B.1.351)   |
|102|2020-12-13     |R.1              |
|109|2021-03-27     |Alpha (B.1.1.7)  |
|112|2021-07-13     |Gamma (P1)       |
|114|2021-03-02     |Delta (B.1.617.2)|
|116|2021-03-10     |Delta (B.1.617.2)|
|117|2021-05-16     |Beta (B.1.351)   |
|119|2020-12-31     |R.1              |
|134|2021-03-14     |Delta (B.1.617.2)|
|137|2021-01-09     |Gamma (P1)       |
|145|2021-07-21     |Gamma (P1)       |
|149|2021-06-10     |Beta (B.1.351)   |
|150|2021-05-26     |MU (B.1.621)     |
|152|2021-01-02     |R.1              |
|153|2021-07-04     |Delta (B.1.617.2)|
|156|2021-05-17     |Alpha (B.1.1.7)  |
|161|2021-01-05     |Alpha (B.1.1.7)  |
|162|2021-09-10     |Alpha (B.1.1.7)  |
|164|2021-04-30     |Gamma (P1)       |
|167|2021-05-11     |Gamma (P1)       |
|167|2021-11-06     |Gamma (P1)       |
|171|2021-02-16     |Gamma (P1)       |
|171|2021-10-27     |R.1              |
|172|2021-07-20     |Beta (B.1.351)   |
|177|2021-05-25     |Alpha (B.1.1.7)  |
|179|2021-01-22     |Gamma (P1)       |
|179|2021-10-13     |Delta (B.1.617.2)|
|182|2021-01-01     |MU (B.1.621)     |
|182|2021-09-05     |Delta (B.1.617.2)|
|183|2021-03-09     |Delta (B.1.617.2)|
|183|2021-06-22     |Gamma (P1)       |
|187|2021-02-28     |Gamma (P1)       |
|189|2021-03-29     |MU (B.1.621)     |
|192|2021-07-29     |Gamma (P1)       |
|193|2021-09-14     |Beta (B.1.351)   |
|195|2020-12-29     |R.1              |
|195|2021-05-27     |Delta (B.1.617.2)|
|196|2021-06-10     |Delta (B.1.617.2)|
|197|2021-06-19     |Gamma (P1)       |

SELECT * FROM Manages m ;

|pid|SINNumber|facilityID|wage|managerID|startDate |endDate   |
|---|---------|----------|----|---------|----------|----------|
|14 |418299033|2         |52.5|2001     |2020-04-01|2021-10-01|
|45 |171176247|3         |51.5|3001     |2020-04-01|2021-10-01|
|49 |108558107|4         |50.5|4001     |2020-04-01|2021-10-01|
|93 |770069806|5         |51.5|5001     |2020-04-01|2021-10-01|
|102|641445211|8         |52.5|8001     |2020-04-01|2021-10-01|
|117|102858398|6         |55.0|6001     |2020-04-01|2021-10-01|
|118|415846322|7         |55.0|7001     |2020-04-01|2021-10-01|
|121|472747547|9         |53.5|9001     |2020-04-01|2021-10-01|
|123|102271004|10        |53.5|10001    |2020-04-01|2021-10-01|


SELECT * FROM OperatingHours oh ;

|facilityID|dayOfTheWeek|openingTime|closingTime|
|----------|------------|-----------|-----------|
|1         |1           |08:00:00   |21:00:00   |
|1         |2           |08:00:00   |21:00:00   |
|1         |3           |08:00:00   |21:00:00   |
|1         |4           |08:00:00   |21:00:00   |
|1         |5           |08:00:00   |21:00:00   |
|1         |6           |09:00:00   |18:00:00   |
|1         |7           |08:00:00   |18:00:00   |
|2         |1           |08:00:00   |21:00:00   |
|2         |2           |08:00:00   |21:00:00   |
|2         |3           |08:00:00   |21:00:00   |
|2         |4           |08:00:00   |21:00:00   |
|2         |5           |08:00:00   |21:00:00   |
|2         |6           |09:00:00   |18:00:00   |
|2         |7           |09:00:00   |18:00:00   |
|3         |1           |08:00:00   |21:00:00   |
|3         |2           |08:00:00   |21:00:00   |
|3         |3           |08:00:00   |21:00:00   |
|3         |4           |08:00:00   |21:00:00   |
|3         |5           |08:00:00   |21:00:00   |
|3         |6           |09:00:00   |18:00:00   |
|3         |7           |09:00:00   |18:00:00   |
|4         |1           |08:00:00   |21:00:00   |
|4         |2           |08:00:00   |21:00:00   |
|4         |3           |08:00:00   |21:00:00   |
|4         |4           |08:00:00   |21:00:00   |
|4         |5           |08:00:00   |21:00:00   |
|4         |6           |08:00:00   |21:00:00   |
|4         |7           |08:00:00   |21:00:00   |
|5         |1           |08:00:00   |21:00:00   |
|5         |2           |08:00:00   |21:00:00   |
|5         |3           |08:00:00   |21:00:00   |
|5         |4           |08:00:00   |21:00:00   |
|5         |5           |08:00:00   |21:00:00   |
|5         |6           |09:00:00   |18:00:00   |
|5         |7           |09:00:00   |18:00:00   |
|6         |1           |08:00:00   |21:00:00   |
|6         |2           |08:00:00   |21:00:00   |
|6         |3           |08:00:00   |21:00:00   |
|6         |4           |08:00:00   |21:00:00   |
|6         |5           |08:00:00   |21:00:00   |
|6         |6           |09:00:00   |18:00:00   |
|6         |7           |09:00:00   |18:00:00   |
|7         |1           |08:00:00   |21:00:00   |
|7         |2           |08:00:00   |21:00:00   |
|7         |3           |08:00:00   |21:00:00   |
|7         |4           |08:00:00   |21:00:00   |
|7         |5           |08:00:00   |21:00:00   |
|7         |6           |09:00:00   |18:00:00   |
|7         |7           |09:00:00   |18:00:00   |
|8         |1           |08:00:00   |21:00:00   |
|8         |2           |08:00:00   |21:00:00   |
|8         |3           |08:00:00   |21:00:00   |
|8         |4           |08:00:00   |21:00:00   |
|8         |5           |08:00:00   |21:00:00   |
|8         |6           |09:00:00   |18:00:00   |
|8         |7           |09:00:00   |18:00:00   |
|9         |1           |08:00:00   |21:00:00   |
|9         |2           |08:00:00   |21:00:00   |
|9         |3           |08:00:00   |21:00:00   |
|9         |4           |08:00:00   |21:00:00   |
|9         |5           |08:00:00   |21:00:00   |
|9         |6           |09:00:00   |18:00:00   |
|9         |7           |09:00:00   |18:00:00   |
|10        |1           |08:00:00   |21:00:00   |
|10        |2           |08:00:00   |21:00:00   |
|10        |3           |08:00:00   |21:00:00   |
|10        |4           |08:00:00   |21:00:00   |
|10        |5           |08:00:00   |21:00:00   |
|10        |6           |09:00:00   |18:00:00   |
|10        |7           |09:00:00   |18:00:00   |


SELECT * FROM Person p ;

|pid|firstName       |middleInitial|lastName     |dateOfBirth|phoneNumber |address                  |postalCode|city                       |provinceOrState     |citizenship  |email                            |
|---|----------------|-------------|-------------|-----------|------------|-------------------------|----------|---------------------------|--------------------|-------------|---------------------------------|
|1  |Loydie          |H            |Huish        |2000-11-29 |523-941-6247|22592 Sloan Drive        |G3L       |Saint-Raymond              |Québec              |Canada       |lhuish0@theguardian.com          |
|2  |Aristotle       |D            |Frensche     |1991-06-08 |953-689-0807|7 6th Terrace            |H7S       |Laval                      |Québec              |Canada       |afrensche1@skype.com             |
|3  |Davin           |U            |Walkden      |1982-12-16 |121-398-4324|88995 Pond Parkway       |J3H       |Mont-Saint-Hilaire         |Québec              |Canada       |dwalkden2@newyorker.com          |
|4  |Chantalle       |W            |Gratrix      |1953-06-03 |561-915-4142|810 Esker Avenue         |N0H       |Cap-Santé                  |Québec              |Canada       |cgratrix3@creativecommons.org    |
|5  |Daren           |B            |Peyes        |1956-10-25 |384-609-6931|45 Upham Pass            |T7Z       |Prévost                    |Québec              |Canada       |dpeyes4@live.com                 |
|6  |Margeaux        |B            |Dedham       |1976-09-13 |667-279-0777|25890 Roxbury Circle     |K2C       |Pierreville                |Québec              |Canada       |mdedham5@dagondesign.com         |
|7  |ChangedName     |U            |ChangedLast  |1982-01-29 |911-873-0889|28836 Amoth Park         |G6W       |Lévis                      |Québec              |Canada       |gdoxsey6@mozilla.org             |
|8  |Rick            |E            |Foxton       |1967-12-07 |916-587-4584|63274 Tomscot Circle     |G5X       |Beauceville                |Québec              |Canada       |rfoxton7@goo.ne.jp               |
|10 |Berny           |N            |Ribbens      |1955-02-14 |327-580-8484|11 Schmedeman Junction   |J3Y       |Salaberry-de-Valleyfield   |Québec              |Canada       |bribbens9@xrea.com               |
|11 |Guntar          |Q            |Rue          |1981-09-06 |906-853-0032|9 Kennedy Park           |G3A       |Saint-Augustin-de-Desmaures|Québec              |Canada       |gruea@tinypic.com                |
|12 |Evita           |A            |Juris        |1999-11-07 |462-113-9947|785 Waywood Hill         |S0H       |Picton                     |Ontario             |Canada       |ejurisb@delicious.com            |
|13 |Elysia          |U            |Lidierth     |1998-07-10 |912-150-2858|2 Hoepker Junction       |G6W       |Lévis                      |Québec              |Canada       |elidierthc@parallels.com         |
|14 |Simonne         |E            |Bardill      |1949-03-13 |480-112-1380|150 Thackeray Crossing   |J7R       |New-Richmond               |Québec              |Canada       |sbardilld@geocities.jp           |
|15 |Brigitta        |P            |Antognelli   |2007-10-22 |446-206-7116|2 Almo Crossing          |M3H       |Willowdale                 |Ontario             |Canada       |bantognellie@networksolutions.com|
|16 |Kamillah        |U            |Benwell      |1992-10-31 |203-746-6035|3197 Lukken Trail        |J5B       |Delson                     |Québec              |Canada       |kbenwellf@vinaora.com            |
|17 |Jacinthe        |U            |Melladew     |1976-08-11 |901-251-8054|1625 Marcy Junction      |J8H       |Lachute                    |Québec              |Canada       |jmelladewg@myspace.com           |
|18 |Maryanna        |U            |Farland      |1952-06-20 |801-271-0421|5 Fair Oaks Point        |G3L       |Saint-Raymond              |Québec              |Canada       |mfarlandh@seesaa.net             |
|19 |Roby            |K            |Monks        |1993-09-10 |296-318-0977|4 Prairie Rose Center    |L8P       |Sainte-Anne-des-Monts      |Québec              |Canada       |rmonksi@engadget.com             |
|20 |Gina            |R            |Spurr        |1962-12-24 |128-631-6681|98021 Oriole Center      |G5X       |Beauceville                |Québec              |Canada       |gspurrj@ifeng.com                |
|21 |Sherline        |Q            |Willbourne   |1961-02-12 |100-813-5928|4093 Oak Lane            |J1S       |Windsor                    |Québec              |Canada       |swillbournek@blog.com            |
|22 |Myrna           |J            |Hurrion      |1959-08-09 |727-640-8239|21109 Helena Place       |N5C       |Ingersoll                  |Ontario             |Canada       |mhurrionl@goodreads.com          |
|23 |Nadiya          |I            |Griswood     |1951-01-17 |219-888-2467|5 Sheridan Place         |G9H       |Bécancour                  |Québec              |Canada       |ngriswoodm@e-recht24.de          |
|24 |Belicia         |K            |Wrankmore    |1982-01-06 |490-981-9697|9 Westport Hill          |J6A       |Little Current             |Ontario             |Canada       |bwrankmoren@oracle.com           |
|25 |Xenia           |Q            |Benn         |1951-11-12 |401-883-7053|205 Larry Junction       |V5Y       |Ferme-Neuve                |Québec              |Canada       |xbenno@google.es                 |
|26 |Corene          |Q            |Petricek     |1946-03-29 |311-798-2816|119 Monument Circle      |J5X       |LÉpiphanie                 |Québec              |Canada       |cpetricekp@flavors.me            |
|27 |Annamarie       |V            |Cossey       |1991-05-01 |565-238-8333|16890 Ramsey Junction    |S0H       |Picton                     |Ontario             |Canada       |acosseyq@businessweek.com        |
|28 |Verena          |P            |Stirgess     |2007-01-07 |371-971-9175|2267 Crest Line Hill     |N3T       |Brant                      |Ontario             |Canada       |vstirgessr@noaa.gov              |
|29 |Arvie           |T            |Martello     |2007-08-02 |895-522-4042|6929 Cherokee Court      |V6Z       |Richmond                   |Québec              |Canada       |amartellos@meetup.com            |
|30 |Mirilla         |A            |Bidgood      |1983-10-05 |200-711-7532|3 Hagan Pass             |P0T       |Carleton-sur-Mer           |Québec              |Canada       |mbidgoodt@fastcompany.com        |
|31 |Doyle           |S            |Rochford     |1970-12-15 |999-686-2275|8097 Bluejay Court       |J7G       |Sainte-Thérèse             |Québec              |Canada       |drochfordu@omniture.com          |
|32 |Fae             |V            |Fanshaw      |1961-02-04 |504-185-4008|1 Myrtle Terrace         |V9J       |Waterloo                   |Québec              |Canada       |ffanshawv@engadget.com           |
|33 |Grace           |B            |Condon       |1954-10-02 |984-836-0610|70 Magdeline Terrace     |K7R       |Skatepark                  |Ontario             |Canada       |gcondonw@webmd.com               |
|34 |Adriano         |J            |Braid        |1946-06-23 |380-420-4047|71695 Elgar Way          |G8B       |Saint-Tite                 |Québec              |Canada       |abraidx@npr.org                  |
|35 |Rhys            |D            |Foyston      |1997-12-15 |728-329-7621|6627 Westerfield Trail   |J6E       |Joliette                   |Québec              |Canada       |rfoystony@pen.io                 |
|36 |Katina          |C            |Coldbath     |1985-08-15 |611-232-3735|894 Maple Street         |G5J       |Amqui                      |Québec              |Canada       |kcoldbathz@ning.com              |
|37 |Hamnet          |K            |Luparti      |1976-04-21 |769-348-4459|0727 Straubel Center     |P6A       |Marathon                   |Ontario             |Canada       |hluparti10@vistaprint.com        |
|39 |Tabbie          |W            |Ewbank       |2004-10-19 |361-424-7111|4 Chive Street           |J6W       |Bedford                    |Québec              |Canada       |tewbank12@scientificamerican.com |
|41 |Chloris         |D            |Mitskevich   |1974-01-19 |483-373-0416|757 Magdeline Point      |G0N       |Adstock                    |Québec              |Canada       |cmitskevich14@github.io          |
|42 |Perl            |V            |Mellodey     |1982-06-24 |114-625-9191|6109 Aberg Place         |T5Y       |Saint-André-Avellin        |Québec              |Canada       |pmellodey15@nifty.com            |
|43 |Ewen            |M            |Seaman       |1985-10-11 |930-286-0150|117 Helena Center        |K8H       |Petawawa                   |Ontario             |Canada       |eseaman16@squarespace.com        |
|44 |Storm           |R            |Baleine      |1966-03-04 |949-156-9688|7 5th Trail              |E6J       |North Perth                |Ontario             |Canada       |sbaleine17@hatena.ne.jp          |
|45 |Charity         |B            |Streeten     |1971-04-18 |761-237-4504|8 Pepper Wood Hill       |K8P       |Belleville                 |Ontario             |Canada       |cstreeten18@reverbnation.com     |
|46 |Zia             |C            |Ley          |1964-05-30 |259-209-0552|79185 Schiller Alley     |K6V       |Notre-Dame-des-Prairies    |Québec              |Canada       |zley19@zimbio.com                |
|47 |Randi           |I            |Betz         |1960-05-31 |797-460-4607|7 6th Park               |L1K       |Oshawa                     |Ontario             |Canada       |rbetz1a@microsoft.com            |
|49 |Iago            |Y            |Hovey        |1954-03-21 |346-968-2183|6 South Center           |E4K       |Dorchester                 |Ontario             |Canada       |ihovey1c@businessinsider.com     |
|50 |Rab             |W            |Stutard      |1946-04-22 |903-718-5398|31117 Village Junction   |N5C       |Ingersoll                  |Ontario             |Canada       |rstutard1d@businesswire.com      |
|51 |Maxie           |S            |Myton        |1989-10-22 |815-860-8742|94006 Meadow Ridge Street|J1A       |Coaticook                  |Québec              |Canada       |mmyton1e@wufoo.com               |
|52 |Eadith          |Y            |Prantl       |2005-04-14 |144-210-5338|78 Bay Street            |C1B       |Stratford                  |Ontario             |Canada       |eprantl1f@umich.edu              |
|53 |Aubry           |V            |OConnor      |1998-10-14 |991-821-7688|7017 Elgar Center        |T0C       |Norfolk County             |Ontario             |Canada       |aoconnor1g@prnewswire.com        |
|54 |Tiebout         |I            |Delacote     |2003-10-15 |706-894-8062|2570 Springview Parkway  |N3T       |Brant                      |Ontario             |Canada       |tdelacote1h@1688.com             |
|55 |Damita          |D            |Prevett      |1945-11-14 |102-376-7648|49 Dakota Road           |P6A       |Marathon                   |Ontario             |Canada       |dprevett1i@narod.ru              |
|56 |Celeste         |A            |Leighfield   |1995-10-06 |561-840-0948|164 Ruskin Lane          |G3M       |Donnacona                  |Québec              |Canada       |cleighfield1j@deviantart.com     |
|57 |Linzy           |W            |Bresnahan    |1979-10-21 |670-745-5350|33403 Bartelt Park       |L8J       |Trois-Rivières             |Québec              |Canada       |lbresnahan1k@intel.com           |
|58 |Joya            |S            |Mehmet       |1948-05-11 |879-649-9429|7525 Troy Alley          |J6E       |Joliette                   |Québec              |Canada       |jmehmet1l@about.com              |
|59 |Hamish          |O            |Di Francecshi|2006-12-15 |722-240-9573|86893 Schlimgen Center   |S4A       |Hearst                     |Ontario             |Canada       |hdifrancecshi1m@ted.com          |
|60 |Caz             |N            |Baukham      |1962-01-29 |687-703-3001|2 Drewry Terrace         |K7S       |Arnprior                   |Ontario             |Canada       |cbaukham1n@oracle.com            |
|61 |Ripley          |Y            |Thursby      |1966-09-05 |639-324-1003|558 Maple Wood Center    |N2B       |East Angus                 |Québec              |Canada       |rthursby1o@flavors.me            |
|62 |Chloris         |C            |Havesides    |2005-05-15 |675-944-9623|48535 Prentice Way       |E9H       |Prince Edward              |Ontario             |Canada       |chavesides1p@china.com.cn        |
|63 |Odele           |O            |Dowtry       |2003-02-19 |761-143-7390|8 Arizona Plaza          |G5N       |Papineauville              |Québec              |Canada       |odowtry1q@hatena.ne.jp           |
|64 |Erika           |T            |Jandourek    |1980-07-19 |541-651-2544|33641 Meadow Ridge Park  |S4A       |Hearst                     |Ontario             |Canada       |ejandourek1r@paginegialle.it     |
|65 |Ingmar          |J            |Gornall      |1987-06-19 |944-178-1134|235 Ludington Way        |H9X       |LÎle-Perrot                |Québec              |Canada       |igornall1s@creativecommons.org   |
|66 |Channa          |K            |Wraggs       |1948-01-24 |520-979-5798|1301 Stone Corner Alley  |K8H       |Petawawa                   |Ontario             |Canada       |cwraggs1t@mediafire.com          |
|67 |Celestyn        |R            |De Hooch     |1951-09-14 |299-720-4836|5 Ryan Hill              |H9P       |Dollard-Des Ormeaux        |Québec              |Canada       |cdehooch1u@mtv.com               |
|68 |Allis           |N            |Shower       |1973-07-26 |970-103-1184|5 Sunnyside Trail        |E3G       |Powassan                   |Ontario             |Canada       |ashower1v@4shared.com            |
|69 |Joseito         |I            |Band         |1989-12-09 |736-998-3397|1 Hauk Trail             |G8K       |Saint-Félicien             |Québec              |Canada       |jband1w@prnewswire.com           |
|70 |Meggie          |Q            |Bramwell     |1964-02-01 |423-195-9887|7272 Nova Avenue         |J7J       |Blainville                 |Québec              |Canada       |mbramwell1x@clickbank.net        |
|71 |Lorinda         |H            |Ratley       |1994-12-03 |765-367-6724|78947 Kedzie Circle      |K7C       |Carleton Place             |Ontario             |Canada       |lratley1y@spiegel.de             |
|72 |Luce            |H            |Glazebrook   |2005-08-22 |158-202-1198|7 Granby Pass            |T9M       |Neuville                   |Québec              |Canada       |lglazebrook1z@tuttocitta.it      |
|73 |Barnard         |G            |Darree       |1951-12-18 |841-598-0940|9 Harbort Trail          |J8C       |Sainte-Agathe-des-Monts    |Québec              |Canada       |bdarree20@wordpress.org          |
|74 |Brigitte        |L            |Allsopp      |2002-04-22 |752-748-9063|6827 Cordelia Way        |K2C       |Pierreville                |Québec              |Canada       |ballsopp21@unesco.org            |
|75 |Torrey          |G            |Sessions     |2005-03-24 |959-371-9477|593 Valley Edge Avenue   |N0N       |Petrolia                   |Ontario             |Canada       |tsessions22@indiatimes.com       |
|76 |Aloin           |E            |Collishaw    |1945-04-17 |627-526-6662|93 Tomscot Crossing      |J3M       |Marieville                 |Québec              |Canada       |acollishaw23@yellowpages.com     |
|77 |Maureene        |P            |Hubert       |1993-05-08 |253-610-2233|368 Farmco Place         |J1E       |Fermont                    |Québec              |Canada       |mhubert24@jugem.jp               |
|78 |Renelle         |X            |Akred        |1990-04-29 |936-637-0579|8768 Stone Corner Parkway|L0P       |Senneterre                 |Québec              |Canada       |rakred25@ameblo.jp               |
|79 |Cristobal       |E            |Guess        |1958-02-11 |462-215-9600|8664 Rigney Street       |J7G       |Boisbriand                 |Québec              |Canada       |cguess26@census.gov              |
|80 |Anallese        |L            |Minget       |1985-10-21 |522-654-5321|7349 Bartelt Junction    |K8P       |Belleville                 |Ontario             |Canada       |aminget27@vkontakte.ru           |
|81 |Hube            |A            |Jurs         |1996-12-31 |971-989-9437|54 Randy Drive           |P7L       |Neebing                    |Ontario             |Canada       |hjurs28@wiley.com                |
|82 |Alyce           |W            |Loudyan      |1988-10-26 |783-430-8109|10 Brown Way             |H4R       |Havre-Saint-Pierre         |Québec              |Canada       |aloudyan29@de.vu                 |
|83 |Thomasin        |N            |Simoni       |1979-11-20 |230-187-6242|0 Upham Street           |K8H       |Petawawa                   |Ontario             |Canada       |tsimoni2a@booking.com            |
|84 |Alena           |H            |Delamaine    |1974-01-30 |200-604-3047|62 Toban Park            |H9K       |Sainte-Marthe-sur-le-Lac   |Québec              |Canada       |adelamaine2b@discovery.com       |
|85 |Lorne           |S            |Tuckett      |1982-11-25 |511-871-6739|7 Northfield Center      |J4X       |Sainte-Anne-des-Plaines    |Québec              |Canada       |ltuckett2c@jalbum.net            |
|86 |Kevina          |F            |Threadgall   |1989-03-18 |351-329-6156|99952 Jay Center         |K2C       |Pierreville                |Québec              |Canada       |kthreadgall2d@booking.com        |
|87 |Garth           |B            |Bonevant     |1985-10-05 |402-271-3962|43 Kim Hill              |P4P       |Timmins                    |Ontario             |Canada       |gbonevant2e@clickbank.net        |
|88 |Carry           |G            |Fellona      |1970-08-22 |952-549-3240|74502 Jenifer Alley      |T1J       |Orangeville                |Ontario             |Canada       |cfellona2f@nbcnews.com           |
|89 |Erik            |M            |Gerriessen   |1962-07-19 |966-758-2113|31192 Schurz Pass        |N4N       |Hanover                    |Ontario             |Canada       |egerriessen2g@bloomberg.com      |
|90 |Brooks          |S            |Wakeling     |2006-08-03 |769-975-2448|80 Saint Paul Terrace    |E6J       |North Perth                |Ontario             |Canada       |bwakeling2h@mayoclinic.com       |
|91 |Jandy           |K            |Emmins       |1982-04-18 |322-206-6219|7 Rockefeller Crossing   |N2L       |Labelle                    |Québec              |Canada       |jemmins2i@cafepress.com          |
|92 |Kara-lynn       |W            |Mapam        |1984-10-27 |427-830-2376|013 Birchwood Park       |P2N       |Kirkland Lake              |Ontario             |Canada       |kmapam2j@yahoo.com               |
|93 |Joellyn         |F            |Burkitt      |1972-03-05 |403-853-8429|556 Boyd Center          |H9W       |Beaconsfield               |Québec              |Canada       |jburkitt2k@netlog.com            |
|94 |Tiebold         |F            |Straine      |1978-06-14 |523-660-1604|2 Stang Road             |G5H       |Mont-Joli                  |Québec              |Canada       |tstraine2l@cyberchimps.com       |
|95 |Brit            |H            |Brigge       |1945-03-13 |895-438-6303|750 Tony Junction        |H9X       |LÎle-Perrot                |Québec              |Canada       |bbrigge2m@wiley.com              |
|96 |Nannette        |L            |Neilson      |2005-06-29 |496-648-3836|7087 Arapahoe Street     |J6N       |Beauharnois                |Québec              |Canada       |nneilson2n@mtv.com               |
|97 |Randal          |J            |Worham       |1967-01-03 |394-894-1049|795 Union Alley          |L2V       |Thorold                    |Ontario             |Canada       |rworham2o@blogger.com            |
|98 |Reilly          |E            |Somner       |1959-02-16 |843-801-1347|51 Pearson Park          |L0P       |Senneterre                 |Québec              |Canada       |rsomner2p@cbslocal.com           |
|99 |Orin            |P            |Huggon       |1969-06-22 |833-768-7238|9621 Sunfield Way        |J9E       |Maniwaki                   |Québec              |Canada       |ohuggon2q@wiley.com              |
|100|Amil            |L            |Evemy        |2004-02-07 |698-105-9953|030 Westport Road        |V6L       |Saint-Lambert-de-Lauzon    |Québec              |Canada       |aevemy2r@ca.gov                  |
|101|Sephira         |E            |Renshell     |1948-11-28 |784-115-2888|23 Katie Avenue          |L4R       |Midland                    |Ontario             |Canada       |srenshell2s@storify.com          |
|102|Marketa         |O            |Comelini     |1980-08-08 |530-974-3965|7 Straubel Plaza         |G5B       |Port-Cartier               |Québec              |Canada       |mcomelini2t@bluehost.com         |
|103|Fayette         |J            |Yakuntzov    |1965-07-24 |315-556-4874|0145 Grover Point        |E9H       |Prince Edward              |Ontario             |Canada       |fyakuntzov2u@senate.gov          |
|104|Nevin           |F            |Sporle       |1959-03-18 |186-808-5816|249 Melby Court          |J3H       |Beloeil                    |Québec              |Canada       |nsporle2v@house.gov              |
|105|Harri           |V            |Melley       |1976-04-13 |502-124-7976|71 Memorial Lane         |N0H       |Cap-Santé                  |Québec              |Canada       |hmelley2w@wunderground.com       |
|106|Ogdan           |A            |Fraulo       |1990-03-08 |207-312-0979|5888 Forest Junction     |J5T       |Lavaltrie                  |Québec              |Canada       |ofraulo2x@networkadvertising.org |
|107|Anna-maria      |I            |Bentinck     |2007-06-24 |193-673-9492|3634 Northfield Hill     |P6A       |Marathon                   |Ontario             |Canada       |abentinck2y@google.co.uk         |
|108|Laura           |F            |Cockitt      |1962-06-20 |498-837-5952|185 Independence Place   |J8C       |Sainte-Agathe-des-Monts    |Québec              |Canada       |lcockitt2z@intel.com             |
|109|Randal          |Q            |Franchi      |1998-05-28 |431-689-8129|0363 Maywood Terrace     |L2P       |St. Catharines             |Ontario             |Canada       |rfranchi30@altervista.org        |
|110|Luella          |I            |Grigore      |1951-06-24 |947-368-4441|73 Mosinee Terrace       |G0N       |Adstock                    |Québec              |Canada       |lgrigore31@mozilla.org           |
|111|Madella         |W            |Minshull     |1955-03-21 |426-594-2661|7104 Blaine Place        |L9G       |Lac-Brome                  |Québec              |Canada       |mminshull32@infoseek.co.jp       |
|112|Chloris         |H            |Iglesiaz     |1967-12-24 |575-178-1365|1388 Randy Circle        |G9H       |Bécancour                  |Québec              |Canada       |ciglesiaz33@nhs.uk               |
|113|Clarissa        |Z            |Fairley      |1947-10-27 |741-433-0863|25066 Sundown Way        |J1A       |Coaticook                  |Québec              |Canada       |cfairley34@bing.com              |
|114|Jarrett         |Y            |covino       |2002-06-21 |373-877-8793|65 Longview Lane         |J1J       |Princeville                |Québec              |Canada       |jcovino35@php.net                |
|115|Valli           |Q            |Noriega      |1964-07-01 |975-531-0724|4700 Hagan Hill          |L9J       |Barrie                     |Ontario             |Canada       |vnoriega36@yolasite.com          |
|116|Trixi           |G            |Fairbank     |1982-08-07 |488-941-8752|3 Pankratz Trail         |G6L       |Plessisville               |Québec              |Canada       |tfairbank37@ning.com             |
|117|Barbee          |F            |Pitchers     |1971-12-18 |208-436-6160|189 Warner Drive         |J7B       |Lorraine                   |Québec              |Canada       |bpitchers38@xing.com             |
|118|Truda           |Z            |Sawnwy       |1983-10-06 |929-735-7463|66838 Jenifer Junction   |G6B       |Saint-Bruno-de-Guigues     |Québec              |Canada       |tsawnwy39@blog.com               |
|119|Giffer          |R            |Dudman       |1993-10-02 |120-404-8057|5414 Kenwood Street      |J5B       |Delson                     |Québec              |Canada       |gdudman3a@dion.ne.jp             |
|120|Charleen        |G            |Crapper      |1949-12-26 |853-860-7122|71 Onsgard Parkway       |E4K       |Dorchester                 |Ontario             |Canada       |ccrapper3b@istockphoto.com       |
|121|Arney           |V            |Presidey     |2007-01-15 |385-491-7098|4 Quincy Pass            |M3N       |Vaughan                    |Ontario             |Canada       |apresidey3c@cbslocal.com         |
|122|Reid            |D            |Renad        |1964-07-25 |956-998-1157|87617 Parkside Park      |J8H       |Lachute                    |Québec              |Canada       |rrenad3d@upenn.edu               |
|123|Ailsun          |R            |Kennagh      |1986-11-17 |716-401-4421|9 Marquette Pass         |L3V       |Orillia                    |Ontario             |Canada       |akennagh3e@google.ca             |
|124|Pauli           |E            |Habbershon   |1980-07-11 |194-683-0494|2609 Veith Plaza         |J5V       |Louiseville                |Québec              |Canada       |phabbershon3f@goodreads.com      |
|125|Joe             |B            |Lorrie       |1977-03-11 |593-513-8111|777 Hanover Parkway      |T5Y       |Saint-André-Avellin        |Québec              |Canada       |jlorrie3g@live.com               |
|126|Luca            |V            |Ralls        |1992-04-05 |388-506-0632|0541 Sycamore Hill       |J8Y       |Ottawa                     |Ontario             |Canada       |lralls3h@home.pl                 |
|127|Magdalena       |N            |Shutler      |1951-12-18 |723-234-2847|62768 Clove Center       |T1J       |Orangeville                |Ontario             |Canada       |mshutler3i@vk.com                |
|128|Pasquale        |E            |Knapper      |1965-05-02 |874-279-7147|966 Stephen Alley        |N2B       |East Angus                 |Québec              |Canada       |pknapper3j@sciencedirect.com     |
|129|Vance           |I            |Phillp       |1989-06-25 |941-676-6358|1 Cherokee Hill          |J3H       |Beloeil                    |Québec              |Canada       |vphillp3k@vkontakte.ru           |
|130|Arnuad          |L            |Truse        |1962-06-15 |568-768-5964|2345 Dapin Court         |N5C       |Ingersoll                  |Ontario             |Canada       |atruse3l@businessinsider.com     |
|131|Sibby           |G            |Milnes       |1950-02-14 |892-801-2023|95 Towne Point           |G8B       |Saint-Tite                 |Québec              |Canada       |smilnes3m@whitehouse.gov         |
|132|Gregorius       |P            |Bowsher      |1946-07-25 |915-642-1796|0855 Iowa Point          |G3A       |Saint-Augustin-de-Desmaures|Québec              |Canada       |gbowsher3n@bbb.org               |
|133|Madelene        |N            |Beckinsale   |1945-09-17 |885-268-8405|473 Dunning Circle       |J4B       |Boucherville               |Québec              |Canada       |mbeckinsale3o@reddit.com         |
|134|Rudyard         |L            |Pattesall    |2002-03-28 |536-954-2016|72468 Crownhardt Road    |N2L       |Waterloo                   |Ontario             |Canada       |rpattesall3p@archive.org         |
|135|Rebekah         |J            |Oswal        |1979-03-22 |663-390-0079|01359 Linden Avenue      |J6R       |Mercier                    |Québec              |Canada       |roswal3q@rambler.ru              |
|136|Nico            |V            |Eliet        |1978-06-12 |480-110-0770|403 Division Trail       |G6B       |Saint-Bruno-de-Guigues     |Québec              |Canada       |neliet3r@moonfruit.com           |
|137|Fred            |H            |Bernaldo     |1995-07-17 |323-476-2649|23750 Hollow Ridge Way   |J0N       |Oka                        |Québec              |Canada       |fbernaldo3s@google.com           |
|138|Wallis          |L            |Ashman       |1968-02-08 |407-960-3796|22 Magdeline Park        |K2C       |Pierreville                |Québec              |Canada       |washman3t@wix.com                |
|139|Jorrie          |Y            |Probat       |2003-03-07 |787-634-4919|132 High Crossing Terrace|N2L       |Labelle                    |Québec              |Canada       |jprobat3u@yahoo.com              |
|140|Freddie         |B            |MacCole      |1974-06-18 |704-927-6533|39 Sullivan Center       |N2R       |Kitchener                  |Ontario             |Canada       |fmaccole3v@wordpress.com         |
|141|Gertrudis       |P            |Pasterfield  |1994-09-29 |589-414-6688|442 Manitowish Drive     |G7Y       |Jonquière                  |Québec              |Canada       |gpasterfield3w@seesaa.net        |
|142|Hester          |K            |Takkos       |1963-12-12 |134-945-7268|19806 Welch Drive        |P6A       |Marathon                   |Ontario             |Canada       |htakkos3x@linkedin.com           |
|143|Milty           |J            |Uphill       |1996-07-08 |522-192-9972|49 Toban Point           |J1A       |Coaticook                  |Québec              |Canada       |muphill3y@printfriendly.com      |
|144|Fred            |J            |Dallon       |1988-12-22 |901-495-8868|1488 Stoughton Crossing  |G7K       |Saguenay                   |Québec              |Canada       |fdallon3z@ning.com               |
|145|August          |T            |Mapplethorpe |1998-07-05 |287-451-0354|56 Hermina Pass          |J0N       |Oka                        |Québec              |Canada       |amapplethorpe40@gov.uk           |
|146|Lilas           |N            |Reyna        |1968-03-10 |644-767-4927|296 Fieldstone Point     |J1K       |Sherbrooke                 |Québec              |Canada       |lreyna41@a8.net                  |
|147|Brnaby          |Q            |Andrivot     |1982-11-30 |868-989-1692|9 Carioca Terrace        |T1J       |Orangeville                |Ontario             |Canada       |bandrivot42@mapquest.com         |
|148|Virgie          |F            |Mell         |1949-02-12 |897-611-9854|3 Norway Maple Road      |M7A       |Toronto                    |Ontario             |Canada       |vmell43@samsung.com              |
|149|Roby            |Z            |Cortnay      |1983-09-19 |576-846-3390|97 Banding Junction      |J0N       |Hudson                     |Québec              |Canada       |rcortnay44@multiply.com          |
|150|Talbot          |Q            |Bram         |1969-06-12 |426-544-4524|6 Logan Trail            |V5M       |Mattawa                    |Ontario             |Canada       |tbram45@si.edu                   |
|151|Timmie          |B            |Yablsley     |1947-09-26 |443-329-1448|3 Lillian Street         |21405     |Annapolis                  |Maryland            |United States|tyablsley0@zimbio.com            |
|152|Cathy           |F            |Gornall      |1961-09-07 |804-745-5771|45684 Glacier Hill Center|23242     |Richmond                   |Virginia            |United States|cgornall1@ebay.co.uk             |
|153|Kennith         |G            |Tanser       |1985-06-17 |862-467-2069|327 Rusk Street          |07188     |Newark                     |New Jersey          |United States|ktanser2@salon.com               |
|154|Nissie          |X            |Ryott        |1982-06-30 |515-313-6204|72 Gina Road             |50330     |Des Moines                 |Iowa                |United States|nryott3@wordpress.org            |
|155|Cati            |S            |Rogger       |1986-09-29 |541-960-7864|83 Westport Place        |97405     |Eugene                     |Oregon              |United States|crogger4@springer.com            |
|156|Jessamine       |T            |Corbett      |1966-07-16 |208-414-7644|238 Memorial Road        |83757     |Boise                      |Idaho               |United States|jcorbett5@fda.gov                |
|157|Jarrid          |H            |Kuhnwald     |1990-03-22 |651-691-4706|465 American Ash Alley   |55146     |Saint Paul                 |Minnesota           |United States|jkuhnwald6@liveinternet.ru       |
|158|Xena            |H            |Peet         |1977-01-08 |614-647-1177|71432 Scott Alley        |43284     |Columbus                   |Ohio                |United States|xpeet7@telegraph.co.uk           |
|159|Ashlie          |D            |O Donohue   |1991-06-22 |907-701-4997|14214 Linden Pass        |99512     |Anchorage                  |Alaska              |United States|aodonohue8@epa.gov               |
|160|Andrew          |B            |Prettjohn    |1999-04-15 |808-392-3544|5 Cherokee Center        |96805     |Honolulu                   |Hawaii              |United States|aprettjohn9@fastcompany.com      |
|161|Ardelle         |C            |Talloe       |1971-11-29 |863-858-0582|98 Scoville Court        |33805     |Lakeland                   |Florida             |United States|atalloea@hc360.com               |
|162|Kandace         |J            |Hrynczyk     |2002-11-16 |310-551-1719|30 Michigan Junction     |90310     |Inglewood                  |California          |United States|khrynczykb@google.pl             |
|163|Any             |B            |Foucher      |1977-08-29 |847-557-0496|892 Continental Street   |60078     |Palatine                   |Illinois            |United States|afoucherc@oaic.gov.au            |
|164|Daphna          |Q            |Wiltsher     |1980-12-06 |786-344-1273|50 Sauthoff Terrace      |33158     |Miami                      |Florida             |United States|dwiltsherd@salon.com             |
|165|Dilan           |S            |Hillum       |1960-04-02 |318-989-5860|675 Londonderry Road     |71208     |Monroe                     |Louisiana           |United States|dhillume@buzzfeed.com            |
|166|Paulina         |X            |Jardein      |1987-03-24 |916-160-7574|5 New Castle Hill        |94286     |Sacramento                 |California          |United States|pjardeinf@baidu.com              |
|167|Lief            |B            |Lowell       |1995-09-14 |808-909-4249|951 Westport Trail       |96820     |Honolulu                   |Hawaii              |United States|llowellg@google.com.au           |
|168|Kamillah        |H            |Peskett      |1963-06-20 |312-961-6379|3 Dennis Center          |60686     |Chicago                    |Illinois            |United States|kpesketth@whitehouse.gov         |
|169|Nerta           |U            |Bury         |1956-02-09 |812-985-8712|2 Bonner Hill            |47805     |Terre Haute                |Indiana             |United States|nburyi@google.pl                 |
|170|Brock           |E            |Starbuck     |1998-05-17 |405-171-0611|7087 Ridgeview Center    |73179     |Oklahoma City              |Oklahoma            |United States|bstarbuckj@cyberchimps.com       |
|171|Jayne           |D            |Karleman     |2004-05-08 |907-244-4140|3 Veith Parkway          |99517     |Anchorage                  |Alaska              |United States|jkarlemank@google.fr             |
|172|Agata           |S            |Arias        |2000-06-01 |678-989-7740|2 Florence Junction      |30316     |Atlanta                    |Georgia             |United States|aariasl@de.vu                    |
|173|Jeffry          |W            |Hayller      |2007-10-26 |561-544-7211|6 Center Place           |33416     |West Palm Beach            |Florida             |United States|jhayllerm@tiny.cc                |
|174|Reinhard        |X            |Kerby        |1949-06-04 |202-699-2723|497 Lawn Trail           |20525     |Washington                 |District of Columbia|United States|rkerbyn@free.fr                  |
|175|Carleton        |H            |Tongs        |1957-05-16 |909-893-9284|798 Dennis Drive         |91797     |Pomona                     |California          |United States|ctongso@ning.com                 |
|176|Marissa         |U            |Luckcuck     |1960-08-28 |585-265-1497|0714 Browning Trail      |14619     |Rochester                  |New York            |United States|mluckcuckp@pagesperso-orange.fr  |
|177|Gerald          |D            |Flatt        |1995-05-04 |757-936-9098|527 Trailsway Center     |23612     |Newport News               |Virginia            |United States|gflattq@hatena.ne.jp             |
|178|Adela           |K            |Stoyle       |1946-11-25 |505-766-1783|80 Old Gate Road         |87190     |Albuquerque                |New Mexico          |United States|astoyler@whitehouse.gov          |
|179|Tessy           |L            |Gantlett     |1979-04-08 |404-921-4241|42243 Veith Trail        |31136     |Atlanta                    |Georgia             |United States|tgantletts@lycos.com             |
|180|Danni           |J            |Josefovic    |1964-04-23 |309-663-3475|08776 Cordelia Alley     |61614     |Peoria                     |Illinois            |United States|djosefovict@networksolutions.com |
|181|Polly           |O            |Kerbler      |1947-08-04 |804-956-8629|5545 Mandrake Avenue     |23203     |Richmond                   |Virginia            |United States|pkerbleru@creativecommons.org    |
|182|Gipsy           |F            |Tregidgo     |1997-05-25 |253-872-8367|66 Duke Court            |98481     |Tacoma                     |Washington          |United States|gtregidgov@bandcamp.com          |
|183|Tanitansy       |T            |Simms        |1981-04-16 |615-412-9063|9055 Gateway Plaza       |37220     |Nashville                  |Tennessee           |United States|tsimmsw@chicagotribune.com       |
|184|Blinny          |D            |Scrancher    |1998-12-27 |713-859-7733|17 Arizona Drive         |77201     |Houston                    |Texas               |United States|bscrancherx@webmd.com            |
|185|Worthy          |A            |Cundey       |1994-03-20 |915-586-2930|5 Sommers Terrace        |79994     |El Paso                    |Texas               |United States|wcundeyy@sakura.ne.jp            |
|186|Kiri            |V            |Grogor       |2004-12-31 |281-625-1103|7 Oriole Lane            |77346     |Humble                     |Texas               |United States|kgrogorz@lycos.com               |
|187|Cassy           |Z            |Upsale       |1963-05-30 |505-776-4786|991 Elka Junction        |87180     |Albuquerque                |New Mexico          |United States|cupsale10@1688.com               |
|188|Arlen           |F            |Whyberd      |1969-06-05 |412-713-8836|791 Sycamore Trail       |15215     |Pittsburgh                 |Pennsylvania        |United States|awhyberd11@narod.ru              |
|189|Sherm           |A            |Dudny        |1985-09-03 |512-339-8046|5190 Laurel Pass         |78769     |Austin                     |Texas               |United States|sdudny12@livejournal.com         |
|190|Dyanne          |P            |Klimkiewich  |1946-05-30 |989-712-6658|7 Hagan Place            |48609     |Saginaw                    |Michigan            |United States|dklimkiewich13@cam.ac.uk         |
|191|Julissa         |A            |Taplow       |1955-07-21 |847-506-2864|7576 Longview Court      |60208     |Evanston                   |Illinois            |United States|jtaplow14@prnewswire.com         |
|192|Tobi            |E            |Rodenborch   |1974-08-16 |806-974-5043|93 Reindahl Center       |79452     |Lubbock                    |Texas               |United States|trodenborch15@studiopress.com    |
|193|Jill            |J            |Kanzler      |1973-01-10 |916-525-5175|55 Dottie Alley          |94207     |Sacramento                 |California          |United States|jkanzler16@jalbum.net            |
|194|Thain           |J            |Dorman       |1987-06-02 |812-352-2837|6922 Dwight Avenue       |47134     |Jeffersonville             |Indiana             |United States|tdorman17@geocities.com          |
|195|Yard            |E            |Bodill       |1974-10-01 |240-731-7377|37 Boyd Crossing         |21747     |Hagerstown                 |Maryland            |United States|ybodill18@behance.net            |
|196|Maryl           |B            |McIlwain     |1972-11-22 |413-597-4194|737 Merry Center         |01105     |Springfield                |Massachusetts       |United States|mmcilwain19@netscape.com         |
|197|Georgianna      |F            |Clutheram    |1950-02-04 |828-766-8149|1180 Troy Pass           |28815     |Asheville                  |North Carolina      |United States|gclutheram1a@utexas.edu          |
|198|Greer           |D            |Matheson     |2001-06-07 |630-309-3643|69034 4th Court          |60505     |Aurora                     |Illinois            |United States|gmatheson1b@buzzfeed.com         |
|199|Zilvia          |A            |Daddow       |1954-05-23 |408-835-2733|5 Summit Hill            |95194     |San Jose                   |California          |United States|zdaddow1c@clickbank.net          |
|200|Olga            |I            |Ucchino      |1950-01-26 |253-968-4732|29419 Kensington Lane    |98104     |Seattle                    |Washington          |United States|oucchino1d@census.gov            |
|201|Pannnnnnnnnnnnnn|T            |Test         |2020-11-29 |523-941-6247|TEST                     |TEST      |TEST                       |Quebec              |Canada       |                                 |
|202|New             |D            |Person       |2000-11-29 |514-098-1928|asldkfj                  |JSD       |sdf                        |sdf                 |Canada       |sdf@gmail.com                    |



SELECT * FROM ProvinceList pl ;

|province                 |
|-------------------------|
|British Columbia         |
|Manitoba                 |
|New Brunswick            |
|Newfoundland and Labrador|
|Nova Scotia              |
|Ontario                  |
|Prince Edward Island     |
|Québec                   |
|Saskatchewan             |

SELECT * FROM PublicHealthWorker phw ;

|pid|SINNumber|occupation|
|---|---------|----------|
|1  |628487880|Secretary |
|3  |285646091|Secretary |
|12 |569090620|Nurse     |
|13 |722142095|Nurse     |
|14 |418299033|Manager   |
|15 |134190921|Security  |
|19 |399897743|Nurse     |
|27 |616312360|Secretary |
|39 |678609910|Secretary |
|41 |415729973|Security  |
|42 |245826179|Secretary |
|43 |246764461|Nurse     |
|45 |171176247|Manager   |
|49 |108558107|Manager   |
|52 |236304025|Security  |
|56 |738192183|Security  |
|59 |303072671|Security  |
|60 |865431177|Security  |
|62 |497667276|Security  |
|64 |410505136|Security  |
|64 |628707867|Nurse     |
|69 |760224832|Secretary |
|70 |728788606|Security  |
|73 |486468949|Security  |
|74 |714350626|Secretary |
|75 |403205571|Nurse     |
|76 |336647853|Secretary |
|79 |180301249|Secretary |
|82 |572897828|Security  |
|84 |162181425|Secretary |
|85 |837100145|Security  |
|92 |132800732|Secretary |
|93 |770069806|Manager   |
|101|646316479|Nurse     |
|102|641445211|Manager   |
|103|178074220|Secretary |
|108|606634576|Nurse     |
|111|784486146|Secretary |
|113|761693712|Nurse     |
|114|518817559|Nurse     |
|117|102858398|Manager   |
|118|415846322|Manager   |
|121|472747547|Manager   |
|122|577387401|Nurse     |
|123|102271004|Manager   |
|127|686129320|Secretary |
|129|370104172|Manager   |
|130|353659578|Nurse     |
|133|113559025|Security  |
|135|641218496|Secretary |
|136|582193478|Manager   |
|138|192069739|Nurse     |
|140|106506893|Security  |
|142|793039817|Security  |
|143|159726150|Manager   |
|144|505160970|Security  |
|145|683832662|Nurse     |
|149|418884209|Nurse     |
|150|871902292|Nurse     |


SELECT * FROM RegisteredPerson rp ;

|pid|medicareNumber|medicareDateOfIssue|medicareDateOfExpiry|
|---|--------------|-------------------|--------------------|
|1  |9347          |2017-06-25         |2026-12-28          |
|2  |9330          |2016-05-10         |2027-11-15          |
|3  |9587          |2020-08-01         |2024-08-27          |
|4  |9564          |2019-08-12         |2024-02-12          |
|5  |9514          |2017-06-16         |2029-07-12          |
|6  |9779          |2018-07-10         |2028-09-12          |
|7  |9003          |2019-09-18         |2025-07-07          |
|8  |9137          |2020-06-25         |2028-03-15          |
|10 |9199          |2016-11-07         |2029-05-24          |
|11 |9226          |2020-06-18         |2028-11-08          |
|12 |9715          |2015-03-07         |2026-01-07          |
|13 |9573          |2018-05-17         |2023-02-21          |
|14 |9391          |2017-07-25         |2025-12-23          |
|15 |9567          |2017-04-06         |2026-07-30          |
|16 |9562          |2015-11-30         |2028-01-16          |
|17 |9761          |2019-05-10         |2028-02-05          |
|18 |9548          |2020-01-05         |2024-04-04          |
|19 |9150          |2019-08-22         |2026-02-08          |
|20 |9848          |2019-05-27         |2025-11-15          |
|21 |9763          |2015-06-18         |2024-03-21          |
|22 |9297          |2018-01-02         |2023-01-28          |
|23 |9583          |2019-12-21         |2029-10-01          |
|24 |9482          |2020-10-14         |2027-07-29          |
|25 |9458          |2015-03-25         |2024-07-01          |
|26 |9123          |2018-10-19         |2029-08-08          |
|27 |9066          |2017-05-01         |2023-03-01          |
|28 |9087          |2017-10-07         |2026-10-13          |
|29 |9682          |2015-11-15         |2028-10-25          |
|30 |9000          |2017-03-01         |2027-01-14          |
|31 |9554          |2017-04-13         |2029-06-30          |
|32 |9166          |2018-11-13         |2023-09-03          |
|33 |9878          |2016-10-04         |2026-10-12          |
|34 |9562          |2015-08-07         |2026-12-17          |
|35 |9191          |2020-04-25         |2027-04-21          |
|36 |9065          |2015-02-26         |2027-07-26          |
|37 |9252          |2017-12-12         |2028-07-26          |
|39 |9511          |2019-04-20         |2026-03-26          |
|41 |9493          |2020-04-11         |2029-06-28          |
|42 |9782          |2016-07-16         |2026-03-30          |
|43 |9512          |2019-02-13         |2027-09-19          |
|44 |9390          |2018-09-05         |2029-06-06          |
|45 |9273          |2017-12-30         |2024-06-11          |
|46 |9556          |2018-08-06         |2025-03-20          |
|47 |9548          |2019-01-02         |2023-03-29          |
|49 |9857          |2018-08-08         |2024-12-02          |
|50 |9583          |2015-03-18         |2024-11-11          |
|51 |9632          |2016-06-02         |2028-05-02          |
|52 |9837          |2015-01-10         |2027-06-17          |
|53 |9667          |2018-01-12         |2028-02-20          |
|54 |9888          |2017-12-02         |2025-03-11          |
|55 |9122          |2020-09-17         |2023-02-02          |
|56 |9830          |2020-10-19         |2024-10-27          |
|57 |9275          |2018-07-18         |2028-09-22          |
|58 |9419          |2016-12-01         |2024-04-12          |
|59 |9965          |2016-12-11         |2026-09-04          |
|60 |9329          |2017-08-21         |2028-02-10          |
|61 |9582          |2016-01-28         |2027-11-03          |
|62 |9637          |2018-08-22         |2029-01-02          |
|63 |9565          |2015-03-28         |2029-10-22          |
|64 |9723          |2016-02-24         |2028-11-18          |
|65 |9968          |2020-02-05         |2024-08-08          |
|66 |9625          |2016-02-20         |2024-08-31          |
|67 |9903          |2018-02-08         |2023-09-19          |
|68 |9026          |2015-01-17         |2025-12-06          |
|69 |9505          |2019-07-14         |2029-05-17          |
|70 |9517          |2016-02-24         |2028-11-06          |
|71 |9536          |2016-04-21         |2023-03-16          |
|72 |9410          |2018-11-28         |2028-08-21          |
|73 |9856          |2018-08-10         |2023-07-11          |
|74 |9048          |2015-05-28         |2026-07-24          |
|75 |9152          |2020-06-23         |2026-11-24          |
|76 |9991          |2018-10-20         |2024-08-26          |
|77 |9131          |2015-08-01         |2028-05-07          |
|78 |9727          |2018-05-09         |2029-03-07          |
|79 |9959          |2019-06-24         |2027-08-17          |
|80 |9617          |2019-06-09         |2027-07-07          |
|81 |9087          |2015-02-12         |2023-10-14          |
|82 |9061          |2020-06-18         |2027-09-23          |
|83 |9663          |2015-03-18         |2023-10-07          |
|84 |9992          |2020-07-21         |2027-06-25          |
|85 |9314          |2020-02-23         |2027-10-09          |
|86 |9092          |2018-03-06         |2028-08-31          |
|87 |9390          |2020-04-06         |2024-06-08          |
|88 |9124          |2016-02-11         |2029-04-16          |
|89 |9172          |2015-04-21         |2023-11-01          |
|90 |9795          |2015-01-07         |2024-10-06          |
|91 |9838          |2017-12-09         |2029-10-04          |
|92 |9535          |2018-08-25         |2024-11-13          |
|93 |9489          |2018-10-29         |2029-04-04          |
|94 |9676          |2017-12-10         |2027-02-22          |
|95 |9570          |2016-09-26         |2025-08-03          |
|96 |9079          |2019-04-23         |2023-01-18          |
|97 |9384          |2017-05-29         |2026-01-11          |
|98 |9037          |2018-03-09         |2024-11-01          |
|99 |9297          |2017-06-08         |2027-05-23          |
|100|9113          |2017-08-25         |2025-11-24          |
|101|9400          |2018-10-27         |2028-07-29          |
|102|9802          |2017-06-21         |2023-09-09          |
|103|9668          |2015-05-17         |2028-07-21          |
|104|9424          |2017-07-06         |2027-02-08          |
|105|9430          |2018-12-17         |2024-09-24          |
|106|9553          |2015-12-22         |2023-09-20          |
|107|9347          |2019-08-08         |2024-09-16          |
|108|9767          |2016-06-20         |2025-11-28          |
|109|9733          |2019-09-08         |2024-02-10          |
|110|9334          |2017-09-20         |2023-08-26          |
|111|9544          |2017-02-20         |2025-10-14          |
|112|9485          |2020-08-29         |2026-02-10          |
|113|9059          |2016-03-02         |2028-08-31          |
|114|9328          |2017-12-23         |2026-05-21          |
|115|9449          |2017-12-24         |2028-08-22          |
|116|9308          |2017-05-27         |2027-12-11          |
|117|9505          |2015-10-04         |2025-09-30          |
|118|9749          |2017-11-02         |2025-03-26          |
|119|9812          |2020-01-28         |2029-02-12          |
|120|9039          |2017-11-01         |2023-07-22          |
|121|9073          |2020-08-07         |2024-08-01          |
|122|9031          |2017-08-05         |2028-06-07          |
|123|9398          |2020-12-31         |2025-11-16          |
|124|9113          |2016-08-30         |2026-01-01          |
|125|9575          |2016-07-22         |2026-04-19          |
|126|9070          |2017-04-27         |2026-07-21          |
|127|9463          |2015-10-18         |2026-01-18          |
|128|9711          |2019-08-09         |2028-03-24          |
|129|9197          |2019-10-25         |2024-12-03          |
|130|9746          |2018-08-20         |2024-09-30          |
|131|9128          |2018-05-24         |2023-03-31          |
|132|9478          |2020-02-15         |2023-03-24          |
|133|9543          |2016-04-16         |2025-01-11          |
|134|9952          |2019-06-03         |2024-06-18          |
|135|9111          |2015-12-26         |2029-02-09          |
|136|9008          |2017-12-30         |2026-03-31          |
|137|9509          |2019-02-10         |2023-12-18          |
|138|9878          |2016-02-14         |2029-04-26          |
|139|9261          |2020-05-28         |2028-06-18          |
|140|9816          |2015-12-03         |2023-10-11          |
|141|9604          |2019-10-26         |2028-04-16          |
|142|9415          |2017-03-14         |2023-03-07          |
|143|9672          |2015-06-24         |2023-05-26          |
|144|9300          |2017-02-15         |2024-12-07          |
|145|9095          |2020-02-19         |2027-12-10          |
|146|9712          |2020-08-30         |2026-05-29          |
|147|9451          |2015-07-22         |2026-09-06          |
|148|9349          |2016-04-10         |2025-08-23          |
|149|9596          |2018-08-02         |2027-01-13          |
|150|9168          |2017-09-30         |2026-09-17          |


SELECT * FROM Shifts s ;

|pid|facilityID|SINNumber|eID |managerID|dayOfTheWeek|startHour|endHour |
|---|----------|---------|----|---------|------------|---------|--------|
|1  |1         |628487880|1004|1001     |1234567     |07:00:00 |21:00:00|
|3  |1         |285646091|1005|1001     |1234567     |07:00:00 |21:00:00|
|12 |1         |569090620|1002|1001     |134567      |07:00:00 |21:00:00|
|13 |1         |722142095|1003|1001     |134567      |07:00:00 |21:00:00|
|15 |1         |134190921|1006|1001     |1234567     |07:00:00 |21:00:00|
|41 |1         |415729973|1007|1001     |1234567     |07:00:00 |21:00:00|
|145|1         |683832662|1007|1001     |134567      |07:00:00 |21:00:00|
|149|1         |418884209|1008|1001     |134567      |07:00:00 |21:00:00|
|150|1         |871902292|1009|1001     |134567      |07:00:00 |21:00:00|
|14 |2         |418299033|2001|2001     |1234567     |07:00:00 |21:00:00|
|19 |2         |399897743|2002|2001     |1234567     |07:00:00 |21:00:00|
|27 |2         |616312360|2004|2001     |1234567     |07:00:00 |21:00:00|
|39 |2         |678609910|2005|2001     |1234567     |07:00:00 |21:00:00|
|52 |2         |236304025|2006|2001     |1234567     |07:00:00 |21:00:00|
|56 |2         |738192183|2007|2001     |1234567     |07:00:00 |21:00:00|
|42 |3         |245826179|3004|3001     |1234567     |07:00:00 |21:00:00|
|43 |3         |246764461|3002|3001     |1234567     |07:00:00 |21:00:00|
|45 |3         |171176247|3001|3001     |1234567     |07:00:00 |21:00:00|
|59 |3         |303072671|3006|3001     |1234567     |07:00:00 |21:00:00|
|60 |3         |865431177|3007|3001     |1234567     |07:00:00 |21:00:00|
|64 |3         |628707867|3003|3001     |1234567     |07:00:00 |21:00:00|
|69 |3         |760224832|3005|3001     |1234567     |07:00:00 |21:00:00|
|49 |4         |108558107|4001|4001     |1234567     |07:00:00 |21:00:00|
|62 |4         |497667276|4006|4001     |1234567     |07:00:00 |21:00:00|
|64 |4         |410505136|4007|4001     |1234567     |07:00:00 |21:00:00|
|74 |4         |714350626|4004|4001     |1234567     |07:00:00 |21:00:00|
|75 |4         |403205571|4002|4001     |1234567     |07:00:00 |21:00:00|
|76 |4         |336647853|4005|4001     |1234567     |07:00:00 |21:00:00|
|101|4         |646316479|4003|4001     |1234567     |07:00:00 |21:00:00|
|70 |5         |728788606|5006|5001     |1234567     |07:00:00 |21:00:00|
|79 |5         |180301249|5004|5001     |1234567     |07:00:00 |21:00:00|
|82 |5         |572897828|5007|5001     |1234567     |07:00:00 |21:00:00|
|84 |5         |162181425|5005|5001     |1234567     |07:00:00 |21:00:00|
|93 |5         |770069806|5001|5001     |1234567     |07:00:00 |21:00:00|
|108|5         |606634576|5002|5001     |1234567     |07:00:00 |21:00:00|
|113|5         |761693712|5003|5001     |1234567     |07:00:00 |21:00:00|
|85 |8         |837100145|5006|8001     |1234567     |07:00:00 |21:00:00|
|92 |8         |132800732|5004|8001     |1234567     |07:00:00 |21:00:00|
|102|8         |641445211|8001|8001     |1234567     |07:00:00 |21:00:00|
|103|8         |178074220|5005|8001     |1234567     |07:00:00 |21:00:00|
|114|8         |518817559|5002|8001     |1234567     |07:00:00 |21:00:00|
|122|8         |577387401|5003|8001     |1234567     |07:00:00 |21:00:00|
|133|8         |113559025|5007|8001     |1234567     |07:00:00 |21:00:00|


SELECT * FROM UnregisteredPerson up ;


|pid|PassportNumber|
|---|--------------|
|151|8019          |
|152|8449          |
|153|8124          |
|154|8239          |
|155|8034          |
|156|8771          |
|157|8132          |
|158|8371          |
|159|8051          |
|160|8467          |
|161|8741          |
|162|8714          |
|163|8591          |
|164|8232          |
|165|8573          |
|166|8338          |
|167|8537          |
|168|8349          |
|169|8658          |
|170|8968          |
|171|8917          |
|172|8122          |
|173|8449          |
|174|8356          |
|175|8390          |
|176|8388          |
|177|8587          |
|178|8817          |
|179|8075          |
|180|8713          |
|181|8067          |
|182|8863          |
|183|8960          |
|184|8343          |
|185|8589          |
|186|8372          |
|187|8303          |
|188|8686          |
|189|8294          |
|190|8862          |
|191|8991          |
|192|8338          |
|193|8199          |
|194|8796          |
|195|8947          |
|196|8443          |
|197|8425          |
|198|8115          |
|199|8042          |
|200|8108          |


SELECT * FROM VaccinationFacility vf ;

|facilityID|name                                                |typeOf         |category               |capacity|postalCode|city              |province|phoneNumber   |address                                 |webAddress           |
|----------|----------------------------------------------------|---------------|-----------------------|--------|----------|------------------|--------|--------------|----------------------------------------|---------------------|
|1         |Centre sportif Dollard-St-Laurent                   |Sports Center  |appointment only       |2000    |H8R       |St-Laurent        |Québec  |(514) 367-6361|707 75e Avenue, LaSalle                 |www.montreal.ca      |
|2         |Square Decarie                                      |Mall           |appointment only       |1500    |H3X       |Montréal          |Québec  |(514) 738-7717|6900, boulevard décarie                 |www.decariesquare.com|
|3         |Stade Olympique/SAQ                                 |Sports Center  |walk-in and appointment|8000    |H1V       |Montréal          |Québec  |(514) 252-4141|4545 Avenue Pierre-De Coubertin         |parcolympique.qc.ca  |
|4         |Clinique de vaccination de Saint-Laurent            |Clinic         |walk-in and appointment|80      |H4N       |St-Laurent        |Québec  |(514) 644-4545|300, avenue Sainte-Croix                |santemontreal.qc.ca  |
|5         |MUHC-Glen                                           |Hospital       |walk-in and appointment|500     |H4A       |Montréal          |Québec  |(514) 934-1934|1001 boul. Décarie-Institut de recherche|muhc.ca/glen         |
|6         |MUHC-Montreal General Hospital                      |Hospital       |walk-in and appointment|800     |H3G       |Montréal          |Québec  |(514) 934-1934|1650 Cedar Ave                          |muhc.ca/mgh          |
|7         |Clinique de vaccination Pointe-Saint-Charles        |Clinic         |walk-in and appointment|70      |H3K       |Montréal          |Québec  |514 937-9251  |2115 rue Centre                         |ccpsc.qc.ca          |
|8         |Palais des Congrès                                  |Event Space    |walk-in and appointment|5000    |H2Z       |Montréal          |Québec  |(514) 871-8122|1001 Place Jean-Paul Riopelle           |congresmtl.com       |
|9         |Costco MARCHÉ-CENTRAL - Pharmacie Grégoire Arakelian|Shopping Center|appointment only       |100     |H4N       |Montréal          |Québec  |(514) 381-1251|1015, RUE DU MARCHÉ CENTRAL             |costco.ca            |
|10        |Costco ANJOU - Pharmacie Grégoire Arakelian         |Shopping Center|walk-in and appointment|200     |H1J       |Montréal          |Québec  |(514) 493-4814|9401 Bd des Sciences                    |costco.ca            |
|11        |Jean-Coutu - Marie-Josée Mercier et Martine Bédard  |Pharmacy       |walk-in and appointment|150     |J7V       |VAUDREUIL-DORION  |Québec  |(450) 455-6141|253, BOUL. HARWOOD                      |jeancoutu.com        |
|12        |École PavillonSir Wilfrid Laurier                   |School         |walk-in and appointment|300     |J5M       |St Lin Laurentides|Québec  |(450) 439-7135|265, 16e ave                            |caissescolaire.com   |
|13        |IGA Disraeli : Marché Gagnon                        |Grocery Store  |appointment only       |350     |G0N       |Disraeli          |Québec  |(418) 449-4219|1300, Avenue Champlain                  |iga.ca               |
|14        |CEGEP Thetford Mines                                |School         |appointment only       |200     |G6G       |Thetford Mines    |Québec  |(418) 338-8591|671 Bd Frontenac O                      |cegepthetford.ca     |


SELECT * FROM Vaccine v ;

|vaccineType    |status   |dateOfApproval|dateOfSuspension|
|---------------|---------|--------------|----------------|
|AstraZeneca    |SAFE     |2021-02-26    |                |
|Janssen        |SAFE     |2021-03-05    |                |
|Moderna        |SAFE     |2020-12-23    |                |
|Pfizer-BioNTech|SAFE     |2020-12-09    |                |
|Sinovac        |SUSPENDED|              |2021-06-01      |
|Sputnik V      |SUSPENDED|              |2021-04-01      |


SELECT * FROM VaccineRecord vr ;


|nurseID|pid|location                                |country|vaccineDate|doseNumber|vaccineType    |lotNumber|
|-------|---|----------------------------------------|-------|-----------|----------|---------------|---------|
|101    |1  |Square Decarie                          |Canada |2020-05-06 |1         |Moderna        |CZ-08717 |
|150    |2  |Stade Olympique/SAQ                     |Canada |2020-10-16 |1         |Moderna        |RV-89972 |
|149    |3  |Stade Olympique/SAQ                     |Canada |2021-01-16 |1         |AstraZeneca    |HK-72860 |
|108    |4  |Centre sportif Dollard-St-Laurent       |Canada |2020-10-23 |1         |AstraZeneca    |BQ-12325 |
|108    |5  |Clinique de vaccination de Saint-Laurent|Canada |2020-09-03 |1         |Pfizer-BioNTech|AP-57610 |
|138    |7  |Clinique de vaccination de Saint-Laurent|Canada |2020-05-01 |1         |Moderna        |OA-25311 |
|122    |8  |Palais des Congrès                      |Canada |2021-04-17 |1         |Pfizer-BioNTech|KR-91045 |
|122    |10 |Clinique de vaccination de Saint-Laurent|Canada |2021-05-07 |1         |Pfizer-BioNTech|UO-69767 |
|13     |11 |Square Decarie                          |Canada |2020-12-10 |1         |AstraZeneca    |EO-55675 |
|138    |12 |Centre sportif Dollard-St-Laurent       |Canada |2021-04-29 |1         |Janssen        |DC-31956 |
|145    |12 |Palais des Congrès                      |Canada |2020-12-17 |1         |Pfizer-BioNTech|DN-68259 |
|19     |13 |Palais des Congrès                      |Canada |2021-04-02 |1         |AstraZeneca    |MS-12546 |
|64     |13 |Centre sportif Dollard-St-Laurent       |Canada |2021-01-09 |1         |Janssen        |QH-76047 |
|149    |14 |MUHC-Glen                               |Canada |2020-09-18 |1         |AstraZeneca    |LW-57918 |
|122    |15 |MUHC-Glen                               |Canada |2020-11-06 |1         |Pfizer-BioNTech|YJ-90288 |
|75     |16 |Palais des Congrès                      |Canada |2020-12-03 |1         |Pfizer-BioNTech|XZ-36511 |
|122    |17 |Stade Olympique/SAQ                     |Canada |2020-04-16 |1         |Pfizer-BioNTech|UH-69609 |
|145    |18 |MUHC-Glen                               |Canada |2021-01-13 |1         |Pfizer-BioNTech|HC-43536 |
|13     |19 |Palais des Congrès                      |Canada |2021-04-02 |1         |AstraZeneca    |MS-12546 |
|43     |19 |Stade Olympique/SAQ                     |Canada |2021-01-14 |1         |Pfizer-BioNTech|NF-95453 |
|101    |19 |Palais des Congrès                      |Canada |2020-05-22 |1         |AstraZeneca    |RX-30507 |
|113    |20 |Square Decarie                          |Canada |2020-12-01 |1         |Pfizer-BioNTech|SV-00819 |
|75     |21 |Square Decarie                          |Canada |2020-11-27 |1         |Pfizer-BioNTech|WO-34183 |
|150    |22 |MUHC-Glen                               |Canada |2020-04-14 |1         |AstraZeneca    |QL-90330 |
|122    |23 |Centre sportif Dollard-St-Laurent       |Canada |2020-05-06 |1         |AstraZeneca    |VG-76359 |
|130    |24 |MUHC-Glen                               |Canada |2020-07-09 |1         |AstraZeneca    |IK-14026 |
|138    |26 |Centre sportif Dollard-St-Laurent       |Canada |2020-09-02 |1         |Pfizer-BioNTech|TV-87970 |
|43     |27 |Centre sportif Dollard-St-Laurent       |Canada |2021-05-16 |1         |AstraZeneca    |AL-68233 |
|43     |29 |Stade Olympique/SAQ                     |Canada |2021-03-13 |1         |Moderna        |CJ-13452 |
|64     |30 |Centre sportif Dollard-St-Laurent       |Canada |2020-12-30 |1         |Moderna        |EO-08431 |
|149    |31 |Clinique de vaccination de Saint-Laurent|Canada |2021-02-05 |1         |Moderna        |GO-63766 |
|43     |32 |Clinique de vaccination de Saint-Laurent|Canada |2021-05-23 |1         |Pfizer-BioNTech|FT-43710 |
|19     |33 |Stade Olympique/SAQ                     |Canada |2020-12-18 |1         |Janssen        |QL-49535 |
|75     |34 |Centre sportif Dollard-St-Laurent       |Canada |2020-08-25 |1         |AstraZeneca    |RM-04231 |
|64     |35 |Stade Olympique/SAQ                     |Canada |2020-10-19 |1         |Pfizer-BioNTech|KD-18035 |
|75     |36 |Square Decarie                          |Canada |2021-02-19 |1         |Janssen        |HJ-23437 |
|114    |37 |Palais des Congrès                      |Canada |2020-08-07 |1         |Pfizer-BioNTech|EN-76473 |
|101    |39 |Square Decarie                          |Canada |2021-04-02 |1         |Janssen        |OU-91938 |
|145    |41 |Centre sportif Dollard-St-Laurent       |Canada |2021-01-21 |1         |Janssen        |CN-41795 |
|130    |43 |MUHC-Glen                               |Canada |2021-04-13 |1         |AstraZeneca    |RY-41917 |
|149    |43 |Stade Olympique/SAQ                     |Canada |2020-08-27 |1         |Pfizer-BioNTech|CO-44314 |
|145    |44 |Palais des Congrès                      |Canada |2020-05-11 |1         |Janssen        |IH-00525 |
|101    |45 |Square Decarie                          |Canada |2021-02-17 |1         |Pfizer-BioNTech|CV-82225 |
|149    |46 |Centre sportif Dollard-St-Laurent       |Canada |2020-11-09 |1         |AstraZeneca    |SF-66429 |
|138    |47 |Centre sportif Dollard-St-Laurent       |Canada |2020-10-13 |1         |Pfizer-BioNTech|DJ-47769 |
|12     |49 |MUHC-Glen                               |Canada |2020-11-12 |1         |AstraZeneca    |ZB-04893 |
|145    |50 |Square Decarie                          |Canada |2021-05-18 |1         |Moderna        |EP-72615 |
|150    |51 |Palais des Congrès                      |Canada |2021-04-15 |1         |Pfizer-BioNTech|SW-22808 |
|19     |52 |Palais des Congrès                      |Canada |2020-06-15 |1         |Pfizer-BioNTech|NY-20631 |
|113    |53 |Clinique de vaccination de Saint-Laurent|Canada |2020-11-13 |1         |AstraZeneca    |IW-00991 |
|130    |54 |Centre sportif Dollard-St-Laurent       |Canada |2021-05-06 |1         |Moderna        |AW-16310 |
|75     |55 |Square Decarie                          |Canada |2021-02-04 |1         |Pfizer-BioNTech|XU-18417 |
|130    |56 |Square Decarie                          |Canada |2021-03-23 |1         |Pfizer-BioNTech|ML-03688 |
|19     |57 |Square Decarie                          |Canada |2021-02-12 |1         |Janssen        |AF-35674 |
|64     |58 |Clinique de vaccination de Saint-Laurent|Canada |2020-05-26 |1         |Pfizer-BioNTech|BW-32819 |
|75     |59 |Centre sportif Dollard-St-Laurent       |Canada |2020-12-18 |1         |Janssen        |AT-65145 |
|75     |60 |Stade Olympique/SAQ                     |Canada |2020-11-13 |1         |Moderna        |WZ-20312 |
|149    |62 |Palais des Congrès                      |Canada |2020-12-20 |1         |Moderna        |RG-93710 |
|150    |63 |Clinique de vaccination de Saint-Laurent|Canada |2020-04-10 |1         |Moderna        |XW-92283 |
|114    |64 |MUHC-Glen                               |Canada |2020-12-18 |1         |AstraZeneca    |HN-35661 |
|113    |65 |MUHC-Glen                               |Canada |2021-05-15 |1         |AstraZeneca    |BF-26144 |
|12     |66 |Palais des Congrès                      |Canada |2021-04-03 |1         |Janssen        |GN-13835 |
|149    |67 |Clinique de vaccination de Saint-Laurent|Canada |2020-04-06 |1         |Moderna        |FI-08806 |
|130    |68 |Stade Olympique/SAQ                     |Canada |2020-10-25 |1         |Pfizer-BioNTech|QG-88265 |
|138    |69 |MUHC-Glen                               |Canada |2020-12-18 |1         |Pfizer-BioNTech|YJ-84030 |
|130    |70 |Centre sportif Dollard-St-Laurent       |Canada |2020-05-05 |1         |Moderna        |HC-57021 |
|13     |71 |Palais des Congrès                      |Canada |2020-06-27 |1         |Janssen        |JA-47062 |
|113    |72 |Stade Olympique/SAQ                     |Canada |2021-02-03 |1         |Moderna        |NU-18056 |
|12     |73 |Palais des Congrès                      |Canada |2020-11-01 |1         |AstraZeneca    |GA-67250 |
|149    |74 |Square Decarie                          |Canada |2020-04-04 |1         |Janssen        |GZ-12829 |
|13     |75 |Palais des Congrès                      |Canada |2021-04-02 |1         |AstraZeneca    |MS-12546 |
|43     |75 |Stade Olympique/SAQ                     |Canada |2021-01-18 |1         |Janssen        |UI-47445 |
|75     |76 |Square Decarie                          |Canada |2020-11-15 |1         |Pfizer-BioNTech|OL-99151 |
|19     |77 |MUHC-Glen                               |Canada |2021-02-05 |1         |Moderna        |BP-25672 |
|101    |78 |MUHC-Glen                               |Canada |2020-06-17 |1         |Pfizer-BioNTech|ST-71652 |
|101    |79 |Centre sportif Dollard-St-Laurent       |Canada |2021-05-03 |1         |AstraZeneca    |TX-07732 |
|122    |80 |Centre sportif Dollard-St-Laurent       |Canada |2021-02-04 |1         |Moderna        |SL-91073 |
|113    |81 |MUHC-Glen                               |Canada |2020-05-14 |1         |Janssen        |XE-21756 |
|150    |82 |Square Decarie                          |Canada |2020-07-20 |1         |Pfizer-BioNTech|ME-98776 |
|114    |84 |Palais des Congrès                      |Canada |2020-08-25 |1         |Pfizer-BioNTech|DW-90267 |
|19     |85 |MUHC-Glen                               |Canada |2021-02-25 |1         |AstraZeneca    |US-66144 |
|114    |87 |Clinique de vaccination de Saint-Laurent|Canada |2020-09-01 |1         |Pfizer-BioNTech|FS-81205 |
|43     |88 |Clinique de vaccination de Saint-Laurent|Canada |2020-06-24 |1         |Janssen        |GP-16456 |
|114    |89 |Centre sportif Dollard-St-Laurent       |Canada |2020-08-22 |1         |Pfizer-BioNTech|AY-38187 |
|12     |90 |Stade Olympique/SAQ                     |Canada |2020-09-25 |1         |AstraZeneca    |UD-99886 |
|75     |91 |Centre sportif Dollard-St-Laurent       |Canada |2020-05-23 |1         |Pfizer-BioNTech|EU-46920 |
|19     |92 |Palais des Congrès                      |Canada |2020-05-27 |1         |Pfizer-BioNTech|WD-42315 |
|138    |93 |Square Decarie                          |Canada |2020-04-26 |1         |AstraZeneca    |XC-72422 |
|64     |94 |Square Decarie                          |Canada |2021-04-24 |1         |AstraZeneca    |QJ-65021 |
|64     |95 |Centre sportif Dollard-St-Laurent       |Canada |2020-11-02 |1         |AstraZeneca    |QF-23843 |
|101    |96 |Square Decarie                          |Canada |2020-04-15 |1         |AstraZeneca    |DJ-47111 |
|113    |97 |Stade Olympique/SAQ                     |Canada |2020-06-08 |1         |Janssen        |PW-71271 |
|75     |98 |MUHC-Glen                               |Canada |2020-07-02 |1         |Moderna        |ND-48173 |
|114    |99 |Clinique de vaccination de Saint-Laurent|Canada |2021-04-01 |1         |Moderna        |UG-60465 |
|145    |100|Square Decarie                          |Canada |2020-11-09 |1         |AstraZeneca    |TY-16215 |
|12     |101|Stade Olympique/SAQ                     |Canada |2021-03-12 |1         |Pfizer-BioNTech|BU-13338 |
|113    |101|Square Decarie                          |Canada |2021-02-28 |1         |Janssen        |KJ-81474 |
|114    |102|MUHC-Glen                               |Canada |2020-10-08 |1         |AstraZeneca    |DD-24583 |
|149    |103|Palais des Congrès                      |Canada |2020-12-01 |1         |AstraZeneca    |LV-30784 |
|122    |104|Clinique de vaccination de Saint-Laurent|Canada |2021-01-11 |1         |Moderna        |DS-85585 |
|12     |105|MUHC-Glen                               |Canada |2020-12-12 |1         |Pfizer-BioNTech|OB-45143 |
|122    |106|Square Decarie                          |Canada |2021-05-28 |1         |AstraZeneca    |HU-30099 |
|108    |107|Clinique de vaccination de Saint-Laurent|Canada |2020-10-23 |1         |Pfizer-BioNTech|MI-24187 |
|12     |108|Palais des Congrès                      |Canada |2020-05-13 |1         |Pfizer-BioNTech|NU-44829 |
|13     |108|Palais des Congrès                      |Canada |2021-04-02 |1         |AstraZeneca    |MS-12546 |
|145    |109|Stade Olympique/SAQ                     |Canada |2020-09-16 |1         |Janssen        |AL-43665 |
|19     |111|MUHC-Glen                               |Canada |2021-04-05 |1         |Pfizer-BioNTech|BG-48074 |
|122    |112|Clinique de vaccination de Saint-Laurent|Canada |2020-11-12 |1         |Pfizer-BioNTech|QB-27938 |
|12     |113|MUHC-Glen                               |Canada |2021-03-04 |1         |Pfizer-BioNTech|KR-39572 |
|13     |113|MUHC-Glen                               |Canada |2020-11-20 |1         |Pfizer-BioNTech|SK-23287 |
|75     |114|Stade Olympique/SAQ                     |Canada |2021-02-02 |1         |AstraZeneca    |UW-71511 |
|75     |115|Square Decarie                          |Canada |2020-07-04 |1         |Moderna        |QS-04164 |
|108    |116|Centre sportif Dollard-St-Laurent       |Canada |2021-02-17 |1         |AstraZeneca    |SF-57733 |
|13     |117|MUHC-Glen                               |Canada |2020-04-18 |1         |Janssen        |XF-23381 |
|122    |120|MUHC-Glen                               |Canada |2020-06-09 |1         |Moderna        |VK-14614 |
|13     |121|Square Decarie                          |Canada |2020-07-26 |1         |Pfizer-BioNTech|NN-91189 |
|19     |122|MUHC-Glen                               |Canada |2020-10-26 |1         |AstraZeneca    |ZY-13420 |
|19     |122|Palais des Congrès                      |Canada |2021-04-30 |1         |Pfizer-BioNTech|PM-86671 |
|145    |123|Centre sportif Dollard-St-Laurent       |Canada |2020-12-27 |1         |Janssen        |XO-09408 |
|145    |124|Centre sportif Dollard-St-Laurent       |Canada |2020-07-10 |1         |Moderna        |TN-70547 |
|122    |125|Stade Olympique/SAQ                     |Canada |2021-03-28 |1         |Moderna        |DN-59776 |
|75     |126|Square Decarie                          |Canada |2020-08-29 |1         |Janssen        |FY-47364 |
|130    |127|Centre sportif Dollard-St-Laurent       |Canada |2020-07-02 |1         |Janssen        |CN-19272 |
|101    |129|Square Decarie                          |Canada |2020-05-10 |1         |Moderna        |CZ-0123  |
|122    |130|Palais des Congrès                      |Canada |2020-06-21 |1         |AstraZeneca    |BJ-32460 |
|122    |130|MUHC-Glen                               |Canada |2021-04-20 |1         |Pfizer-BioNTech|MH-53299 |
|150    |132|Square Decarie                          |Canada |2021-01-01 |1         |AstraZeneca    |IS-87862 |
|130    |133|MUHC-Glen                               |Canada |2020-11-27 |1         |Moderna        |IO-51783 |
|150    |134|Centre sportif Dollard-St-Laurent       |Canada |2020-07-26 |1         |Moderna        |FK-05658 |
|12     |135|Palais des Congrès                      |Canada |2020-06-05 |1         |Pfizer-BioNTech|KM-49697 |
|150    |136|MUHC-Glen                               |Canada |2020-09-11 |1         |Moderna        |DZ-63526 |
|101    |137|Palais des Congrès                      |Canada |2020-08-06 |1         |Pfizer-BioNTech|EB-01185 |
|19     |138|Palais des Congrès                      |Canada |2020-06-06 |1         |Pfizer-BioNTech|MY-31908 |
|113    |139|Square Decarie                          |Canada |2021-04-14 |1         |AstraZeneca    |AF-42147 |
|145    |140|MUHC-Glen                               |Canada |2020-05-30 |1         |Janssen        |XK-88585 |
|114    |141|Clinique de vaccination de Saint-Laurent|Canada |2020-10-31 |1         |Moderna        |BN-46429 |
|149    |142|MUHC-Glen                               |Canada |2020-09-17 |1         |Moderna        |OS-19162 |
|108    |144|Clinique de vaccination de Saint-Laurent|Canada |2020-11-11 |1         |Pfizer-BioNTech|DM-34441 |
|12     |145|Centre sportif Dollard-St-Laurent       |Canada |2021-01-26 |1         |AstraZeneca    |AI-05960 |
|12     |145|Palais des Congrès                      |Canada |2020-12-17 |1         |Pfizer-BioNTech|DN-68259 |
|145    |146|MUHC-Glen                               |Canada |2020-12-30 |1         |Pfizer-BioNTech|YD-22817 |
|145    |147|MUHC-Glen                               |Canada |2020-05-22 |1         |Janssen        |AB-50412 |
|43     |148|Clinique de vaccination de Saint-Laurent|Canada |2021-03-25 |1         |Janssen        |QB-18707 |
|114    |149|Stade Olympique/SAQ                     |Canada |2021-04-17 |1         |AstraZeneca    |XE-17162 |
|101    |150|Palais des Congrès                      |Canada |2021-04-04 |1         |AstraZeneca    |CW-04190 |
|101    |155|Square Decarie                          |Canada |2020-05-10 |1         |Moderna        |CZ-0123  |


SELECT * FROM WorksAt wa ;

|pid|SINNumber|facilityID|wage|eID |startDate |endDate   |
|---|---------|----------|----|----|----------|----------|
|12 |569090620|1         |45.0|1002|2020-04-01|2021-10-01|
|13 |722142095|1         |45.0|1003|2020-04-01|2021-10-01|
|19 |399897743|2         |45.0|2002|2020-04-01|2021-10-01|
|43 |246764461|3         |45.0|3002|2020-04-01|2021-10-01|
|64 |628707867|3         |45.0|3003|2020-04-01|2021-10-01|
|75 |403205571|4         |45.0|4002|2020-04-01|2021-10-01|
|101|646316479|4         |45.0|4003|2020-04-01|2021-10-01|
|108|606634576|5         |45.0|5002|2020-04-01|2021-10-01|
|113|761693712|5         |45.0|5003|2020-04-01|2021-10-01|
|114|518817559|8         |45.0|8002|2020-04-01|2021-10-01|
|122|577387401|8         |45.0|8003|2020-04-01|2021-10-01|
|1  |628487880|1         |40.0|1004|2020-04-01|2021-10-01|
|3  |285646091|1         |40.0|1005|2020-04-01|2021-10-01|
|27 |616312360|2         |40.0|2004|2020-04-01|2021-10-01|
|39 |678609910|2         |40.0|2005|2020-04-01|2021-10-01|
|42 |245826179|3         |40.0|3004|2020-04-01|2021-10-01|
|69 |760224832|3         |40.0|3005|2020-04-01|2021-10-01|
|74 |714350626|4         |40.0|4004|2020-04-01|2021-10-01|
|76 |336647853|4         |40.0|4005|2020-04-01|2021-10-01|
|79 |180301249|5         |40.0|5004|2020-04-01|2021-10-01|
|84 |162181425|5         |40.0|5005|2020-04-01|2021-10-01|
|92 |132800732|8         |40.0|8004|2020-04-01|2021-10-01|
|103|178074220|8         |40.0|8005|2020-04-01|2021-10-01|
|15 |134190921|1         |37.5|1006|2020-04-01|2021-10-01|
|41 |415729973|1         |37.5|1007|2020-04-01|2021-10-01|
|52 |236304025|2         |37.5|2006|2020-04-01|2021-10-01|
|56 |738192183|2         |37.5|2007|2020-04-01|2021-10-01|
|59 |303072671|3         |37.5|3006|2020-04-01|2021-10-01|
|60 |865431177|3         |37.5|3007|2020-04-01|2021-10-01|
|62 |497667276|4         |37.5|4006|2020-04-01|2021-10-01|
|64 |410505136|4         |37.5|4007|2020-04-01|2021-10-01|
|70 |728788606|5         |37.5|5006|2020-04-01|2021-10-01|
|82 |572897828|5         |37.5|5007|2020-04-01|2021-10-01|
|85 |837100145|8         |37.5|8006|2020-04-01|2021-10-01|
|133|113559025|8         |37.5|8007|2020-04-01|2021-10-01|
|145|683832662|1         |45.2|1007|2020-06-01|2021-10-01|
|149|418884209|1         |45.2|1008|2020-06-01|2021-10-01|
|150|871902292|1         |45.2|1009|2020-06-01|2021-10-01|



