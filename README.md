```txt
[root@archlinux wesley]# curl start.spring.io

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
:: Spring Initializr ::  https://start.spring.io

This service generates quickstart projects that can be easily customized.
Possible customizations include a project's dependencies, Java version, and
build system or build structure. See below for further details.

The services uses a HAL based hypermedia format to expose a set of resources
to interact with. If you access this root resource requesting application/json
as media type the response will contain the following links:
+-----------------------+--------------------------------------------------------------+
| Rel                   | Description                                                  |
+-----------------------+--------------------------------------------------------------+
| gradle-build          | Generate a Gradle build file.                                |
|                       |                                                              |
| gradle-project *      | Generate a Gradle based project archive using the Groovy     |
|                       | DSL.                                                         |
|                       |                                                              |
| gradle-project-kotlin | Generate a Gradle based project archive using the Kotlin     |
|                       | DSL.                                                         |
|                       |                                                              |
| maven-build           | Generate a Maven pom.xml.                                    |
|                       |                                                              |
| maven-project         | Generate a Maven based project archive.                      |
+-----------------------+--------------------------------------------------------------+


The URI templates take a set of parameters to customize the result of a request
to the linked resource.
+-----------------+------------------------------------------+------------------------------+
| Parameter       | Description                              | Default value                |
+-----------------+------------------------------------------+------------------------------+
| applicationName | application name                         | DemoApplication              |
| artifactId      | project coordinates (infer archive name) | demo                         |
| baseDir         | base directory to create in the archive  | no base dir                  |
| bootVersion     | spring boot version                      | 3.4.1                        |
| dependencies    | dependency identifiers (comma-separated) | none                         |
| description     | project description                      | Demo project for Spring Boot |
| groupId         | project coordinates                      | com.example                  |
| javaVersion     | language level                           | 17                           |
| language        | programming language                     | java                         |
| name            | project name (infer application name)    | demo                         |
| packageName     | root package                             | com.example.demo             |
| packaging       | project packaging                        | jar                          |
| type            | project type                             | gradle-project               |
| version         | project version                          | 0.0.1-SNAPSHOT               |
+-----------------+------------------------------------------+------------------------------+


The following section has a list of supported identifiers for the comma-separated
list of "dependencies".
+--------------------------------------+--------------------------------------------------------------+-----------------------+
| Id                                   | Description                                                  | Required version      |
+--------------------------------------+--------------------------------------------------------------+-----------------------+
| activemq                             | Spring JMS support with Apache ActiveMQ 'Classic'.           |                       |
|                                      |                                                              |                       |
| actuator                             | Supports built in (or custom) endpoints that let you monitor |                       |
|                                      | and manage your application - such as application health,    |                       |
|                                      | metrics, sessions, etc.                                      |                       |
|                                      |                                                              |                       |
| amqp                                 | Gives your applications a common platform to send and        |                       |
|                                      | receive messages, and your messages a safe place to live     |                       |
|                                      | until received.                                              |                       |
|                                      |                                                              |                       |
| amqp-streams                         | Building stream processing applications with RabbitMQ.       |                       |
|                                      |                                                              |                       |
| artemis                              | Spring JMS support with Apache ActiveMQ Artemis.             |                       |
|                                      |                                                              |                       |
| azure-active-directory               | Spring Security integration with Azure Active Directory for  | >=3.3.0 and <3.5.0-M1 |
|                                      | authentication.                                              |                       |
|                                      |                                                              |                       |
| azure-cosmos-db                      | Fully managed NoSQL database service for modern app          | >=3.3.0 and <3.5.0-M1 |
|                                      | development, including Spring Data support.                  |                       |
|                                      |                                                              |                       |
| azure-keyvault                       | All key vault features are supported, e.g. manage            | >=3.3.0 and <3.5.0-M1 |
|                                      | application secrets and certificates.                        |                       |
|                                      |                                                              |                       |
| azure-storage                        | All Storage features are supported, e.g. blob, fileshare and | >=3.3.0 and <3.5.0-M1 |
|                                      | queue.                                                       |                       |
|                                      |                                                              |                       |
| azure-support                        | Auto-configuration for Azure Services (Service Bus, Storage, | >=3.3.0 and <3.5.0-M1 |
|                                      | Active Directory, Key Vault, and more).                      |                       |
|                                      |                                                              |                       |
| batch                                | Batch applications with transactions, retry/skip and chunk   |                       |
|                                      | based processing.                                            |                       |
|                                      |                                                              |                       |
| cache                                | Provides cache-related operations, such as the ability to    |                       |
|                                      | update the content of the cache, but does not provide the    |                       |
|                                      | actual data store.                                           |                       |
|                                      |                                                              |                       |
| camel                                | Apache Camel is an open source integration framework that    | >=3.3.0 and <3.5.0-M1 |
|                                      | empowers you to quickly and easily integrate various systems |                       |
|                                      | consuming or producing data.                                 |                       |
|                                      |                                                              |                       |
| cloud-bus                            | Links nodes of a distributed system with a lightweight       | >=3.3.0 and <3.5.0-M1 |
|                                      | message broker which can used to broadcast state changes or  |                       |
|                                      | other management instructions (requires a binder, e.g.       |                       |
|                                      | Apache Kafka or RabbitMQ).                                   |                       |
|                                      |                                                              |                       |
| cloud-config-client                  | Client that connects to a Spring Cloud Config Server to      | >=3.3.0 and <3.5.0-M1 |
|                                      | fetch the application's configuration.                       |                       |
|                                      |                                                              |                       |
| cloud-config-server                  | Central management for configuration via Git, SVN, or        | >=3.3.0 and <3.5.0-M1 |
|                                      | HashiCorp Vault.                                             |                       |
|                                      |                                                              |                       |
| cloud-contract-stub-runner           | Stub Runner for HTTP/Messaging based communication. Allows   | >=3.3.0 and <3.5.0-M1 |
|                                      | creating WireMock stubs from RestDocs tests.                 |                       |
|                                      |                                                              |                       |
| cloud-contract-verifier              | Moves TDD to the level of software architecture by enabling  | >=3.3.0 and <3.5.0-M1 |
|                                      | Consumer Driven Contract (CDC) development.                  |                       |
|                                      |                                                              |                       |
| cloud-eureka                         | A REST based service for locating services for the purpose   | >=3.3.0 and <3.5.0-M1 |
|                                      | of load balancing and failover of middle-tier servers.       |                       |
|                                      |                                                              |                       |
| cloud-eureka-server                  | spring-cloud-netflix Eureka Server.                          | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| cloud-feign                          | Declarative REST Client. OpenFeign creates a dynamic         | >=3.3.0 and <3.5.0-M1 |
|                                      | implementation of an interface decorated with JAX-RS or      |                       |
|                                      | Spring MVC annotations.                                      |                       |
|                                      |                                                              |                       |
| cloud-function                       | Promotes the implementation of business logic via functions  | >=3.3.0 and <3.5.0-M1 |
|                                      | and supports a uniform programming model across serverless   |                       |
|                                      | providers, as well as the ability to run standalone (locally |                       |
|                                      | or in a PaaS).                                               |                       |
|                                      |                                                              |                       |
| cloud-gateway                        | Provides a simple, yet effective way to route to APIs in     | >=3.3.0 and <3.5.0-M1 |
|                                      | Servlet-based applications. Provides cross-cutting concerns  |                       |
|                                      | to those APIs such as security, monitoring/metrics, and      |                       |
|                                      | resiliency.                                                  |                       |
|                                      |                                                              |                       |
| cloud-gateway-reactive               | Provides a simple, yet effective way to route to APIs in     | >=3.3.0 and <3.5.0-M1 |
|                                      | reactive applications. Provides cross-cutting concerns to    |                       |
|                                      | those APIs such as security, monitoring/metrics, and         |                       |
|                                      | resiliency.                                                  |                       |
|                                      |                                                              |                       |
| cloud-gcp                            | Contains auto-configuration support for every Google Cloud   | >=3.3.0 and <3.4.0-M1 |
|                                      | integration. Most of the auto-configuration code is only     |                       |
|                                      | enabled if other dependencies are added to the classpath.    |                       |
|                                      |                                                              |                       |
| cloud-gcp-pubsub                     | Adds the Google Cloud Support entry and all the required     | >=3.3.0 and <3.4.0-M1 |
|                                      | dependencies so that the Google Cloud Pub/Sub integration    |                       |
|                                      | work out of the box.                                         |                       |
|                                      |                                                              |                       |
| cloud-gcp-storage                    | Adds the Google Cloud Support entry and all the required     | >=3.3.0 and <3.4.0-M1 |
|                                      | dependencies so that the Google Cloud Storage integration    |                       |
|                                      | work out of the box.                                         |                       |
|                                      |                                                              |                       |
| cloud-loadbalancer                   | Client-side load-balancing with Spring Cloud LoadBalancer.   | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| cloud-resilience4j                   | Spring Cloud Circuit breaker with Resilience4j as the        | >=3.3.0 and <3.5.0-M1 |
|                                      | underlying implementation.                                   |                       |
|                                      |                                                              |                       |
| cloud-starter                        | Non-specific Spring Cloud features, unrelated to external    | >=3.3.0 and <3.5.0-M1 |
|                                      | libraries or integrations (e.g. Bootstrap context and        |                       |
|                                      | @RefreshScope).                                              |                       |
|                                      |                                                              |                       |
| cloud-starter-consul-config          | Enable and configure the common patterns inside your         | >=3.3.0 and <3.5.0-M1 |
|                                      | application and build large distributed systems with         |                       |
|                                      | Hashicorp’s Consul. The patterns provided include Service    |                       |
|                                      | Discovery, Distributed Configuration and Control Bus.        |                       |
|                                      |                                                              |                       |
| cloud-starter-consul-discovery       | Service discovery with Hashicorp Consul.                     | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| cloud-starter-vault-config           | Provides client-side support for externalized configuration  | >=3.3.0 and <3.5.0-M1 |
|                                      | in a distributed system. Using HashiCorp's Vault you have a  |                       |
|                                      | central place to manage external secret properties for       |                       |
|                                      | applications across all environments.                        |                       |
|                                      |                                                              |                       |
| cloud-starter-zookeeper-config       | Enable and configure common patterns inside your application | >=3.3.0 and <3.5.0-M1 |
|                                      | and build large distributed systems with Apache Zookeeper    |                       |
|                                      | based components. The provided patterns include Service      |                       |
|                                      | Discovery and Configuration.                                 |                       |
|                                      |                                                              |                       |
| cloud-starter-zookeeper-discovery    | Service discovery with Apache Zookeeper.                     | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| cloud-stream                         | Framework for building highly scalable event-driven          | >=3.3.0 and <3.5.0-M1 |
|                                      | microservices connected with shared messaging systems        |                       |
|                                      | (requires a binder, e.g. Apache Kafka, Apache Pulsar,        |                       |
|                                      | RabbitMQ, or Solace PubSub+).                                |                       |
|                                      |                                                              |                       |
| cloud-task                           | Allows a user to develop and run short lived microservices   | >=3.3.0 and <3.5.0-M1 |
|                                      | using Spring Cloud. Run them locally, in the cloud, and on   |                       |
|                                      | Spring Cloud Data Flow.                                      |                       |
|                                      |                                                              |                       |
| codecentric-spring-boot-admin-client | Required for your application to register with a             | >=3.3.0 and <3.5.0-M1 |
|                                      | Codecentric's Spring Boot Admin Server instance.             |                       |
|                                      |                                                              |                       |
| codecentric-spring-boot-admin-server | A community project to manage and monitor your Spring Boot   | >=3.3.0 and <3.5.0-M1 |
|                                      | applications. Provides a UI on top of the Spring Boot        |                       |
|                                      | Actuator endpoints.                                          |                       |
|                                      |                                                              |                       |
| configuration-processor              | Generate metadata for developers to offer contextual help    |                       |
|                                      | and "code completion" when working with custom configuration |                       |
|                                      | keys (ex.application.properties/.yml files).                 |                       |
|                                      |                                                              |                       |
| data-cassandra                       | A free and open-source, distributed, NoSQL database          |                       |
|                                      | management system that offers high-scalability and           |                       |
|                                      | high-performance.                                            |                       |
|                                      |                                                              |                       |
| data-cassandra-reactive              | Access Cassandra NoSQL Database in a reactive fashion.       |                       |
|                                      |                                                              |                       |
| data-couchbase                       | NoSQL document-oriented database that offers in memory-first |                       |
|                                      | architecture, geo-distributed deployments, and workload      |                       |
|                                      | isolation.                                                   |                       |
|                                      |                                                              |                       |
| data-couchbase-reactive              | Access Couchbase NoSQL database in a reactive fashion with   |                       |
|                                      | Spring Data Couchbase.                                       |                       |
|                                      |                                                              |                       |
| data-elasticsearch                   | A distributed, RESTful search and analytics engine with      |                       |
|                                      | Spring Data Elasticsearch.                                   |                       |
|                                      |                                                              |                       |
| data-jdbc                            | Persist data in SQL stores with plain JDBC using Spring      |                       |
|                                      | Data.                                                        |                       |
|                                      |                                                              |                       |
| data-jpa                             | Persist data in SQL stores with Java Persistence API using   |                       |
|                                      | Spring Data and Hibernate.                                   |                       |
|                                      |                                                              |                       |
| data-ldap                            | Makes it easier to build Spring based applications that use  |                       |
|                                      | the Lightweight Directory Access Protocol.                   |                       |
|                                      |                                                              |                       |
| data-mongodb                         | Store data in flexible, JSON-like documents, meaning fields  |                       |
|                                      | can vary from document to document and data structure can be |                       |
|                                      | changed over time.                                           |                       |
|                                      |                                                              |                       |
| data-mongodb-reactive                | Provides asynchronous stream processing with non-blocking    |                       |
|                                      | back pressure for MongoDB.                                   |                       |
|                                      |                                                              |                       |
| data-neo4j                           | An open source NoSQL database that stores data structured as |                       |
|                                      | graphs consisting of nodes, connected by relationships.      |                       |
|                                      |                                                              |                       |
| data-r2dbc                           | Provides Reactive Relational Database Connectivity to        |                       |
|                                      | persist data in SQL stores using Spring Data in reactive     |                       |
|                                      | applications.                                                |                       |
|                                      |                                                              |                       |
| data-redis                           | Advanced and thread-safe Java Redis client for synchronous,  |                       |
|                                      | asynchronous, and reactive usage. Supports Cluster,          |                       |
|                                      | Sentinel, Pipelining, Auto-Reconnect, Codecs and much more.  |                       |
|                                      |                                                              |                       |
| data-redis-reactive                  | Access Redis key-value data stores in a reactive fashion     |                       |
|                                      | with Spring Data Redis.                                      |                       |
|                                      |                                                              |                       |
| data-rest                            | Exposing Spring Data repositories over REST via Spring Data  |                       |
|                                      | REST.                                                        |                       |
|                                      |                                                              |                       |
| data-rest-explorer                   | Browsing Spring Data REST repositories in your browser.      |                       |
|                                      |                                                              |                       |
| datadog                              | Publish Micrometer metrics to Datadog, a dimensional         |                       |
|                                      | time-series SaaS with built-in dashboarding and alerting.    |                       |
|                                      |                                                              |                       |
| db2                                  | A JDBC driver that provides access to IBM DB2.               |                       |
|                                      |                                                              |                       |
| derby                                | An open source relational database implemented entirely in   |                       |
|                                      | Java.                                                        |                       |
|                                      |                                                              |                       |
| devtools                             | Provides fast application restarts, LiveReload, and          |                       |
|                                      | configurations for enhanced development experience.          |                       |
|                                      |                                                              |                       |
| dgs-codegen                          | Generate data types and type-safe APIs for querying GraphQL  |                       |
|                                      | APIs by parsing schema files.                                |                       |
|                                      |                                                              |                       |
| distributed-tracing                  | Enable span and trace IDs in logs.                           |                       |
|                                      |                                                              |                       |
| docker-compose                       | Provides docker compose support for enhanced development     |                       |
|                                      | experience.                                                  |                       |
|                                      |                                                              |                       |
| dynatrace                            | Publish Micrometer metrics to Dynatrace, a platform          |                       |
|                                      | featuring observability, AIOps, application security and     |                       |
|                                      | analytics.                                                   |                       |
|                                      |                                                              |                       |
| flyway                               | Version control for your database so you can migrate from    |                       |
|                                      | any version (incl. an empty database) to the latest version  |                       |
|                                      | of the schema.                                               |                       |
|                                      |                                                              |                       |
| freemarker                           | Java library to generate text output (HTML web pages,        |                       |
|                                      | e-mails, configuration files, source code, etc.) based on    |                       |
|                                      | templates and changing data.                                 |                       |
|                                      |                                                              |                       |
| graphite                             | Publish Micrometer metrics to Graphite, a hierarchical       |                       |
|                                      | metrics system backed by a fixed-size database.              |                       |
|                                      |                                                              |                       |
| graphql                              | Build GraphQL applications with Spring for GraphQL and       |                       |
|                                      | GraphQL Java.                                                |                       |
|                                      |                                                              |                       |
| groovy-templates                     | Groovy templating engine.                                    |                       |
|                                      |                                                              |                       |
| h2                                   | Provides a fast in-memory database that supports JDBC API    |                       |
|                                      | and R2DBC access, with a small (2mb) footprint. Supports     |                       |
|                                      | embedded and server modes as well as a browser based console |                       |
|                                      | application.                                                 |                       |
|                                      |                                                              |                       |
| hateoas                              | Eases the creation of RESTful APIs that follow the HATEOAS   |                       |
|                                      | principle when working with Spring / Spring MVC.             |                       |
|                                      |                                                              |                       |
| hsql                                 | Lightweight 100% Java SQL Database Engine.                   |                       |
|                                      |                                                              |                       |
| htmx                                 | Build modern user interfaces with the simplicity and power   | >=3.4.0 and <3.5.0-M1 |
|                                      | of hypertext.                                                |                       |
|                                      |                                                              |                       |
| influx                               | Publish Micrometer metrics to InfluxDB, a dimensional        |                       |
|                                      | time-series server that support real-time stream processing  |                       |
|                                      | of data.                                                     |                       |
|                                      |                                                              |                       |
| integration                          | Adds support for Enterprise Integration Patterns. Enables    |                       |
|                                      | lightweight messaging and supports integration with external |                       |
|                                      | systems via declarative adapters.                            |                       |
|                                      |                                                              |                       |
| jdbc                                 | Database Connectivity API that defines how a client may      |                       |
|                                      | connect and query a database.                                |                       |
|                                      |                                                              |                       |
| jersey                               | Framework for developing RESTful Web Services in Java that   |                       |
|                                      | provides support for JAX-RS APIs.                            |                       |
|                                      |                                                              |                       |
| jooq                                 | Generate Java code from your database and build type safe    |                       |
|                                      | SQL queries through a fluent API.                            |                       |
|                                      |                                                              |                       |
| jte                                  | Secure and lightweight template engine for Java and Kotlin.  |                       |
|                                      |                                                              |                       |
| kafka                                | Publish, subscribe, store, and process streams of records.   |                       |
|                                      |                                                              |                       |
| kafka-streams                        | Building stream processing applications with Apache Kafka    |                       |
|                                      | Streams.                                                     |                       |
|                                      |                                                              |                       |
| liquibase                            | Liquibase database migration and source control library.     |                       |
|                                      |                                                              |                       |
| lombok                               | Java annotation library which helps to reduce boilerplate    |                       |
|                                      | code.                                                        |                       |
|                                      |                                                              |                       |
| mail                                 | Send email using Java Mail and Spring Framework's            |                       |
|                                      | JavaMailSender.                                              |                       |
|                                      |                                                              |                       |
| mariadb                              | MariaDB JDBC and R2DBC driver.                               |                       |
|                                      |                                                              |                       |
| modulith                             | Support for building modular monolithic applications.        | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| mustache                             | Logic-less templates for both web and standalone             |                       |
|                                      | environments. There are no if statements, else clauses, or   |                       |
|                                      | for loops. Instead there are only tags.                      |                       |
|                                      |                                                              |                       |
| mybatis                              | Persistence framework with support for custom SQL, stored    | >=3.3.0 and <3.5.0-M1 |
|                                      | procedures and advanced mappings. MyBatis couples objects    |                       |
|                                      | with stored procedures or SQL statements using a XML         |                       |
|                                      | descriptor or annotations.                                   |                       |
|                                      |                                                              |                       |
| mysql                                | MySQL JDBC driver.                                           |                       |
|                                      |                                                              |                       |
| native                               | Support for compiling Spring applications to native          |                       |
|                                      | executables using the GraalVM native-image compiler.         |                       |
|                                      |                                                              |                       |
| netflix-dgs                          | Build GraphQL applications with Netflix DGS and Spring for   | >=3.3.0 and <3.5.0-M1 |
|                                      | GraphQL.                                                     |                       |
|                                      |                                                              |                       |
| new-relic                            | Publish Micrometer metrics to New Relic, a SaaS offering     |                       |
|                                      | with a full UI and a query language called NRQL.             |                       |
|                                      |                                                              |                       |
| oauth2-authorization-server          | Spring Boot integration for Spring Authorization Server.     |                       |
|                                      |                                                              |                       |
| oauth2-client                        | Spring Boot integration for Spring Security's OAuth2/OpenID  |                       |
|                                      | Connect client features.                                     |                       |
|                                      |                                                              |                       |
| oauth2-resource-server               | Spring Boot integration for Spring Security's OAuth2         |                       |
|                                      | resource server features.                                    |                       |
|                                      |                                                              |                       |
| okta                                 | Okta specific configuration for Spring Security/Spring Boot  | >=3.3.0 and <3.4.0-M1 |
|                                      | OAuth2 features. Enable your Spring Boot application to work |                       |
|                                      | with Okta via OAuth 2.0/OIDC.                                |                       |
|                                      |                                                              |                       |
| oracle                               | A JDBC driver that provides access to Oracle.                |                       |
|                                      |                                                              |                       |
| otlp-metrics                         | Publish Micrometer metrics to an OpenTelemetry Protocol      |                       |
|                                      | (OTLP) capable backend.                                      |                       |
|                                      |                                                              |                       |
| postgresql                           | A JDBC and R2DBC driver that allows Java programs to connect |                       |
|                                      | to a PostgreSQL database using standard, database            |                       |
|                                      | independent Java code.                                       |                       |
|                                      |                                                              |                       |
| prometheus                           | Expose Micrometer metrics in Prometheus format, an in-memory |                       |
|                                      | dimensional time series database with a simple built-in UI,  |                       |
|                                      | a custom query language, and math operations.                |                       |
|                                      |                                                              |                       |
| pulsar                               | Build messaging applications with Apache Pulsar              |                       |
|                                      |                                                              |                       |
| pulsar-reactive                      | Build reactive messaging applications with Apache Pulsar     |                       |
|                                      |                                                              |                       |
| quartz                               | Schedule jobs using Quartz.                                  |                       |
|                                      |                                                              |                       |
| restdocs                             | Document RESTful services by combining hand-written with     |                       |
|                                      | Asciidoctor and auto-generated snippets produced with Spring |                       |
|                                      | MVC Test.                                                    |                       |
|                                      |                                                              |                       |
| rsocket                              | RSocket.io applications with Spring Messaging and Netty.     |                       |
|                                      |                                                              |                       |
| sbom-cyclone-dx                      | Creates a Software Bill of Materials in CycloneDX format.    |                       |
|                                      |                                                              |                       |
| scs-config-client                    | Config client on VMware Tanzu Application Service.           | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| scs-service-registry                 | Eureka service discovery client on VMware Tanzu Application  | >=3.3.0 and <3.5.0-M1 |
|                                      | Service.                                                     |                       |
|                                      |                                                              |                       |
| security                             | Highly customizable authentication and access-control        |                       |
|                                      | framework for Spring applications.                           |                       |
|                                      |                                                              |                       |
| sentry                               | Application performance monitoring and error tracking that   | >=3.3.0 and <3.3.0-M1 |
|                                      | help software teams see clearer, solve quicker, and learn    |                       |
|                                      | continuously.                                                |                       |
|                                      |                                                              |                       |
| session                              | Provides an API and implementations for managing user        |                       |
|                                      | session information.                                         |                       |
|                                      |                                                              |                       |
| solace                               | Connect to a Solace PubSub+ Advanced Event Broker to         | >=3.3.0 and <3.4.0-M1 |
|                                      | publish, subscribe, request/reply and store/replay messages  |                       |
|                                      |                                                              |                       |
| spring-ai-anthropic                  | Spring AI support for Anthropic Claude AI models.            | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| spring-ai-azure-openai               | Spring AI support for Azure’s OpenAI offering, powered by    | >=3.3.0 and <3.5.0-M1 |
|                                      | ChatGPT. It extends beyond traditional OpenAI capabilities,  |                       |
|                                      | delivering AI-driven text generation with enhanced           |                       |
|                                      | functionality.                                               |                       |
|                                      |                                                              |                       |
| spring-ai-bedrock                    | Spring AI support for Amazon Bedrock. It is a managed        | >=3.3.0 and <3.5.0-M1 |
|                                      | service that provides foundation models from various AI      |                       |
|                                      | providers, available through a unified API.                  |                       |
|                                      |                                                              |                       |
| spring-ai-bedrock-converse           | Spring AI support for Amazon Bedrock Converse. It provides a | >=3.3.0 and <3.5.0-M1 |
|                                      | unified interface for conversational AI models with enhanced |                       |
|                                      | capabilities including function/tool calling, multimodal     |                       |
|                                      | inputs, and streaming responses.                             |                       |
|                                      |                                                              |                       |
| spring-ai-markdown-document-reader   | Spring AI Markdown document reader. It allows to load        | >=3.3.0 and <3.5.0-M1 |
|                                      | Markdown documents, converting them into a list of Spring AI |                       |
|                                      | Document objects.                                            |                       |
|                                      |                                                              |                       |
| spring-ai-mistral                    | Spring AI support for Mistral AI, the open and portable      | >=3.3.0 and <3.5.0-M1 |
|                                      | generative AI for devs and businesses.                       |                       |
|                                      |                                                              |                       |
| spring-ai-ollama                     | Spring AI support for Ollama. It allows you to run various   | >=3.3.0 and <3.5.0-M1 |
|                                      | Large Language Models (LLMs) locally and generate text from  |                       |
|                                      | them.                                                        |                       |
|                                      |                                                              |                       |
| spring-ai-openai                     | Spring AI support for ChatGPT, the AI language model and     | >=3.3.0 and <3.5.0-M1 |
|                                      | DALL-E, the Image generation model from OpenAI.              |                       |
|                                      |                                                              |                       |
| spring-ai-pdf-document-reader        | Spring AI PDF document reader. It uses Apache PdfBox to      | >=3.3.0 and <3.5.0-M1 |
|                                      | extract text from PDF documents and converting them into a   |                       |
|                                      | list of Spring AI Document objects.                          |                       |
|                                      |                                                              |                       |
| spring-ai-postgresml                 | Spring AI support for the PostgresML text embeddings models. | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| spring-ai-stabilityai                | Spring AI support for Stability AI's text to image           | >=3.3.0 and <3.5.0-M1 |
|                                      | generation model.                                            |                       |
|                                      |                                                              |                       |
| spring-ai-tika-document-reader       | Spring AI Tika document reader. It uses Apache Tika to       | >=3.3.0 and <3.5.0-M1 |
|                                      | extract text from a variety of document formats, such as     |                       |
|                                      | PDF, DOC/DOCX, PPT/PPTX, and HTML. The documents are         |                       |
|                                      | converted into a list of Spring AI Document objects.         |                       |
|                                      |                                                              |                       |
| spring-ai-transformers               | Spring AI support for pre-trained transformer models,        | >=3.3.0 and <3.5.0-M1 |
|                                      | serialized into the Open Neural Network Exchange (ONNX)      |                       |
|                                      | format.                                                      |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-azure             | Spring AI vector database support for Azure AI Search. It is | >=3.3.0 and <3.5.0-M1 |
|                                      | an AI-powered information retrieval platform and part of     |                       |
|                                      | Microsoft’s larger AI platform. Among other features, it     |                       |
|                                      | allows users to query information using vector-based storage |                       |
|                                      | and retrieval.                                               |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-cassandra         | Spring AI vector database support for Apache Cassandra.      | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| spring-ai-vectordb-chroma            | Spring AI vector database support for Chroma. It is an       | >=3.3.0 and <3.5.0-M1 |
|                                      | open-source embedding database and gives you the tools to    |                       |
|                                      | store document embeddings, content, and metadata. It also    |                       |
|                                      | allows to search through those embeddings, including         |                       |
|                                      | metadata filtering.                                          |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-elasticsearch     | Spring AI vector database support for Elasticsearch.         | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| spring-ai-vectordb-milvus            | Spring AI vector database support for Milvus. It is an       | >=3.3.0 and <3.5.0-M1 |
|                                      | open-source vector database that has garnered significant    |                       |
|                                      | attention in the fields of data science and machine          |                       |
|                                      | learning. One of its standout features lies in its robust    |                       |
|                                      | support for vector indexing and querying.                    |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-mongodb-atlas     | Spring AI vector database support for MongoDB Atlas. Is is a | >=3.3.0 and <3.5.0-M1 |
|                                      | fully managed cloud database service that provides an easy   |                       |
|                                      | way to deploy, operate, and scale a MongoDB database in the  |                       |
|                                      | cloud.                                                       |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-neo4j             | Spring AI vector database support for Neo4j's Vector Search. | >=3.3.0 and <3.5.0-M1 |
|                                      | It allows users to query vector embeddings from large        |                       |
|                                      | datasets.                                                    |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-oracle            | Spring AI vector database support for Oracle. Enables        | >=3.3.0 and <3.5.0-M1 |
|                                      | storing, indexing and searching vector embeddings in Oracle  |                       |
|                                      | Database 23ai.                                               |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-pgvector          | Spring AI vector database support for PGvector. It is an     | >=3.3.0 and <3.5.0-M1 |
|                                      | open-source extension for PostgreSQL that enables storing    |                       |
|                                      | and searching over machine learning-generated embeddings.    |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-pinecone          | Spring AI vector database support for Pinecone. It is a      | >=3.3.0 and <3.5.0-M1 |
|                                      | popular cloud-based vector database and allows you to store  |                       |
|                                      | and search vectors efficiently.                              |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-qdrant            | Spring AI vector database support for Qdrant. It is an       | >=3.3.0 and <3.5.0-M1 |
|                                      | open-source, high-performance vector search engine/database. |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-redis             | Spring AI vector database support for Redis Search and       | >=3.3.0 and <3.5.0-M1 |
|                                      | Query. It extends the core features of Redis OSS and allows  |                       |
|                                      | you to use Redis as a vector database.                       |                       |
|                                      |                                                              |                       |
| spring-ai-vectordb-typesense         | Spring AI vector database support for Typesense.             | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| spring-ai-vectordb-weaviate          | Spring AI vector database support for Weaviate, an           | >=3.3.0 and <3.5.0-M1 |
|                                      | open-source vector database. It allows you to store data     |                       |
|                                      | objects and vector embeddings from your favorite ML-models   |                       |
|                                      | and scale seamlessly into billions of data objects.          |                       |
|                                      |                                                              |                       |
| spring-ai-vertexai-embeddings        | Spring AI support for Google Vertex text and multimodal      | >=3.3.0 and <3.5.0-M1 |
|                                      | embedding models.                                            |                       |
|                                      |                                                              |                       |
| spring-ai-vertexai-gemini            | Spring AI support for Google Vertex Gemini chat. Doesn't     | >=3.3.0 and <3.5.0-M1 |
|                                      | support embeddings.                                          |                       |
|                                      |                                                              |                       |
| spring-grpc                          | Experimental support for gRPC, a high performance, open      | >=3.4.0 and <3.5.0-M1 |
|                                      | source universal RPC framework.                              |                       |
|                                      |                                                              |                       |
| spring-shell                         | Build command line applications with spring.                 | >=3.3.0 and <3.5.0-M1 |
|                                      |                                                              |                       |
| sqlserver                            | A JDBC and R2DBC driver that provides access to Microsoft    |                       |
|                                      | SQL Server and Azure SQL Database from any Java application. |                       |
|                                      |                                                              |                       |
| testcontainers                       | Provide lightweight, throwaway instances of common           |                       |
|                                      | databases, Selenium web browsers, or anything else that can  |                       |
|                                      | run in a Docker container.                                   |                       |
|                                      |                                                              |                       |
| thymeleaf                            | A modern server-side Java template engine for both web and   |                       |
|                                      | standalone environments. Allows HTML to be correctly         |                       |
|                                      | displayed in browsers and as static prototypes.              |                       |
|                                      |                                                              |                       |
| timefold-solver                      | AI solver to optimize operations and scheduling.             | >=3.3.0 and <3.4.0-M1 |
|                                      |                                                              |                       |
| unboundid-ldap                       | Provides a platform neutral way for running a LDAP server in |                       |
|                                      | unit tests.                                                  |                       |
|                                      |                                                              |                       |
| vaadin                               | The full-stack web app platform for Spring. Build views      | >=3.3.0 and <3.5.0-M1 |
|                                      | fully in Java with Flow, or in React using Hilla.            |                       |
|                                      |                                                              |                       |
| validation                           | Bean Validation with Hibernate validator.                    |                       |
|                                      |                                                              |                       |
| wavefront                            | Publish metrics and optionally distributed traces to Tanzu   |                       |
|                                      | Observability by Wavefront, a SaaS-based metrics monitoring  |                       |
|                                      | and analytics platform that lets you visualize, query, and   |                       |
|                                      | alert over data from across your entire stack.               |                       |
|                                      |                                                              |                       |
| web                                  | Build web, including RESTful, applications using Spring MVC. |                       |
|                                      | Uses Apache Tomcat as the default embedded container.        |                       |
|                                      |                                                              |                       |
| web-services                         | Facilitates contract-first SOAP development. Allows for the  |                       |
|                                      | creation of flexible web services using one of the many ways |                       |
|                                      | to manipulate XML payloads.                                  |                       |
|                                      |                                                              |                       |
| webflux                              | Build reactive web applications with Spring WebFlux and      |                       |
|                                      | Netty.                                                       |                       |
|                                      |                                                              |                       |
| websocket                            | Build Servlet-based WebSocket applications with SockJS and   |                       |
|                                      | STOMP.                                                       |                       |
|                                      |                                                              |                       |
| zipkin                               | Enable and expose span and trace IDs to Zipkin.              |                       |
+--------------------------------------+--------------------------------------------------------------+-----------------------+

Examples:

To create a default demo.zip:
        $ curl -G https://start.spring.io/starter.zip -o demo.zip

To create a web project using Java 11:
        $ curl -G https://start.spring.io/starter.zip -d dependencies=web \
                        -d javaVersion=11 -o demo.zip

To create a web/data-jpa gradle project unpacked:
        $ curl -G https://start.spring.io/starter.tgz -d dependencies=web,data-jpa \
                   -d type=gradle-project -d baseDir=my-dir | tar -xzvf -

To generate a Maven POM with war packaging:
        $ curl -G https://start.spring.io/pom.xml -d packaging=war -o pom.xml
```
