require "http"
covid_info = HTTP.get("https://data.cityofnewyork.us/resource/rc75-m7u3.json").parse

p covid_info[0]["case_count"]