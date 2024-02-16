const mysql = require('mysql2/promise');

const is_render = process.env.IS_RENDER || false;

const dbConfigRender = {
	host: "sql.freedb.tech",
	user: "freedb_2350_main.",
	password: "ADv3rDufMJB62v&",
	database: "freedb_COMP2350_A01342823",
	multipleStatements: false
};

const dbConfigLocal = {
	host: "localhost",
	user: "root",
	password: "abc123!",
	database: "world",
	multipleStatements: false
};

if (is_render) {
	var database = mysql.createPool(dbConfigRender);
}
else {
	var database = mysql.createPool(dbConfigLocal);
}

module.exports = database;
		