# Telegraf plugin for gathering metrics from N Mesos masters
[[inputs.mesos]]
  # Timeout, in ms.
  timeout = 100
  # A list of Mesos masters, default value is localhost:5050.
  masters = ["localhost:5050"]
  # Metrics groups to be collected, by default, all enabled.
  master_collections = ["resources","master","system","slaves","frameworks","messages","evqueue","registrar"]

# Reads oids value from one or many snmp agents
[[inputs.snmp]]
  ## Use 'oids.txt' file to translate oids to names
  ## To generate 'oids.txt' you need to run:
  ##   snmptranslate -m all -Tz -On | sed -e 's/"//g' > /tmp/oids.txt
  ## Or if you have an other MIB folder with custom MIBs
  ##   snmptranslate -M /mycustommibfolder -Tz -On -m all | sed -e 's/"//g' > oids.txt
  snmptranslate_file = "/tmp/oids.txt"
  [[inputs.snmp.host]]
    address = "192.168.2.2:161"
    # SNMP community
    community = "public" # default public
    # SNMP version (1, 2 or 3)
    # Version 3 not supported yet
    version = 2 # default 2
    # SNMP response timeout
    timeout = 2.0 # default 2.0
    # SNMP request retries
    retries = 2 # default 2
    # Which get/bulk do you want to collect for this host
    collect = ["mybulk", "sysservices", "sysdescr"]
    # Simple list of OIDs to get, in addition to "collect"
    get_oids = []

  [[inputs.snmp.host]]
    address = "192.168.2.3:161"
    community = "public"
    version = 2
    timeout = 2.0
    retries = 2
    collect = ["mybulk"]
    get_oids = [
        "ifNumber",
        ".1.3.6.1.2.1.1.3.0",
    ]

  [[inputs.snmp.get]]
    name = "ifnumber"
    oid = "ifNumber"

  [[inputs.snmp.get]]
    name = "interface_speed"
    oid = "ifSpeed"
    instance = 0

  [[inputs.snmp.get]]
    name = "sysuptime"
    oid = ".1.3.6.1.2.1.1.3.0"
    unit = "second"

  [[inputs.snmp.bulk]]
    name = "mybulk"
    max_repetition = 127
    oid = ".1.3.6.1.2.1.1"

  [[inputs.snmp.bulk]]
    name = "ifoutoctets"
    max_repetition = 127
    oid = "ifOutOctets"

#
# SERVICE INPUTS:
#

# A Github Webhook Event collector
[[inputs.github_webhooks]]
  ## Address and port to host Webhook listener on
  service_address = ":1618"

# Read metrics from Kafka topic(s)
[[inputs.kafka_consumer]]
  ## topic(s) to consume
  topics = ["telegraf"]
  ## an array of Zookeeper connection strings
  zookeeper_peers = ["localhost:2181"]
  ## the name of the consumer group
  consumer_group = "telegraf_metrics_consumers"
  ## Offset (must be either "oldest" or "newest")
  offset = "oldest"

  ## Data format to consume. This can be "json", "influx" or "graphite"
  ## Each data format has it's own unique set of configuration options, read
  ## more about them here:
  ## https://github.com/influxdata/telegraf/blob/master/docs/DATA_FORMATS_INPUT.md
  data_format = "influx"

# Read metrics from MQTT topic(s)
[[inputs.mqtt_consumer]]
  servers = ["localhost:1883"]
  ## MQTT QoS, must be 0, 1, or 2
  qos = 0

  ## Topics to subscribe to
  topics = [
    "telegraf/host01/cpu",
    "telegraf/+/mem",
    "sensors/#",
  ]

  ## username and password to connect MQTT server.
  # username = "telegraf"
  # password = "metricsmetricsmetricsmetrics"

  ## Optional SSL Config
  # ssl_ca = "/etc/telegraf/ca.pem"
  # ssl_cert = "/etc/telegraf/cert.pem"
  # ssl_key = "/etc/telegraf/key.pem"
  ## Use SSL but skip chain & host verification
  # insecure_skip_verify = false

  ## Data format to consume. This can be "json", "influx" or "graphite"
  ## Each data format has it's own unique set of configuration options, read
  ## more about them here:
  ## https://github.com/influxdata/telegraf/blob/master/docs/DATA_FORMATS_INPUT.md
  data_format = "influx"

# Read metrics from NATS subject(s)
[[inputs.nats_consumer]]
  ## urls of NATS servers
  servers = ["nats://localhost:4222"]
  ## Use Transport Layer Security
  secure = false
  ## subject(s) to consume
  subjects = ["telegraf"]
  ## name a queue group
  queue_group = "telegraf_consumers"

  ## Data format to consume. This can be "json", "influx" or "graphite"
  ## Each data format has it's own unique set of configuration options, read
  ## more about them here:
  ## https://github.com/influxdata/telegraf/blob/master/docs/DATA_FORMATS_INPUT.md
  data_format = "influx"