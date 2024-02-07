--Numero totale degli ordini
--SELECT COUNT(CustomerID) AS 'Numero totale Ordini' from Orders;

--Numero Totale di Clienti
--SELECT COUNT(CustomerID) AS 'Numero totale di Clienti' from Customers;

--Numero di clienti che abitano a londra
--SELECT COUNT(CustomerID) AS 'Clienti residenti a Londra' FROM Customers where City = 'London';

--La media aritmetica del costo del trasporto di tutti gli ordini effettuati
--SELECT AVG(Freight) AS 'Media costo Trasporto' FROM Orders;

--La media aritmetica del costo del trasporto dei soli ordini effettuati dal cliente "BOTTM"
--SELECT AVG(Freight) AS 'Media trasporto singolo cliente' FROM Orders WHERE CustomerID = 'BOTTM';

--Totale delle spese di trasporto effettuate raggruppate per id cliente
--SELECT CustomerID, SUM(Freight) AS 'Totale trasporto' FROM Orders GROUP BY CustomerID;

--Numero totale di clienti raggruppati per città di appartenenza
--SELECT City, COUNT(CustomerID) AS 'N. Pers.' FROM Customers GROUP BY City;

--Totale di UnitPrice * Quantity raggruppato per ogni ordine
--SELECT OrderID, SUM(UnitPrice * Quantity) AS 'totale' from [Order Details] GROUP BY OrderID;

--Totale di UnitPrice * Quantity solo dell'ordine con id = 10248
--SELECT OrderID, SUM(UnitPrice * Quantity) AS 'Totale' from [Order Details] WHERE OrderID = 10248 GROUP BY OrderID;

--Numero di prodotti censiti per ogni categoria
--SELECT CategoryID, COUNT(CategoryID) AS 'Totale Prodotti Censiti' FROM Products GROUP BY CategoryID

--Numero totale di ordini raggruppati per paese di spedizione (ShipCountry)
--SELECT ShipCountry, COUNT(ShipCountry) AS 'Numero Totale per Paese' FROM Orders GROUP BY ShipCountry;

--La media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)
SELECT ShipCountry, AVG(Freight) AS 'Media spedizione per paese' FROM Orders GROUP BY ShipCountry;