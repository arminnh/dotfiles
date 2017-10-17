prompt = function() {
	if (typeof db === undefined) {
		return 'no db > ';
	}

	return db + ' > ';
};

function getReadableFileSizeString(fileSizeInBytes) {

    var i = -1;
    var byteUnits = [' kB', ' MB', ' GB', ' TB', 'PB', 'EB', 'ZB', 'YB'];
    do {
        fileSizeInBytes = fileSizeInBytes / 1024;
        i++;
    } while (fileSizeInBytes > 1024);

    return Math.max(fileSizeInBytes, 0.1).toFixed(1) + byteUnits[i];
};

showCollections = function() {
    var collectionNames = db.getCollectionNames();
    var stats = [];
    
    collectionNames.forEach(function (n) { stats.push(db[n].stats()); });
    stats = stats.sort(function(a, b) { return b['size'] - a['size']; });
    
    for (var c in stats) { 
        print(stats[c]['ns'] + ": " + getReadableFileSizeString(stats[c]['size']) + " (" + getReadableFileSizeString(stats[c]['storageSize']) + ")"); 
    }
}

EDITOR='vim';
