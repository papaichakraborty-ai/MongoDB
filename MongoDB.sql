# Que 1. What are the key differences between SQL and NoSQL databases ?
# Ans - | **Feature**            | **SQL Databases**                                             | **NoSQL Databases**                                                         |
| ---------------------- | ------------------------------------------------------------- | --------------------------------------------------------------------------- |
| **Full Form**          | Structured Query Language                                     | Not Only SQL                                                                |
| **Data Model**         | Relational (tables with rows & columns)                       | Non-relational (document, key-value, graph, or column)                      |
| **Schema**             | Fixed schema — predefined tables and fields                   | Dynamic schema — can store unstructured or semi-structured data             |
| **Scalability**        | Vertically scalable (increase server power)                   | Horizontally scalable (add more servers)                                    |
| **Query Language**     | SQL — standardized and powerful for joins and aggregations    | Varies by database (e.g., JSON-based queries in MongoDB)                    |
| **Data Relationships** | Strong support for relationships using JOINs and foreign keys | Relationships often handled within the application or via nested documents  |
| **Transactions**       | Follows ACID (Atomicity, Consistency, Isolation, Durability)  | Often follows BASE (Basically Available, Soft state, Eventually consistent) |
| **Examples**           | MySQL, PostgreSQL, Oracle, SQL Server                         | MongoDB, Cassandra, Redis, CouchDB, DynamoDB                                |
| **Use Cases**          | Banking systems, ERP, legacy enterprise applications          | Real-time analytics, big data, content management, IoT, mobile apps         |

# Summary:
# 1) SQL → Best for structured data and complex queries.
# 2) NoSQL → Best for unstructured or rapidly changing data and high scalability.

# Que 2. What makes MongoDB a good choice for modern applications ?
# Ans - MongoDB is a popular choice for modern applications because it’s designed to handle the flexibility, scalability, 
# and speed that new-age apps require. Here’s a breakdown of why developers prefer MongoDB:
# 1. Flexible Document Model (Schema-less Design) - 
# 	* MongoDB stores data in JSON-like documents (BSON format).
# 	* Unlike traditional SQL databases, you don’t need a fixed schema — you can store different fields for different records.
# 	* This flexibility is perfect for agile development and frequently changing requirements.
# 2. High Performance -
# 	* Supports fast read and write operations due to its in-memory computing capabilities.
# 	* Indexes and aggregation pipelines make querying efficient.
# 	* Ideal for real-time apps like chat systems, IoT dashboards, and analytics.
# 3. Scalability (Horizontal Scaling) -
# 	* MongoDB supports sharding, which allows you to distribute data across multiple servers.
# 	* This means it can handle massive amounts of data and traffic with ease.
# 4. Cloud-Native and Distributed - 
# 	* MongoDB Atlas (its cloud version) integrates easily with AWS, Azure, and GCP.
# 	* Automatic backups, monitoring, and scaling make it easy to manage large-scale deployments.
# 5. Powerful Query and Aggregation - 
# MongoDB offers a rich query language that can handle:
# 	* Filtering
# 	* Sorting
# 	* Joins (via $lookup)
# 	* Data transformations (using aggregation pipelines)
# You can do complex analytics without moving data to another system.
# 6. Support for Modern Data Types - 
# 	* Can store arrays, nested documents, and geospatial data.
# 	* Perfect for apps involving social networks, location-based services, and catalogs.
# 7. Developer-Friendly - 
# 	* Compatible with most programming languages (Python, JavaScript, Java, etc.)
# 	* Has strong community support and modern tools (like MongoDB Compass for GUI).
# 8. Security and Reliability - 
# 	* Built-in support for encryption, authentication, and access control.
# 	* Replica sets ensure high availability and automatic failover in case of server failure.
# In short:
# MongoDB is a great fit for modern applications that need speed, flexibility, scalability, 
# and ease of use — making it perfect for data-driven web, mobile, and IoT apps.

# Que 3. Explain the concept of collections in MongoDB.
# Ans - 
# 1. What is a Collection?
# * A collection stores documents (which are similar to rows in SQL).
# * Each document is stored in BSON (Binary JSON) format — meaning it can store rich data types like arrays, nested objects, etc.
# * Unlike SQL tables, collections don’t require a fixed schema, so each document can have a different structure.
# 2. Example:
# Let’s say you have a database called school.
# You might have collections like:
# 	* students
# 	* teachers
# 	* courses
# Example of a document in the students collection:
{
  "_id": 1,
  "name": "Rohit Sharma",
  "age": 21,
  "subjects": ["Math", "Science"],
  "address": {
    "city": "Pune",
    "pincode": 411001
  }
}

# You can also store another document with a slightly different structure:
{
  "_id": 2,
  "name": "Sneha Patil",
  "department": "Arts"
}

# Notice — MongoDB allows documents in the same collection to have different fields.
# 3. Creating a Collection
# You can explicitly create one:
db.createCollection("students")
# Or MongoDB can create it automatically when you first insert data:
db.students.insertOne({ name: "Rohit Sharma", age: 21 })
# 4. Key Features of Collections
# 	* Schema-less: Flexible document structure.
# 	* Dynamic: Automatically expands as new documents are added.
# 	* Indexed: _id is automatically indexed.
# 	* Efficient: Optimized for read/write operations at scale.

# Que 4. How does MongoDB ensure high availability using replication ?
# Ans - MongoDB ensures high availability using a feature called replication, which is implemented through replica sets.
# What is a Replica Set?
# A replica set in MongoDB is a group of servers (nodes) that maintain the same data set.
# It typically includes:
# 	* 1 Primary node 
#	* 2 or more Secondary nodes
# How Replication Works - 
# 1.Primary Node – Handles all write and read operations (by default).
# 2.Secondary Nodes – Continuously replicate data from the primary using an oplog (operations log).
# 	* The oplog records all changes made on the primary.
# 	* Secondary nodes apply those operations in the same order to stay synchronized.

# Ensuring High Availability - 
# If the primary node fails:
# 	* The remaining nodes automatically hold an election.
# 	* One of the secondary nodes is promoted to become the new primary.
# 	* The cluster continues operating with minimal downtime.
# This automatic failover ensures continuous service without manual intervention.
# Example:
# A typical setup:
Primary:  Handles writes and reads.
Secondary 1:  Syncs data from primary.
Secondary 2:  Syncs data from primary.

If Primary fails → Secondary 1 becomes new Primary automatically.

# Que 5. What are the main benefits of MongoDB Atlas ?
# Ans - MongoDB Atlas is MongoDB’s fully managed cloud database service — it takes care of deployment, scaling, 
# and maintenance so developers can focus on building applications instead of managing infrastructure.
# Here are the main benefits of MongoDB Atlas:
# 1. Fully Managed Cloud Service - 
# 	* MongoDB Atlas automates database operations like backups, monitoring, scaling, and patching.
# 	* No need to manually configure servers or handle updates — Atlas manages it all.
# 2. High Availability & Reliability - 
# 	* Built-in replica sets across multiple regions and zones ensure 99.995% uptime.
# 	* Automatic failover means if one node fails, another takes over instantly.
# 3. Automatic Scaling -
# 	* You can scale storage, memory, and clusters automatically based on workload.
# 	* Prevents performance bottlenecks and saves cost during low-usage periods.
# 4. Advanced Security - 
# 	* Provides end-to-end encryption, VPC peering, private endpoints, and role-based access control.
# 	* Compliance with standards like SOC 2, ISO 27001, GDPR, HIPAA, etc.
# 5. Global Distribution -
# 	* Deploy databases across multiple regions for low-latency access.
# 	* Supports data localization and multi-region clusters for better performance worldwide.
# 6. Performance Monitoring & Analytics -
# 	* The Atlas UI includes built-in performance metrics, query profiler, and real-time dashboards.
# 	* Helps identify and fix performance issues quickly.
# 7. Automated Backups & Point-in-Time Recovery - 
# 	* Continuous backups let you restore data to any specific point in time.
# 	* Protects data from accidental deletions or corruption.
# 8. Integration with Modern Tools - 
# 	* Works seamlessly with services like AWS, Azure, GCP, and BI tools.
# 	* Supports Atlas Data Lake, Atlas Search, and Atlas Vector Search for analytics and AI workloads.
# 9. Cost Efficiency - 
# 	* Pay-as-you-go pricing model — you only pay for the resources you use.
# 	* Atlas automatically optimizes usage to reduce unnecessary costs.
# 10. Developer-Friendly -
# 	* Same MongoDB query language (MQL) and drivers — no learning curve.
# 	* Easily integrates with application frameworks and CI/CD pipelines.

# Que 6. What is the role of indexes in MongoDB, and how do they improve performance ?
# Ans - In MongoDB, indexes play a crucial role in improving the speed and efficiency of data retrieval operations 
# — just like an index in a book helps you quickly find specific topics without reading every page.
# What is an Index in MongoDB?
# An index is a special data structure that stores a small portion of the collection’s data in an easy-to-search form.
# It keeps the values of one or more fields in a sorted order, making it much faster to locate documents that match a query condition.
# How Indexes Improve Performance - 
# 1. Faster Query Execution
# 	* Without indexes, MongoDB must scan every document in a collection (collection scan) to find matches.
# 	* With an index, MongoDB can directly look up the matching documents, reducing the number of documents scanned.
# 2. Efficient Sorting
# 	* If your query includes a sort() operation, MongoDB can use an index that matches the sort fields 
# 	  — avoiding the need for extra memory or time to sort results.
# 3. Improved Aggregation Speed
# 	* Aggregation pipelines (like $match, $group, $sort) benefit from indexes, especially when filters occur early in the pipeline.
# 4. Support for Uniqueness
# 	* Indexes can enforce unique constraints (like _id), ensuring that no two documents have the same value for a given field.

| Type                   | Description                                  | Example                   |
| ---------------------- | -------------------------------------------- | ------------------------- |
| **Single Field Index** | Indexes one field                            | `{ name: 1 }`             |
| **Compound Index**     | Indexes multiple fields                      | `{ name: 1, age: -1 }`    |
| **Multikey Index**     | For array fields                             | `{ tags: 1 }`             |
| **Text Index**         | Supports text search                         | `{ description: "text" }` |
| **Hashed Index**       | For sharding / hash-based queries            | `{ user_id: "hashed" }`   |
| **Wildcard Index**     | Indexes all fields in a document dynamically | `{ "$**": 1 }`            |

# Things to Remember - 
# 	* Indexes consume extra memory and disk space.
# 	* Too many indexes can slow down write operations (insert/update/delete) because MongoDB must also update the index each time.
# 	* Always analyze queries with explain() to ensure the right index is used.

# Example:
// Create an index on the "name" field
db.users.createIndex({ name: 1 });

// Query using the index
db.users.find({ name: "Chetan" });

# This will be much faster than scanning all documents.

# Que 7. Describe the stages of the MongoDB aggregation pipeline.
# Ans - In MongoDB, the aggregation pipeline is a powerful framework used to process and transform data within a collection 
# — similar to how SQL uses GROUP BY, JOIN, and WHERE clauses.
# The pipeline works as a series of stages, where each stage takes input from the previous one, performs an operation, 
# and passes the result to the next stage.

# Main Stages of the Aggregation Pipeline
# Here are the key stages (operators) commonly used:
| Stage          | Description                                                                         | Example                                                                                              |
| -------------- | ----------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| **$match**     | Filters documents based on specified conditions (like `WHERE` in SQL).              | `{ $match: { status: "active" } }`                                                                   |
| **$project**   | Selects specific fields, creates new computed fields, or reshapes documents.        | `{ $project: { name: 1, total: { $sum: "$amount" } } }`                                              |
| **$group**     | Groups documents by a field and performs aggregations (like `SUM`, `COUNT`, `AVG`). | `{ $group: { _id: "$category", totalSales: { $sum: "$amount" } } }`                                  |
| **$sort**      | Sorts documents by specified fields.                                                | `{ $sort: { totalSales: -1 } }`                                                                      |
| **$limit**     | Limits the number of documents passed to the next stage.                            | `{ $limit: 5 }`                                                                                      |
| **$skip**      | Skips a specified number of documents.                                              | `{ $skip: 10 }`                                                                                      |
| **$unwind**    | Deconstructs an array field into multiple documents (one per array element).        | `{ $unwind: "$items" }`                                                                              |
| **$lookup**    | Performs a left outer join with another collection.                                 | `{ $lookup: { from: "customers", localField: "cust_id", foreignField: "_id", as: "customerInfo" } }` |
| **$addFields** | Adds new fields or modifies existing ones.                                          | `{ $addFields: { totalPrice: { $multiply: ["$price", "$quantity"] } } }`                             |
| **$out**       | Writes the result of the pipeline to a new collection.                              | `{ $out: "summaryCollection" }`                                                                      |
| **$count**     | Returns the total number of documents in the pipeline.                              | `{ $count: "totalDocs" }`                                                                            |

# Typical Workflow Example - 
# Let’s say we want to find the top 3 products by total sales:
db.sales.aggregate([
  { $match: { status: "completed" } },
  { $group: { _id: "$product", totalSales: { $sum: "$amount" } } },
  { $sort: { totalSales: -1 } },
  { $limit: 3 }
])

# Explanation:
# 1. $match → Filters sales with status: "completed".
# 2. $group → Groups by product and sums total sales.
# 3. $sort → Sorts products in descending order.
# 4. $limit → Takes only top 3 results.

# Summary - 
# Each stage in the aggregation pipeline:
# 	* Processes input documents.
#   * Performs a specific transformation or computation.
# 	* Passes the output to the next stage.
# This makes MongoDB’s aggregation pipeline both modular and efficient for analytics and data transformation tasks.
 
# Que 8. What is sharding in MongoDB? How does it differ from replication ?
# Ans - What is Sharding in MongoDB?
# Sharding is a method used in MongoDB to distribute large data sets across multiple servers (called shards).
# Each shard holds a portion of the data, so the overall database can store and process more data than a single server could handle.
# Purpose:
# To scale horizontally — i.e., add more machines to handle more data and traffic.
# How it works:
# 	* MongoDB divides data into chunks based on a shard key (a specific field in your documents).
# 	* Each chunk is stored on a different shard (server).
# 	* A mongos router directs client queries to the correct shard(s).
# 	* A config server stores metadata about the cluster.

# Example:
# Suppose you have a collection of user data:
{ "_id": 1, "user_id": 101, "city": "Pune" }

# If you shard by city,
# → users from Pune may go to Shard A
# → users from Hyderabad may go to Shard B
# → users from Delhi may go to Shard C

# What is Replication in MongoDB?
# Replication means copying the same data across multiple servers to ensure high availability and fault tolerance.
# Purpose:
# To protect data and keep the database online if one server fails.
# How it works:
# 	* A replica set consists of:
# 		^ One primary node (handles writes)
# 		^ Multiple secondary nodes (copy data from primary)
# 	* If the primary fails, one of the secondaries automatically becomes the new primary.
# Example:
# If you have a single collection:
Primary: Server A
Secondary: Server B, Server C
# All three hold the same data, but only A handles write operations.

# Key Differences - 
| Feature               | **Sharding**                                | **Replication**                              |
| --------------------- | ------------------------------------------- | -------------------------------------------- |
| **Purpose**           | Scale out (handle more data)                | Ensure data availability                     |
| **Data Distribution** | Data is **split** across servers            | Data is **copied** across servers            |
| **Use Case**          | Very large databases, high read/write load  | High availability, backup, disaster recovery |
| **Scalability**       | Horizontal scaling (adds capacity)          | Vertical reliability (adds redundancy)       |
| **Components**        | Shard servers, config server, mongos router | Primary and secondary nodes                  |

# In short:
# 	* Replication = copies of same data (for reliability)
# 	* Sharding = splitting data (for scalability) 

# Que 9.  What is PyMongo, and why is it used ?
# Ans - PyMongo is the official Python driver for MongoDB.
# It allows Python programs to connect to a MongoDB database, perform CRUD operations (Create, Read, Update, Delete), 
# and manage collections and documents easily.
# What PyMongo Does -
# PyMongo provides all the tools you need to interact with MongoDB directly from Python.
# With it, you can:
# 	* Connect to a MongoDB server or cluster
# 	* Create and manage databases and collections
# 	* Insert, read, update, and delete documents
# 	* Run queries and aggregation pipelines
# 	* Handle authentication and indexing

# Why PyMongo Is Used - 
# Here are the main reasons developers use PyMongo:
# 	1. Official MongoDB Support – It’s maintained by MongoDB Inc., ensuring compatibility and updates.
#	2. Easy to Use – Integrates naturally with Python syntax and data types (like dict, list, etc.).
#	3. Direct Access – Lets you communicate directly with MongoDB without extra layers or ORMs.
# 	4. Flexible – Ideal for working with MongoDB’s dynamic schema (unlike SQL’s rigid tables).
# 	5. Scalable – Works well with large datasets and distributed MongoDB clusters.

# Example: Basic PyMongo Usage
# from pymongo import MongoClient

# Connect to local MongoDB
client = MongoClient("mongodb://localhost:27017/")

# Create or access a database
db = client["student_db"]

# Create or access a collection
collection = db["students"]

# Insert a document
student = {"name": "Chetan", "course": "Data Science", "score": 85}
collection.insert_one(student)

# Fetch documents
for doc in collection.find():
    print(doc)

# Que 10. What are the ACID properties in the context of MongoDB transactions ? 
# Ans - In the context of MongoDB transactions, ACID properties ensure that database operations are reliable, consistent, 
# and safe — even when something goes wrong (like a crash or power failure). 
# A – Atomicity - 
# 	* Meaning: All the operations in a transaction either complete successfully together or none of them are applied.
# 	* In MongoDB:
# 		^ If one operation in a multi-document transaction fails, the entire transaction is rolled back.
# 		^ MongoDB guarantees atomicity for:
# 			- Single-document writes (always atomic by default)
# 			- Multi-document transactions (since version 4.0)
# C – Consistency - 
# 	* Meaning: The database must always move from one valid state to another — no partial or corrupt data is written.
# 	* In MongoDB:
# 		^ MongoDB enforces schema rules (if defined) and ensures that all constraints and indexes remain valid after a transaction.
# 		^ The transaction commits only if all operations maintain data integrity.
# I – Isolation - 
# 	* Meaning: Transactions are isolated from each other — intermediate (uncommitted) changes are not visible to other transactions.
# 	* In MongoDB:
# 		^ MongoDB provides “read committed” isolation by default:
# 			- Other clients cannot see changes made inside a transaction until it commits.
# 		^ This ensures no dirty reads or partial updates are visible.
# D – Durability - 
# 	* Meaning: Once a transaction is committed, its changes are permanently stored — even if the system crashes right after.
# 	* In MongoDB:
# 		^ When a transaction commits, its data is written to the journal before acknowledging success.
# 		^ This ensures that committed data can be recovered after a crash.

# Summary Table - 
# | Property        | Meaning                              | MongoDB Implementation                |
| --------------- | ------------------------------------ | ------------------------------------- |
| **Atomicity**   | All-or-nothing                       | Single or multi-document transactions |
| **Consistency** | Data integrity maintained            | Schema rules, constraints, indexes    |
| **Isolation**   | No interference between transactions | Read-committed isolation              |
| **Durability**  | Changes survive crashes              | Journal writes ensure persistence     |

# Que 11.  What is the purpose of MongoDB’s explain() function ?
# Ans - In MongoDB, the explain() function is used to analyze and understand how a query is executed by the database engine.
# Purpose of explain() - 
# The main purpose is to show the query execution plan, i.e., how MongoDB searches for and retrieves documents. 
# This helps developers optimize queries for better performance.
# Key Uses -
# 1. Performance Analysis – Find out if your query is using indexes efficiently.
# 2. Query Optimization – Identify slow queries and improve them.
# 3. Execution Details – See how many documents are scanned, how many were returned, and the total time taken.

# Example:
db.users.find({ age: { $gt: 25 } }).explain("executionStats")

# Output Highlights:
# 	* queryPlanner: Shows how MongoDB plans to execute the query (which indexes it uses).
# 	* executionStats: Shows actual performance metrics (like number of documents scanned and time taken).
# 	* serverInfo: Shows the server version and details.
# Modes of explain():
# You can run explain() in three modes:
# 1. "queryPlanner" → Only shows the query plan.
# 2. "executionStats" → Includes performance metrics.
# 3. "allPlansExecution" → Shows all possible query plans tested by the optimizer.

# In short:
# The explain() function helps you understand and optimize MongoDB queries by showing how they are executed internally.

# Que 12.  How does MongoDB handle schema validation ?
# Ans - MongoDB is schema-less by default, meaning documents in the same collection can have different fields and structures.
# However, MongoDB also supports schema validation to enforce certain rules on the data.
# 1. Using JSON Schema
# MongoDB allows you to define a JSON Schema when creating or modifying a collection.
# This schema specifies:
# 	* Which fields must exist
# 	* Their data types
# 	* Allowed or restricted values
# 	* Nested structure rules
# Example:
db.createCollection("users", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["name", "age", "email"],
      properties: {
        name: {
          bsonType: "string",
          description: "must be a string and is required"
        },
        age: {
          bsonType: "int",
          minimum: 18,
          description: "must be an integer >= 18"
        },
        email: {
          bsonType: "string",
          pattern: "^.+@.+$",
          description: "must be a valid email address"
        }
      }
    }
  },
  validationLevel: "strict",    // Enforce validation on all documents
  validationAction: "error"     // Reject invalid documents
});

# 2. Validation Levels
# 	* strict → Validation is enforced on all inserts and updates.
# 	* moderate → Validation applies only to documents that already have the fields being modified.
# 3. Validation Actions
# 	* error → Reject documents that don’t match the schema.
# 	* warn → Allow invalid documents but log a warning.
# 4. Modify Validation on Existing Collection
# You can update schema validation using:

db.runCommand({
  collMod: "users",
  validator: { $jsonSchema: { ... } },
  validationLevel: "strict",
  validationAction: "error"
});

# Summary - 
| Feature              | Description                                                |
| -------------------- | ---------------------------------------------------------- |
| **Schema optional**  | MongoDB allows flexible documents                          |
| **JSON Schema**      | Used to enforce structure and data type rules              |
| **validationLevel**  | Controls how strictly validation applies                   |
| **validationAction** | Determines whether invalid data is rejected or just warned |

# Que 13. What is the difference between a primary and a secondary node in a replica set?
# Ans - In MongoDB replica sets, the primary and secondary nodes have different roles that ensure data redundancy, 
# high availability, and fault tolerance.
# Primary Node - 
# 	* Role: The primary node is the main server that handles all write operations (insert, update, delete).
# 	* Data Flow: All writes go to the primary first, and then the data is replicated (copied) to the secondary nodes.
# 	* Reads: By default, clients also read from the primary (unless you configure read preference differently).
# 	* Election: There can be only one primary in a replica set at any time. 
#     If the primary fails, a new one is automatically elected from the secondaries.
# Secondary Node - 
# 	* Role: Secondary nodes replicate data from the primary node’s oplog (operations log).
# 	* Data Flow: They continuously copy and apply changes from the primary to stay in sync.
# 	* Reads: By default, they do not handle read operations — but you can allow read preference = secondary for read scaling or 
#     backup purposes.
# 	* Failover: If the primary node goes down, a secondary can become the new primary through an automatic election.
# Summary Table - 
| Feature             | Primary Node     | Secondary Node                  |
| ------------------- | ---------------- | ------------------------------- |
| **Writes**          | Accepts writes   | Replicates writes from primary  |
| **Reads (default)** | Allowed          | Not allowed (unless configured) |
| **Count**           | Only one         | One or more                     |
| **Purpose**         | Main data source | Backup and failover             |
| **Promotion**       | Already primary  | Can become primary if elected   |

# Que 14. What security mechanisms does MongoDB provide for data protection ?
# Ans - MongoDB provides multiple security mechanisms to protect data — both at rest (stored data) 
# 		and in transit (data being transmitted).
# 1. Authentication
# MongoDB supports various methods to verify the identity of users and applications connecting to the database:
# 	* SCRAM (Salted Challenge Response Authentication Mechanism) – Default username-password authentication.
# 	* x.509 Certificates – Used for mutual SSL authentication.
# 	* LDAP (Lightweight Directory Access Protocol) – Integrates with corporate directories.
# 	* Kerberos Authentication – For enterprise-level secure authentication.
# 2. Authorization
# After authentication, authorization controls what authenticated users can do:
# 	* Role-Based Access Control (RBAC) allows assigning specific roles with defined privileges.
# 	* Built-in roles like read, readWrite, dbAdmin, or custom roles can be created.
# 	* Ensures users can only perform operations they’re permitted to.
# 3. Encryption
# a. Encryption in Transit
# 	* MongoDB supports TLS/SSL to encrypt data transmitted between clients and the database server.
# 	* Prevents eavesdropping and man-in-the-middle attacks.
# b. Encryption at Rest
# 	* MongoDB Enterprise Edition includes Encrypted Storage Engine, which encrypts all data files on disk.
# 	* Uses AES-256 encryption for strong protection.
# 	* Integrates with Key Management Interoperability Protocol (KMIP) servers for secure key management.
# 4. Auditing
# 	* MongoDB Enterprise supports auditing, which logs all database activities (e.g., authentication attempts, configuration changes, 
#     CRUD operations).
# 	* Helps meet compliance requirements (GDPR, HIPAA, etc.).
# 5. Network Security
# 	* MongoDB can be configured to bind to specific IP addresses only.
# 	* Firewall rules and VPC peering can restrict access to trusted networks.
# 	* Supports internal authentication for communication between replica set or sharded cluster members.
# 6. Field-Level and Queryable Encryption
# 	* Client-side Field-Level Encryption (FLE): Sensitive data (like credit card numbers) is encrypted on the 
# 	  client before being sent to the database.
# 	* MongoDB never sees the plaintext data or the encryption keys.
# 	* Queryable Encryption allows searching encrypted data securely without decrypting it on the server.
# 7. Security Best Practices
# 	* Enable authentication and TLS/SSL by default.
# 	* Use least privilege access.
# 	* Keep MongoDB behind a firewall, not exposed to the public internet.
# 	* Regularly update MongoDB to patch vulnerabilities.
# In summary:
# MongoDB’s security mechanisms include Authentication, Authorization, Encryption (at rest and in transit), 
# Auditing, Network isolation, and Field-level encryption — all designed to protect sensitive data comprehensively.

# Que 15. Explain the concept of embedded documents and when they should be used.
# Ans - In MongoDB, an embedded document (also called a subdocument) is a document stored inside another document — essentially, 
#       it’s a nested structure.
# MongoDB stores data in BSON (Binary JSON) format, which supports complex types such as arrays and objects 
# (documents within documents). This allows related data to be stored together in a single document, rather 
# than splitting it across multiple collections like in relational databases.
# Example:
# Here’s a document with an embedded document:
{
  "_id": 1,
  "name": "Chetan Nagpure",
  "email": "chetan@example.com",
  "address": {
    "street": "123 MG Road",
    "city": "Pune",
    "pincode": "411001"
  }
}

# In this example, address is an embedded document inside the main document.

# When to Use Embedded Documents
# Use embedded documents when:
# 1. Data is closely related and always accessed together.
# 	* Example: A user’s profile and their address, or an order and its line items.
# 2. One-to-few relationship between entities.
# 	* Example: A blog post with a few comments.
# 	* Each post document can store comments as an array of embedded documents.
# 3. You want to avoid joins for better performance.
# 	* MongoDB does not require joins like SQL; embedding helps retrieve all data in a single query.
# 4. Atomic updates are needed.
# 	* All data inside a document is updated atomically (in a single operation).

# When NOT to Use Embedded Documents - 
# Avoid embedding when:
# 1. One-to-many or many-to-many relationships (data grows large or unbounded).
# 	* Example: A product with thousands of reviews — embedding all reviews would make the document too large.
# 2. Frequent independent updates to subdocuments.
# 	* Frequent independent updates to subdocuments.
# 3. Document size may exceed MongoDB’s 16 MB limit.

# Alternative: Referencing - 
# Instead of embedding, you can reference related documents using ObjectIDs:
{
  "_id": 1,
  "name": "Chetan Nagpure",
  "address_id": ObjectId("6629abc12345")
}

# And then store the address in a separate collection.
# Summary - 
| Approach        | When to Use                                           | Example                   |
| --------------- | ----------------------------------------------------- | ------------------------- |
| **Embedding**   | Data is tightly related, small, and accessed together | User with address         |
| **Referencing** | Data is large, independent, or reused                 | Product with many reviews |

# Que 16. What is the purpose of MongoDB’s $lookup stage in aggregation ?
# Ans - The $lookup stage in MongoDB’s aggregation pipeline is used to perform a left outer join between two collections. 
#       Essentially, it allows you to combine documents from two collections based on a specified field, similar to SQL joins.
# Here’s the main purpose and details:
# Purpose of $lookup:
# 	* To enrich documents from one collection with related documents from another collection.
# 	* To perform joins across collections in MongoDB without denormalizing data.
# 	* To combine and query related data in a single aggregation pipeline.
# Basic Syntax:
db.orders.aggregate([
  {
    $lookup: {
      from: "products",        // The collection to join with
      localField: "product_id",// Field from the input collection (orders)
      foreignField: "_id",     // Field from the "from" collection (products)
      as: "product_details"    // Name of the new array field to add
    }
  }
])

# How It Works:
# 1. MongoDB takes each document from the input collection (orders in the example).
# 2. Matches the value of localField (product_id) with foreignField (_id) in the "from" collection (products).
# 3. Adds an array field (product_details) to the input document containing all matching documents.
# 4. If there’s no match, the array will be empty.
# Example Result:
# orders collection:
{ "_id": 1, "product_id": 101, "quantity": 2 }
# products collection:
{ "_id": 101, "name": "Laptop", "price": 50000 }
# After $lookup:
{
  "_id": 1,
  "product_id": 101,
  "quantity": 2,
  "product_details": [
    { "_id": 101, "name": "Laptop", "price": 50000 }
  ]
}
# Key Points:
# 	* $lookup always outputs an array of matching documents, even if there’s only one match.
# 	* Supports more advanced usage with pipeline-based lookups for filtering or reshaping joined data.
# 	* Very useful for denormalizing data on the fly without storing redundant information.

# Que 17. What are some common use cases for MongoDB ?
# Ans - MongoDB is a NoSQL, document-oriented database that’s particularly strong for applications that need flexible schemas, 
#       high scalability, and fast performance. Here are some common use cases:
# 1. Content Management Systems (CMS)
# 	* Websites, blogs, or apps that handle a wide variety of content types.
# 	* Example: Storing articles, videos, images, and metadata together in a flexible JSON-like structure.
# 2. Real-Time Analytics
# 	* Applications that need to process large volumes of data quickly.
# 	* Example: Tracking user behavior on websites, e-commerce analytics, or IoT sensor data.
# 3. Internet of Things (IoT)
# 	* Devices generating a high volume of structured and unstructured data.
# 	* MongoDB can handle time-series data efficiently.
# 	* Example: Smart home devices, industrial sensors.
# 4. E-commerce & Retail
# 	* Catalogs, inventory management, and customer profiles that change frequently.
# 	* Example: Product catalogs with varying attributes like size, color, ratings, and reviews.
# 5. Mobile Applications
# 	* Apps that require offline-first support or dynamic data structures.
# 	* Example: Social media apps storing user posts, likes, comments, and media files.
# 6. Real-Time Personalization
# 	* Dynamic recommendation engines and personalization systems.
# 	* Example: Movie or music recommendations based on user preferences and history.
# 7. Big Data & Data Lakes
# 	* MongoDB integrates well with big data platforms and can act as a storage layer for semi-structured data.
# 	* Example: Collecting logs, clickstream data, or JSON event data for analytics.
# 8. Catalogs & Inventory Management
# 	* Businesses needing to handle products with different attributes.
# 	* MongoDB’s flexible schema allows adding new fields without restructuring the database.
# 9. Gaming
# 	* Storing player profiles, game states, leaderboards, and session data.
# 	* Supports high-speed read/write operations and scaling.
# 10. Fraud Detection & Risk Analysis
# 	* Storing complex financial or transactional data for pattern recognition. 
# 	* Example: Credit card fraud monitoring or banking risk management.
# Key Strengths for these use cases:
# 	* Schema flexibility (can handle varied or changing data structures)
# 	* Horizontal scalability (sharding across multiple servers)
# 	* High-performance reads and writes
# 	* Built-in replication for high availability

# Que 18. What are the advantages of using MongoDB for horizontal scaling ?
# Ans - MongoDB is widely used for horizontal scaling because it was designed with a distributed architecture in mind. 
#       Here are the main advantages:
# 1. Sharding for Horizontal Scaling
# 	* MongoDB uses sharding to distribute data across multiple servers (shards).
# 	* Each shard contains a subset of the data, allowing the database to scale out instead of just scaling up.
# 	* This means you can add more servers as your data grows, improving storage and performance without downtime.
# 2. Automatic Data Distribution
# 	* MongoDB automatically distributes data across shards based on a shard key.
# 	* The database handles routing queries to the correct shard, making horizontal scaling transparent to applications.
# 3. High Availability
# 	* Sharding is often combined with replica sets, where each shard has multiple copies.
# 	* This provides failover and ensures that the system remains available even if one server goes down.
# 4. Elastic Scalability
# 	* You can add or remove shards dynamically as your workload changes.
# 	* This allows elastic scaling to handle sudden spikes in traffic or growing datasets without significant reconfiguration.
# 5. Improved Read and Write Performance
# 	* By distributing data across multiple shards:
# 		^ Writes can go to the appropriate shard, reducing write contention.
# 		^ Reads can be served from multiple shards, especially if replica sets are used, improving read throughput.
# 6. No Downtime for Scaling
# 	* Adding new shards typically does not require taking the database offline.
# 	* MongoDB can migrate data to new shards in the background, enabling continuous operation.
# 7. Flexible Schema Supports Scaling
# 	* MongoDB’s schema-less nature allows different shards to store different document structures.
# 	* This is helpful in large-scale applications where the data model might evolve over time without impacting scaling.
# Summary:
# MongoDB’s horizontal scaling advantages come from sharding, automatic data distribution, high availability, elastic scaling, 
# and improved performance. Together, these features make it a strong choice for large, distributed applications.

# Que 19. How do MongoDB transactions differ from SQL transactions ?
# # Ans - MongoDB transactions and SQL (relational database) transactions both aim to ensure data consistency and integrity, 
#         but there are some key differences due to their underlying database models. Let’s break it down:
# 1. Underlying Model
# SQL (RDBMS) Transactions:
# Works on tables with structured schemas. Transactions often involve multiple tables and rows, and rely on ACID properties 
# (Atomicity, Consistency, Isolation, Durability).
# MongoDB Transactions:
# Works on documents in collections, which are schema-less or flexible-schema. Originally, MongoDB supported atomic operations 
# only at the document level. Full multi-document transactions were introduced in MongoDB 4.0 for replica sets, and in 4.2 for sharded clusters.
# 2. ACID Support
# 	* SQL: ACID support is native and always enabled. Any transaction automatically ensures full ACID guarantees.
# 	* MongoDB:
# 		^ Single-document operations are always atomic.
# 		^ Multi-document transactions provide ACID guarantees, but they are optional and can have a performance cost.
# 3. Scope of Transactions
# 	* SQL: Transactions can easily span multiple tables and rows.
# 	* MongoDB: Initially only atomic at document-level. Multi-document transactions are now supported, but less efficient than 
#     in relational databases because they need to maintain locks across multiple documents/collections.
# 4. Syntax
# 	* SQL Example:
BEGIN TRANSACTION;
UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 2;
COMMIT;

# MongoDB Example (Node.js using session):
const session = client.startSession();
session.startTransaction();
try {
    await accounts.updateOne({ _id: 1 }, { $inc: { balance: -100 } }, { session });
    await accounts.updateOne({ _id: 2 }, { $inc: { balance: 100 } }, { session });
    await session.commitTransaction();
} catch (err) {
    await session.abortTransaction();
} finally {
    session.endSession();
}
 
# Notice the explicit session handling in MongoDB for multi-document transactions.
# 5. Performance
# 	* SQL: Transactions are generally fast and optimized because RDBMS engines are built for complex joins and transactions.
# 	* MongoDB: Multi-document transactions are heavier and can impact performance, so MongoDB encourages designing data models 
# 	  to minimize the need for multi-document transactions (e.g., embedding documents).
# 6. Use Cases
# 	* SQL: Banking systems, ERP, and any application requiring complex multi-table consistency.
#	* MongoDB: Web apps, real-time analytics, or flexible-schema applications. Multi-document transactions are used when 
# 	  data consistency across multiple collections is critical, but most apps rely on document-level atomicity instead.
# Summary Table -
| Feature          | SQL Transactions              | MongoDB Transactions                                |
| ---------------- | ----------------------------- | --------------------------------------------------- |
| ACID support     | Full, always                  | Full only for multi-document transactions           |
| Atomicity        | Multi-row/table               | Single-document by default, multi-document optional |
| Schema           | Fixed                         | Flexible                                            |
| Syntax           | Native, simple                | Requires sessions for multi-document                |
| Performance      | Optimized for complex queries | Multi-doc transactions slower                       |
| Typical use case | Banking, ERP                  | Web apps, analytics, flexible schemas               |

# Que 20. What are the main differences between capped collections and regular collections ?
# Ans - Here’s a clear comparison between capped collections and regular collections in MongoDB:
| Feature            | Capped Collections                                                                                                        | Regular Collections                                                                                      |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| **Storage**        | Fixed size (predefined maximum size in bytes). When full, old documents are automatically overwritten in insertion order. | Dynamic size. Can grow as needed. Documents are never automatically removed.                             |
| **Document Order** | Documents are stored in **insertion order**. Queries using natural order are very fast.                                   | No guaranteed insertion order. Natural order may vary due to updates or deletions.                       |
| **Updates**        | Cannot grow a document beyond its original allocated size. Updates that increase document size may fail.                  | Documents can be updated freely; no size restriction per update.                                         |
| **Deletion**       | No manual deletion needed; old documents are automatically removed when the collection reaches its size limit.            | Manual deletion or TTL indexes needed to remove documents.                                               |
| **Performance**    | High-performance for **insert-heavy workloads** because of preallocated space and fixed size.                             | Normal performance; may be slower for high-volume insert workloads as it can fragment storage over time. |
| **Use Cases**      | Ideal for **logs, caches, real-time analytics**, or **circular buffers**.                                                 | General-purpose storage for **persistent, flexible, and large datasets**.                                |
| **Indexes**        | Supports indexes, but capped collections are limited in terms of certain index operations.                                | Full index support without limitations.                                                                  |

# Key Takeaway:
# Capped collections are like a ring buffer: fixed size, fast inserts, automatic overwriting. 
# Regular collections are flexible and persistent, but may require manual cleanup and careful indexing for performance.

# Que 21. What is the purpose of the $match stage in MongoDB’s aggregation pipeline ?
# Ans - The $match stage in MongoDB’s aggregation pipeline is used to filter documents based on specified criteria, 
#       similar to a WHERE clause in SQL. Its primary purpose is to select only the documents that meet certain conditions  
#       and pass them to the next stage in the pipeline.
# Key Points:
# 1. Filtering:
# $match allows you to filter documents using query operators like $eq, $gt, $lt, $in, $regex, etc.
# 2. Efficiency:
# Placing a $match early in the pipeline can improve performance, especially if it can use an index, because it 
# reduces the number of documents processed in later stages.
# 3. Syntax Example:
# db.orders.aggregate([
  {
    $match: { status: "shipped", totalAmount: { $gt: 100 } }
  }
])
# This will pass only the orders where status is "shipped" and totalAmount is greater than 100 to the next stage of the pipeline.
# 4. Usage in Combination:
# $match is often combined with other stages like $group, $project, or $sort to perform complex data aggregation.
# In short: 
# $match filters documents to reduce the dataset before further aggregation.

# Que 22.  How can you secure access to a MongoDB database ?
# Ans - Securing access to a MongoDB database is critical to protect sensitive data and prevent unauthorized access. 
#       Here’s a comprehensive breakdown of the main approaches you can take:
# 1. Enable Authentication
# By default, MongoDB may allow connections without authentication (depending on version and setup). Always enable authentication.
# 	* Create administrative and user accounts with roles that have minimum required privileges.
# 	* Example (MongoDB shell):
use admin
db.createUser({
  user: "admin",
  pwd: "StrongPassword123!",
  roles: [{ role: "userAdminAnyDatabase", db: "admin" }]
})
# Then require authentication in mongod.conf:
security:
  authorization: enabled
# 2. Use Role-Based Access Control (RBAC)
# 	* Assign users roles with least privilege. MongoDB provides built-in roles like read, readWrite, dbAdmin, etc.
# 	* Example:
use myDatabase
db.createUser({
  user: "appUser",
  pwd: "AppUserPass!",
  roles: [{ role: "readWrite", db: "myDatabase" }]
})
# 3. Enable Network Security
# 	* Bind IP addresses: Restrict MongoDB to listen only on trusted IPs.
net:
  bindIp: 127.0.0.1,192.168.1.100
  port: 27017
# Firewall rules: Only allow specific IPs or subnets to access the MongoDB port.
# 4. Use TLS/SSL Encryption
# 	* Encrypt data in transit between clients and servers.
# 	* Example configuration in mongod.conf:
# net:
  tls:
    mode: requireTLS
    certificateKeyFile: /etc/ssl/mongodb.pem
# 5. Encrypt Data at Rest
# 	* Use MongoDB’s Encrypted Storage Engine or file system encryption to protect data on disk.
# 	* Example (for WiredTiger storage engine):
security:
  enableEncryption: true
  encryptionKeyFile: /path/to/keyfile
# 6. Enable Auditing
# 	* Track operations for security monitoring.
auditLog:
  destination: file
  path: /var/log/mongodb/audit.log
# 7. Use Strong Passwords and Key Management
# 	* Avoid default or weak passwords.
# 	* Rotate passwords and encryption keys periodically.
# 8. Avoid Exposing MongoDB Directly to the Internet
# 	* Use a VPN or SSH tunnel for remote connections.
# 	* Consider deploying behind a reverse proxy.
# 9. Regular Updates and Patching
# 	* Keep MongoDB updated to the latest stable version to avoid known vulnerabilities.
# 10. Monitor Logs and Set Alerts
# 	* Track failed login attempts, unauthorized access, or unusual query patterns.
# Summary:
# The key is authentication + RBAC + network restrictions + encryption. Combining these ensures that only authorized users 
# can access your database, and the data is protected both in transit and at rest.

# Que 23. What is MongoDB’s WiredTiger storage engine, and why is it important ?
# Ans - MongoDB’s WiredTiger storage engine is the default storage engine used by MongoDB (since version 3.2) 
#       and is responsible for how data is stored, retrieved, and managed on disk. Let me break it down clearly:
# 1. What WiredTiger is
# 	* A storage engine is the component of a database that handles reading, writing, and storing data on disk.
# 	* WiredTiger replaced the older MMAPv1 engine in MongoDB and brings modern storage techniques for better performance and efficiency.
# 2. Key Features of WiredTiger
# 	* Document-Level Concurrency
# 		- WiredTiger allows multiple operations to occur simultaneously on different documents.
# 		- Earlier engines like MMAPv1 used collection-level locking, which slowed down concurrent writes.
# 	* Compression
# 		- Supports data compression (Snappy or zlib) to reduce disk space usage.
# 		- This makes MongoDB more storage-efficient.
# 	* Checkpointing
# 		- Periodically saves the current state to disk, reducing data loss risk.
# 	* Cache Management
# 		- Uses a configurable in-memory cache to speed up reads/writes.
# 	* Journaling
# 		- Ensures durability by keeping a journal of operations so that data can be recovered in case of a crash.
# 3. Why WiredTiger is Important
# 	* Performance: Document-level locking allows higher throughput for reads/writes.
# 	* Storage Efficiency: Compression saves disk space and reduces I/O.
# 	* Reliability: Journaling and checkpointing improve data durability.
# 	* Scalability: Handles high-concurrency workloads better than MMAPv1.
# Summary:
# WiredTiger makes MongoDB faster, more efficient, and reliable, especially for applications with heavy read/write workloads. 
# Without it, MongoDB would struggle with high concurrency and large datasets.

# Practical Assignment

use superstore_db;

# Que 1.  Write a Python script to load the Superstore dataset from a CSV file into MongoDB.
# Ans - 

# Python Script: Load Superstore CSV to MongoDB
import pandas as pd
from pymongo import MongoClient

# === Step 1: Load the CSV file ===
file_path = "superstore.csv"   # Change path if needed
df = pd.read_csv(file_path)

# === Step 2: Connect to MongoDB ===
# Update connection string if using MongoDB Atlas
client = MongoClient("mongodb://localhost:27017/")  
db = client["SuperstoreDB"]         # Database name
collection = db["SalesData"]        # Collection name

# === Step 3: Convert DataFrame to Dictionary and Insert ===
data = df.to_dict(orient="records")  # Convert rows to JSON-like dicts
collection.insert_many(data)

print(f"✅ Successfully inserted {len(data)} records into MongoDB collection '{collection.name}'")

# Setup Instructions - 
# 1. Make sure you have MongoDB running locally or on Atlas.
# 2. Install required libraries if not installed:
pip install pandas pymongo
# 3. Save this code in a file like load_superstore_to_mongo.py.
# 4. Run it in your terminal:
python load_superstore_to_mongo.py

# Que 2. Retrieve and print all documents from the Orders collection.
# Ans - Here’s how you can retrieve and print all documents from the Orders collection in MongoDB using Python

# Python Script: Retrieve All Documents from Orders Collection
from pymongo import MongoClient

# === Step 1: Connect to MongoDB ===
client = MongoClient("mongodb://localhost:27017/")  # Change if using MongoDB Atlas
db = client["SuperstoreDB"]          # Database name
collection = db["Orders"]            # Collection name

# === Step 2: Retrieve All Documents ===
documents = collection.find()        # Returns a cursor

# === Step 3: Print Each Document ===
for doc in documents:
    print(doc)

# Notes:
# 	* If you used the earlier script where the collection name was SalesData, replace:
collection = db["Orders"]
# with:
collection = db["SalesData"]
# 	* To make the output more readable, you can pretty-print the results:
import pprint
pprint.pprint(doc)

# Que 3. Count and display the total number of documents in the Orders collection.
# Ans - 
# Mongo Shell / MongoDB Compass:
db.Orders.countDocuments();
# or (older method):
db.Orders.count();

# Python (using PyMongo):
# If you’re using Python, here’s the script:
from pymongo import MongoClient

# Connect to MongoDB
client = MongoClient("mongodb://localhost:27017/")

# Select the database and collection
db = client["SuperstoreDB"]
orders_collection = db["Orders"]

# Count documents
count = orders_collection.count_documents({})
print("Total number of documents in Orders collection:", count)

# Que 4.  Write a query to fetch all orders from the "West" region.
# Ans - To fetch all orders from the "West" region in MongoDB, here’s the query you can use
# MongoDB Shell / Compass Query
db.Orders.find({ Region: "West" });
# This will return all documents (orders) where the field Region is "West".

# Python (using PyMongo)
# If you’re querying from a Python script:
from pymongo import MongoClient

# Connect to MongoDB
client = MongoClient("mongodb://localhost:27017/")

# Select the database and collection
db = client["SuperstoreDB"]
orders_collection = db["Orders"]

# Fetch all orders from the West region
west_orders = orders_collection.find({"Region": "West"})

# Display results
for order in west_orders:
    print(order)

# Que 5. Write a query to find orders where Sales is greater than 500.
# Ans - Here’s how you can find all orders where the Sales value is greater than 500
# MongoDB Shell / Compass Query
db.Orders.find({ Sales: { $gt: 500 } });

# Explanation:
# 	* Sales → field name in your collection
# 	* $gt → MongoDB operator meaning “greater than”
# 	* 500 → value threshold
# This query returns all documents where the Sales field value is greater than 500.

# Python (using PyMongo)
# If you’re running it from Python:
from pymongo import MongoClient

# Connect to MongoDB
client = MongoClient("mongodb://localhost:27017/")

# Select the database and collection
db = client["SuperstoreDB"]
orders_collection = db["Orders"]

# Find orders where Sales > 500
high_sales_orders = orders_collection.find({"Sales": {"$gt": 500}})

# Display the results
for order in high_sales_orders:
    print(order)

# Que 6. Fetch the top 3 orders with the highest Profit.
# Ans - Here’s how you can fetch the top 3 orders with the highest Profit
# MongoDB Shell / Compass Query
db.Orders.find().sort({ Profit: -1 }).limit(3);

# Explanation:
# 	* .find() → fetches all documents
# 	* .sort({ Profit: -1 }) → sorts by Profit in descending order (-1 = highest first)
# 	* .limit(3) → returns only the top 3 results

# Python (using PyMongo)
from pymongo import MongoClient

# Connect to MongoDB
client = MongoClient("mongodb://localhost:27017/")

# Select the database and collection
db = client["SuperstoreDB"]
orders_collection = db["Orders"]

# Fetch top 3 orders with highest Profit
top_orders = orders_collection.find().sort("Profit", -1).limit(3)

# Display results
for order in top_orders:
    print(order)

# Que 7. Update all orders with Ship Mode as "First Class" to "Premium Class."
# Ans - Here’s how you can do it in both Python (using pandas) and SQL, depending on your setup:
# Python (pandas) Method
import pandas as pd

# Load the CSV file
df = pd.read_csv("superstore.csv")

# Update "Ship Mode" values
df.loc[df["Ship Mode"] == "First Class", "Ship Mode"] = "Premium Class"

# Save the updated file (optional)
df.to_csv("superstore_updated.csv", index=False)

print("Updated all 'First Class' to 'Premium Class' successfully.")

# This code:
# 	* Reads your CSV into a DataFrame
# 	* Finds rows where "Ship Mode" = "First Class"
# 	* Replaces them with "Premium Class"
# 	* Saves the modified file

# SQL Method
# If your data is stored in a SQL table named orders:
UPDATE orders
SET Ship_Mode = 'Premium Class'
WHERE Ship_Mode = 'First Class';
# This command updates all matching rows in the database.

# Que 8.  Delete all orders where Sales is less than 50.
# Ans - Here’s how you can delete all orders where Sales < 50, in both Python (pandas) and SQL
# Python (pandas) Method
import pandas as pd

# Load the CSV file
df = pd.read_csv("superstore.csv")

# Delete (filter out) rows where Sales < 50
df = df[df["Sales"] >= 50]

# Save the updated file (optional)
df.to_csv("superstore_updated.csv", index=False)

print("Deleted all orders where Sales < 50 successfully.")

# Explanation:
# 	* Reads the CSV into a DataFrame
# 	* Keeps only rows where Sales ≥ 50
# 	* Writes the updated data to a new file

# SQL Method
# If your data is in a SQL table named orders:
DELETE FROM orders
WHERE Sales < 50;
# This removes all rows where the Sales value is less than 50.

# Que 9.  Use aggregation to group orders by Region and calculate total sales per region.
# Ans - Here’s how you can group orders by Region and calculate total sales per region using both Python (pandas) and SQL
# Python (pandas) Method
import pandas as pd

# Load the CSV file
df = pd.read_csv("superstore.csv")

# Group by Region and calculate total Sales
region_sales = df.groupby("Region")["Sales"].sum().reset_index()

# Rename columns for clarity (optional)
region_sales.columns = ["Region", "Total Sales"]

print(region_sales)

# This will output something like:
      Region      Total Sales
0  Central        125678.45
1  East           145987.12
2  South          118763.90
3  West           167543.25

# SQL Method
# If your table is named orders:
SELECT Region, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region;
# This query returns each Region with the total Sales in that region.

# Que 10. Fetch all distinct values for Ship Mode from the collection.
# Ans - Here’s how you can fetch all distinct Ship Mode values using both Python (pandas) and SQL
# Python (pandas) Method
import pandas as pd

# Load the CSV file
df = pd.read_csv("superstore.csv")

# Get distinct Ship Mode values
distinct_ship_modes = df["Ship Mode"].unique()

print(distinct_ship_modes)

# Output Example:
['Second Class' 'Standard Class' 'Premium Class' 'Same Day']

# SQL Method
# If your table name is orders:
SELECT DISTINCT Ship_Mode
FROM orders;
# This will return one row for each unique shipping mode in your data.

# Que 11. Count the number of orders for each category.
# Ans - Here’s how you can count the number of orders for each Category using both Python (pandas) and SQL
# Python (pandas) Method
import pandas as pd

# Load the CSV file
df = pd.read_csv("superstore.csv")

# Count number of orders for each Category
category_counts = df["Category"].value_counts().reset_index()

# Rename columns for clarity (optional)
category_counts.columns = ["Category", "Number of Orders"]

print(category_counts)

# Example output:
      Category      Number of Orders
0  Office Supplies        6026
1  Furniture              2121
2  Technology             1813

# SQL Method
# If your table is named orders:
SELECT Category, COUNT(*) AS Number_of_Orders
FROM orders
GROUP BY Category;
# This query returns each Category and the total number of orders in that category.



