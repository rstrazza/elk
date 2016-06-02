# elk

This is a simple project to explore the ELK stack and logspout capabilities.

Pre-req: docker, docker compose

Clone project and cd into elk folder

1. build docker images: docker-compose build 
2. start the ELK stack: docker-compose up
3. start logspout: ./run_logspout.sh
4. start simple app: ./run_busy_box.sh
5. open browser, for kibana: localhost:5601
    - first time run requires to create an index pattern, under Settings -> Indices
    - on the time-field name, select @timestamp and click Create button
    - after that, click on the Discover top menu and explore your data
6. open browser, for cadvisor: localhost:8080

To explore the sample visualizations and dashboard:
1. Kibana -> Settings -> Object
2. Click on Import button
3. Select kibana-ui-config.json from elk/resources folder
