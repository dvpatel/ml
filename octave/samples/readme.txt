https://www.zillow.com/search/GetResults.htm?spt=homes&status=001000&lt=000000&ht=100000&pr=,&mp=,&bd=0%2C&ba=0%2C&sf=,&lot=0%2C&yr=,&singlestory=0&hoa=0%2C&pho=0&pets=0&parking=0&laundry=0&income-restricted=0&fr-bldg=0&condo-bldg=0&furnished-apartments=0&cheap-apartments=0&studio-apartments=0&pnd=0&red=0&zso=0&days=any&ds=all&pmf=0&pf=0&sch=100111&zoom=11&rect=-71304360,42101916,-71067124,42119744&p=1&sort=globalrelevanceex&search=map&rid=397583&rt=6&listright=true&isMapSearch=1&zoom=11

https://jqplay.org/
select(.[].properties != null).map.properties[][8][11] | [1, .bathrooms, .bedrooms, .livingArea, .lotSize] | @csv
select(.[].properties != null).map.properties[][8][11] | [.price] | @csv

init (1)
bathrooms
bedrooms
livingArea
lotSize

price

Octave:
X = dlmread('./samples/sharon_home_sales.csv', ',', 1,0)
y = dlmread('./samples/sharon_prices.csv', ',', 1,0)
R = pinv(X' * X) * X' * y
R' * [inputs]
plot(X([1:207],4), y, '+')

f = init + bathrooms* + bedrooms*  + livingArea* + lotSize*
f = 71350.11879 + 43059.46295*bathrooms + 27097.93215*bedrooms + 119.22857*livingArea + 0.42078*lotSize

1 acre = 43560 sq ft;

Sample Input:
Init: 1
Bedroom:  4;
Bath: 2.5;
LivingArea:  2946
LotSize: 20038 (sq fee)
I = [1; 4; 2.5; 2946; 20038]

Estimate (Sharon):  671011.70599
Estimate (Norfolk):  746480.74617



