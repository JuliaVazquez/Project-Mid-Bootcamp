USE galicia_tourism;

SELECT * FROM trav_nights_per_acc;

SELECT destination, come_from,year,month, travellers,nights,ROUND(avg_stay,2) FROM gal_prov
WHERE destination != 'Spain' AND destination != 'Galicia'
GROUP BY destination, come_from, year, month;

SELECT g.accommodation_type, g.year, g.month, galicia_travelers, galicia_nights, ROUND(galicia_avg_stay,2) AS avg_stay FROM spain_galicia_per_acc g
LEFT JOIN trav_nights_per_acc t ON
	g.galicia_travelers = t.total_travellers AND g.accommodation_type = t.accommodation_type
GROUP BY ;
    
