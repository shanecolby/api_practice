require "http"
covid_info = HTTP.get("https://data.cityofnewyork.us/resource/rc75-m7u3.json").parse

p covid_info[0]["case_count"]
p covid_info[5]["case_count"]
p covid_info[19]["death_count"]
p "They had #{covid_info[19]["death_count"]} deaths."

p "The combined cases are #{covid_info[0]["case_count"]} +"