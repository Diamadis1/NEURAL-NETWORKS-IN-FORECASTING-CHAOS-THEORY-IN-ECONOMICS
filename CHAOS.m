[~,lag,dim] = phaseSpaceReconstruction(X);
phaseSpaceReconstruction(X)
Np = 100;
correlationDimension(X,'Dimension',dim,'Lag',lag,'NumPoints',Np)
MinR = 0.00039;
MaxR = 0.05234;
corDim = correlationDimension(X,'Dimension',dim,'Lag',lag,'MinRadius',MinR,'MaxRadius',MaxR,'NumPoints',Np);
eRange = 200;
lyapunovExponent(X,'Lag',lag,'Dim',dim,'ExpansionRange',eRange)
Kmin = 3;
Kmax = 199;
lyapExp = lyapunovExponent(X,'Lag',lag,'Dimension',dim,'ExpansionRange',[Kmin Kmax]);
approxEnt = approximateEntropy(X,'Lag',lag,'Dimension',dim);