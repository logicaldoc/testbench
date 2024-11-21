LogicalDOC Benchmark is a tool to load and test LogicalDOC performances on a single-server environment or on a Cluster.

You have to configure the tool by editing the file conf/context.properties

To launch the tests, make sure to have Java installed and do as follows:

Windows:
C> load.bat

Linux:
#> load.sh


Notes:
#01 put some files in folder /docs because that is where the tool pick files to feed LogicalDOC
    (otherwise change the docs path in context.properties). No directories there, just files.
	
#02 by default only the Upload loader is enabled, if you want to enable the others change the value of key loaders in conf/context.properties
e.g: loaders=Upload,RandomUpload,ListFolders,Search,Update

#03 for each loader you can specify of many parallel workers to run concurrently, just specify the number of concurrent threads in conf/context.properties
e.g: Update.threads=2
	
	
Performance notes:	
#01 the size of the files and the speed of network will have an impact in the tests
    to evaluate the speed performance of the server it is suggested to use files < 1MB
#02 the CPU speed/disk speed/network speed of the LogicalDOC server will have an impact in the tests
#03 By default LogicalDOC performs a number of background activities on documents, for example digest calculation, indexing and tags processing. 
	You can disable all of these by settings the runlevel of your LD instance to Bulkload. 
	Administration, System, General, tab Run level, then select the Bulkload leve from the drop-down and click Save.
#04 You can use 2 or more PC to load into the same LD system
#05 You can use the benchmark tool to test performance of a LogicalDOC cluster.
	you can do this in 2 ways, either by editing the load configuration file and specifying in the session.url property a list with the addresses of the node URLs of the LogicalDOC cluster,
	or by using 2 loading nodes (PC) where each node that runs the benchmark loads on a different node of the LogicalDOC cluster.	
	