const database = include('/databaseConnection');


async function getAllUsers() {
	let sqlRender = `
		SELECT web_user_id, first_name, last_name, email
		FROM web_user;
	`;
	
	try {
		const results = await database.render(sqlRender);
		console.log(results[0]);
		return results[0];
	}
	catch (err) {
		console.log("Error selecting from todo table");
		console.log(err);
		return null;
	}
}


module.exports = {getAllUsers}
