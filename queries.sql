SELECT D.Name AS Dealership, V.Make, V.Model, V.Year, V.Price, V.Sold
FROM Inventory I 
JOIN Dealership D ON I.Dealership = D.DealershipID
JOIN Vehicles V ON I.VIN = V.VIN
WHERE D.Name = 'Downtown Motors';