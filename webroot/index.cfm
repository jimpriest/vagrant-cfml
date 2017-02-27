<!--- Test file to check Lucee and database is up and running --->

<cfscript>
	qAllArtists = queryExecute(
		"
			SELECT artistid, firstname, lastname, address, city, state, postalcode, email, phone, fax
			FROM artists
		",
		{},
		{ datasource = "cfartgallery" }
	);

	dump( qAllArtists );
	dump( cgi );
	dump( client );
	dump( server );
</cfscript>
