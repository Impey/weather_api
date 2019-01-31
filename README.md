# Weather API tests
### Description
This application calls from the openweathermap API using two of the services. The current weather for the city of your choice and the 5 day forecaset for the city you choose. I have run unit tests to check that all the data that is being returned is correct.


### Languages used
1. Ruby



### How to download
1. Clone or download this repoisitry
2. unzip the file and open it in your choice of IDE



### How to use
1. go to your terminal and whilst in the directory of the application type "bundle install" to install all the required gems for the application to work
2. next add a .env file which you need to add your api key in order to make calls to the api sign up https://openweathermap.org/api here and get personal API key add the below code to your .env file
```ruby 
API_KEY= add your key here
```
3. type "rspec" winthin terminal to check all tests run and pass
4. To change the city you want to select change it in each respective spec folder in the code shown below for example you can change "London" to "Plymouth"
``` ruby 
@forecast.getdata('London')
```
4. After changing the city rerun the "rspec" to check the tests still pass



### Challenges 
1. Time restriction upon the project meant full testing coverage for all data points was not reached
2. The way that data was formatted made it quite difficult at times to target a certain key

### Learning points
1. Feel like I have become more efficent at testing
