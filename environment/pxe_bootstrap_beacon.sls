beacons:
    log:
      - file: /var/log/apache2/access.log
      - tags:
          bootstrap/request/event:
            regex: .*[a-f0-9]{8}-?[a-f0-9]{4}-?4[a-f0-9]{3}-?[89ab][a-f0-9]{3}-?[a-f0-9]{12}
