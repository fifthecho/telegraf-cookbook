#
# Cookbook Name:: telegraf
# Attributes:: default
#
# Copyright (c) 2015 Jeff Moody, All Rights Reserved.

default['telegraf']['version'] = '0.10.4.1-1'

default['telegraf']['tags'] = {}
default['telegraf']['interval'] = '10s'
default['telegraf']['metric_buffer_limit'] = '10000'
default['telegraf']['flush_buffer_when_full'] = true
default['telegraf']['collection_jitter'] = '0s'
default['telegraf']['round_interval'] = 'true'
default['telegraf']['flush_interval'] = '10s'
default['telegraf']['flush_jitter'] = '0s'
default['telegraf']['debug'] = false
default['telegraf']['quiet'] = false
default['telegraf']['hostname'] = false
default['telegraf']['output'] = ['influxdb']

default['telegraf']['amon_server_key'] = 'my-server-key'
default['telegraf']['amon_instance'] = 'https://youramoninstance'
default['telegraf']['amon_timeout'] = '5s'

default['telegraf']['amqp_host'] = 'localhost'
default['telegraf']['amqp_port'] = 5672
default['telegraf']['amqp_vhost'] = 'influxdb'
default['telegraf']['amqp_exchange'] = 'telegraf'
default['telegraf']['amqp_routing_tag'] = 'host'
default['telegraf']['amqp_data_format'] = 'influx'

default['telegraf']['cloudwatch_region'] = 'us-east-1'
default['telegraf']['cloudwatch_namespace'] = 'InfluxData/Telegraf'

default['telegraf']['datadog_apikey'] = 'my-secret-key'
default['telegraf']['datadog_timeout'] = 5

default['telegraf']['file_files'] = ['stdout', '/tmp/metrics.out']
default['telegraf']['file_format'] = 'influx'

default['telegraf']['graphite_servers'] = ['localhost:2003']
default['telegraf']['graphite_prefix'] = ''
default['telegraf']['graphite_timeout'] = 2

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
default['telegraf']['kafka_data_format'] = 'influx'

default['telegraf']['kinesis_region'] = 'ap-southeast-2'
default['telegraf']['kinesis_streamname'] = 'StreamName'
default['telegraf']['kinesis_partitionkey'] = 'PartitionKey'
default['telegraf']['kinesis_format'] = 'string'
default['telegraf']['kinesis_debug'] = false

default['telegraf']['librato_api_user'] = 'telegraf@influxdb.com'
default['telegraf']['librato_api_token'] = 'my-secret-token'
default['telegraf']['librato_source_tag'] = 'hostname'
default['telegraf']['librato_timeout'] = 5

default['telegraf']['mqtt_servers'] = ['localhost:1883']
default['telegraf']['mqtt_topic_prefix'] = 'prefix'
default['telegraf']['mqtt_format'] = 'influx'
default['telegraf']['mqtt_auth'] = false
default['telegraf']['mqtt_username'] = 'telegraf'
default['telegraf']['mqtt_password'] = 'metricsmetricsmetricsmetrics'

default['telegraf']['nsq_server'] = 'localhost:4150'
default['telegraf']['nsq_topic'] = 'telegraf'
default['telegraf']['nsq_format'] = 'influx'

default['telegraf']['opentsdb_prefix'] = 'my.specific.prefix.'
default['telegraf']['opentsdb_telnet_mode_host'] = 'opentsdb.example.com'
default['telegraf']['opentsdb_telnet_mode_port'] = 4242
default['telegraf']['opentsdb_debug'] = false

default['telegraf']['prometheus_client_listen'] = ':9126'

default['telegraf']['riemann_url'] = 'localhost:5555'
default['telegraf']['riemann_transport'] = 'tcp'
default['telegraf']['riemann_seperator'] = ' '

default['telegraf']['aerospike'] = false
default['telegraf']['aerospike_servers'] = ['localhost:3000']

default['telegraf']['apache'] = false
default['telegraf']['apache_status_urls'] = ['http://localhost/server-status?auto']

default['telegraf']['bcache'] = false
default['telegraf']['bcache_path'] = '/sys/fs/bcache'
default['telegraf']['bcache_devs'] = []

default['telegraf']['couchdb'] = false
default['telegraf']['couchdb_hosts'] = ['http://localhost:8086/_stats']

default['telegraf']['cpu'] = true
default['telegraf']['cpu_per_cpu'] = true
default['telegraf']['cpu_total_cpu'] = true
default['telegraf']['cpu_drop'] = ['cpu_time']

default['telegraf']['disk'] = true
default['telegraf']['disk_mountpoints'] = []
default['telegraf']['disk_ignorefs'] = ['tmpfs', 'devtmpfs']

default['telegraf']['diskio'] = true
default['telegraf']['diskio_params'] = false
default['telegraf']['diskio_devices'] = ['sda', 'sdb']
default['telegraf']['diskio_skip_serial_number'] = true

default['telegraf']['disque'] = false
default['telegraf']['disque_servers'] = ['localhost']

default['telegraf']['dns_query'] = false
default['telegraf']['dns_query_servers'] = ['8.8.8.8']
default['telegraf']['dns_query_domains'] = ['.']
default['telegraf']['dns_query_record_type'] = 'A'
default['telegraf']['dns_query_port'] = 53
default['telegraf']['dns_query_timeout'] = 2

default['telegraf']['docker'] = false
default['telegraf']['docker_endpoint'] = 'unix:///var/run/docker.sock'
default['telegraf']['docker_container_names'] = []

default['telegraf']['dovecot'] = false
default['telegraf']['dovecot_servers'] = ['localhost:24242']
default['telegraf']['dovecot_domains'] = []

default['telegraf']['elasticsearch'] = false
default['telegraf']['elasticsearch_servers'] = ['http://localhost:9200']
default['telegraf']['elasticsearch_local'] = true
default['telegraf']['elasticsearch_cluster_health'] = false

default['telegraf']['exec'] = false
default['telegraf']['exec_commands'] = ['/tmp/test.sh', '/usr/bin/mycollector --foo=bar']
default['telegraf']['exec_name_suffix'] = '_mycollector'
default['telegraf']['exec_data_format'] = 'telegraf'

default['telegraf']['haproxy'] = false
default['telegraf']['haproxy_servers'] = ['http://localhost:1936']

default['telegraf']['httpjson'] = false
default['telegraf']['httpjson_services'] = [{name: 'webserver_stats', servers: ['http://localhost:9999/stats', 'http://localhost:9998/stats/'], method: 'GET', 
	tag_keys: ['my_tag_1', 'my_tag_2'], parameters: {event_type: 'cpu_spike', threshold: '0.75'}}]

default['telegraf']['influxdb'] = false
default['telegraf']['influxdb_urls'] = ['http://localhost:8086/debug/vars']

default['telegraf']['jolokia'] = false
default['telegraf']['jolokia_context'] = '/jolokia/read'
default['telegraf']['jolokia_servers'] = [{name: 'stable', host: '192.168.103.2', port: 8180}, 
      {name: 'test', host: '10.1.2.3', port: 8180, username: 'myuser', password: 'mypassword'}]
default['telegraf']['jolokia_metrics'] = [{name: 'heap_memory_usage', jmx: '/java.lang:type=Memory/HeapMemoryUsage'}]

default['telegraf']['leofs'] = false
default['telegraf']['leofs_servers'] = ['127.0.0.1:4021']

default['telegraf']['lustre2'] = false
default['telegraf']['lustre2_ost_procfiles'] = []
default['telegraf']['lustre2_mds_procfiles'] = []

default['telegraf']['mailchimp'] = false
default['telegraf']['mailchimp_api_key'] = ''
default['telegraf']['mailchimp_days_old'] = 0
default['telegraf']['mailchimp_campaign_id'] = ''

default['telegraf']['mem'] = true

default['telegraf']['memcached'] = false
default['telegraf']['memcached_servers'] = ['localhost']

default['telegraf']['mongodb'] = false
default['telegraf']['mongodb_servers'] = ['127.0.0.1:27017']

default['telegraf']['mysql'] = false
default['telegraf']['mysql_servers'] = ['tcp(127.0.0.1:3306)/']

default['telegraf']['net'] = true
default['telegraf']['net_interfaces'] = []

default['telegraf']['net_response'] = false
default['telegraf']['net_response_protocol'] = 'tcp'
default['telegraf']['net_response_address'] = 'github.com:80'
default['telegraf']['net_response_timeout'] = 1.0
default['telegraf']['net_response_read_timeout'] = 1.0
default['telegraf']['net_response_send'] = ''
default['telegraf']['net_response_expect'] = ''

default['telegraf']['netstat'] = true

default['telegraf']['nginx'] = false
default['telegraf']['nginx_urls'] = ['http://localhost/status']

default['telegraf']['nsq'] = false
default['telegraf']['nsq_endpoints'] = ['http://localhost:4151']

default['telegraf']['passenger'] = false
default['telegraf']['passenger_command'] = 'passenger-status -v --show=xml'

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

default['telegraf']['powerdns'] = false
default['telegraf']['powerdns_sockets'] = ['/var/run/pdns.controlsocket']

default['telegraf']['procstat'] = false
default['telegraf']['procstat_process'] = [{prefix: 'nginx', pidfile: '/var/run/nginx.pid'}, {prefix: 'memcached', executable: 'memcached', exe: 'memcached'}]

default['telegraf']['prometheus'] = false
default['telegraf']['prometheus_urls'] = ['http://localhost:9100/metrics']

default['telegraf']['puppetagent'] = false
default['telegraf']['puppetagent_location'] = '/var/lib/puppet/state/last_run_summary.yaml'

default['telegraf']['rabbitmq'] = false
default['telegraf']['rabbitmq_servers'] = [{name: 'rmq-server-1', url: 'http://localhost:15672', username: 'guest', password: 'guest', nodes: ['rabbit@node1', 'rabbit@node2']}]

default['telegraf']['raindrops'] = false
default['telegraf']['raindrops_urls'] = ['http://localhost:8080/_raindrops']

default['telegraf']['redis'] = false
default['telegraf']['redis_servers'] = ['tcp://localhost:6379']

default['telegraf']['rethinkdb'] = false
default['telegraf']['rethinkdb_servers'] = ['127.0.0.1:28015']

default['telegraf']['riak'] = false
default['telegraf']['riak_servers'] = ['http://localhost:8098']

default['telegraf']['sqlserver'] = false
default['telegraf']['sqlserver_servers'] = ['Server=192.168.1.10;Port=1433;User Id=<user>;Password=<pw>;app name=telegraf;log=1;']

default['telegraf']['swap'] = true

default['telegraf']['system'] = true

default['telegraf']['twemproxy'] = false
default['telegraf']['twemproxy_addr'] = 'localhost:22222'
default['telegraf']['twemproxy_pools'] = ["redis_pool", "mc_pool"]

default['telegraf']['zookeeper'] = false
default['telegraf']['zookeeper_servers'] = [':2181']

default['telegraf']['zfs'] = false
default['telegraf']['zfs_kstatpath'] = '/proc/spl/kstat/zfs'
default['telegraf']['zfs_kstatmetrics'] = ["arcstats", "zfetchstats", "vdev_cache_stats"]
default['telegraf']['zfs_poolmetrics'] = false

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