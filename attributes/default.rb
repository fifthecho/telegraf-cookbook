#
# Cookbook Name:: telegraf
# Attributes:: default
#
# Copyright (c) 2015 Jeff Moody, All Rights Reserved.

default['telegraf']['version'] = '0.2.0'
default['telegraf']['rpm_checksum'] = 'ba6b796aa3bd38272da79d569dd5b925'
default['telegraf']['deb_checksum'] = '9c34466f5d514e1ceac3543ac2aa2ccf'

default['telegraf']['tags'] = {}
default['telegraf']['interval'] = '10s'
default['telegraf']['round_interval'] = 'true'
default['telegraf']['flush_interval'] = '10s'
default['telegraf']['flush_jitter'] = '0s'
default['telegraf']['debug'] = false
default['telegraf']['hostname'] = false
default['telegraf']['output'] = ['influxdb']

default['telegraf']['amqp_host'] = 'localhost'
default['telegraf']['amqp_port'] = 5672
default['telegraf']['amqp_vhost'] = 'influxdb'
default['telegraf']['amqp_exchange'] = 'telegraf'
default['telegraf']['amqp_routing_tag'] = 'host'

default['telegraf']['datadog_apikey'] = 'my-secret-key'
default['telegraf']['datadog_timeout'] = 5

default['telegraf']['influxdb_hosts'] = ['http://localhost:8086']
default['telegraf']['influxdb_database'] = 'telegraf'
default['telegraf']['influxdb_precision'] = 's'
default['telegraf']['influxdb_timeout'] = '0'
default['telegraf']['influxdb_auth'] = false
default['telegraf']['influxdb_auth_username'] = 'telegraf'
default['telegraf']['influxdb_auth_password'] = 'metricsmetricsmetricsmetrics'
default['telegraf']['influxdb_user_agent'] = 'telegraf'

default['telegraf']['kafka_brokers'] = ['localhost:9092']
default['telegraf']['kafka_topic'] = 'telegraf'
default['telegraf']['kafka_routing_tag'] = 'host'

default['telegraf']['librato_api_user'] = 'telegraf@influxdb.com'
default['telegraf']['librato_api_token'] = 'my-secret-token'
default['telegraf']['librato_source_tag'] = 'hostname'
default['telegraf']['librato_timeout'] = 5

default['telegraf']['mqtt_servers'] = ['localhost:1883']
default['telegraf']['mqtt_topic_prefix'] = 'prefix'
default['telegraf']['mqtt_auth'] = false
default['telegraf']['mqtt_username'] = 'telegraf'
default['telegraf']['mqtt_password'] = 'metricsmetricsmetricsmetrics'

default['telegraf']['opentsdb_prefix'] = 'my.specific.prefix.'
default['telegraf']['opentsdb_telnet_mode_host'] = 'opentsdb.example.com'
default['telegraf']['opentsdb_telnet_mode_port'] = 4242
default['telegraf']['opentsdb_debug'] = false

default['telegraf']['aerospike'] = false
default['telegraf']['aerospike_servers'] = ['localhost:3000']

default['telegraf']['apache'] = false
default['telegraf']['apache_status_urls'] = ['http://localhost/server-status?auto']

default['telegraf']['bcache'] = false
default['telegraf']['bcache_devs'] = []

default['telegraf']['cpu'] = true
default['telegraf']['cpu_per_cpu'] = true
default['telegraf']['cpu_total_cpu'] = true
default['telegraf']['cpu_drop'] = ['cpu_time']

default['telegraf']['disk'] = true
default['telegraf']['disk_mountpoints'] = []

default['telegraf']['disque'] = false
default['telegraf']['disque_servers'] = ['localhost']

default['telegraf']['docker'] = false

default['telegraf']['elasticsearch'] = false
default['telegraf']['elasticsearch_servers'] = ['http://localhost:9200']
default['telegraf']['elasticsearch_local'] = true

default['telegraf']['exec'] = false
default['telegraf']['exec_commands'] = [{command: '/usr/bin/mycollector --foo=bar', 
	name: 'mycollector', interval: 10}, {command: '/usr/local/bin/foo', name: 'bar', interval: 5}]

default['telegraf']['haproxy'] = false
default['telegraf']['haproxy_servers'] = ['http://localhost:1936']

default['telegraf']['httpjson'] = false
default['telegraf']['httpjson_services'] = [{name: 'webserver_stats', servers: ['http://localhost:9999/stats', 'http://localhost:9998/stats/'], method: 'GET', 
	tag_keys: ['my_tag_1', 'my_tag_2'], parameters: {event_type: 'cpu_spike', threshold: '0.75'}}]

default['telegraf']['io'] = true

default['telegraf']['kafka'] = false
default['telegraf']['kafka_topic'] = 'topic_with_metrics'
default['telegraf']['kafka_consumer_group_name'] = 'telegraf_metrics_consumers'
default['telegraf']['kafka_zookeeper_peers'] = ['localhost:2181']
default['telegraf']['kafka_batch_size'] = 1000

default['telegraf']['leofs'] = false
default['telegraf']['leofs_servers'] = ['127.0.0.1:4021']

default['telegraf']['lustre2'] = false
default['telegraf']['lustre2_ost_procfiles'] = []
default['telegraf']['lustre2_mds_procfiles'] = []

default['telegraf']['mem'] = true

default['telegraf']['memcached'] = false
default['telegraf']['memcached_servers'] = ['localhost']

default['telegraf']['mongodb'] = false
default['telegraf']['mongodb_servers'] = ['127.0.0.1:27017']

default['telegraf']['mysql'] = false
default['telegraf']['mysql_servers'] = ['tcp(127.0.0.1:3306)/']

default['telegraf']['net'] = true
default['telegraf']['net_interfaces'] = []

default['telegraf']['netstat'] = true

default['telegraf']['nginx'] = false
default['telegraf']['nginx_urls'] = ['http://localhost/status']

default['telegraf']['phpfpm'] = false
default['telegraf']['phpfpm_servers'] = ['http://localhost/server-status']

default['telegraf']['ping'] = false
default['telegraf']['ping_urls'] = ['www.google.com']
default['telegraf']['ping_count'] = 1
default['telegraf']['ping_interval'] = 0.0
default['telegraf']['ping_timeout'] = 0.0
default['telegraf']['ping_interface'] = ''

default['telegraf']['postgresql'] = false
default['telegraf']['postgresql_servers'] = [{server: 'postgres://pgotest:pgotest@localhost/pgtest?sslmode=disable', databases: ['app_production', 'blah_testing']}]

default['telegraf']['procstat'] = false
default['telegraf']['procstat_process'] = [{prefix: 'nginx', pidfile: '/var/run/nginx.pid'}, {prefix: 'memcached', executable: 'memcached', exe: 'memcached'}]

default['telegraf']['prometheus'] = false
default['telegraf']['prometheus_urls'] = ['http://localhost:9100/metrics']

default['telegraf']['puppetagent'] = false
default['telegraf']['puppetagent_location'] = '/var/lib/puppet/state/last_run_summary.yaml'

default['telegraf']['rabbitmq'] = false
default['telegraf']['rabbitmq_servers'] = [{name: 'rmq-server-1', url: 'http://localhost:15672', username: 'guest', password: 'guest', nodes: ['rabbit@node1', 'rabbit@node2']}]

default['telegraf']['redis'] = false
default['telegraf']['redis_servers'] = ['tcp://localhost:6379']

default['telegraf']['rethinkdb'] = false
default['telegraf']['rethinkdb_servers'] = ['127.0.0.1:28015']

default['telegraf']['swap'] = true

default['telegraf']['system'] = true

default['telegraf']['zookeeper'] = false
default['telegraf']['zookeeper_servers'] = [':2181']

default['telegraf']['statsd'] = false
default['telegraf']['statsd_service_address'] = ':8125'
default['telegraf']['statsd_delete_gauges'] = false
default['telegraf']['statsd_delete_counters'] = false
default['telegraf']['statsd_delete_sets'] = false
default['telegraf']['statsd_delete_timings'] = false
default['telegraf']['statsd_percentiles'] = 90
default['telegraf']['statsd_templates'] = ['cpu.* measurement']
default['telegraf']['statsd_allowed_pending_messages'] = 10000
default['telegraf']['statsd_percentile_limit'] = 1000