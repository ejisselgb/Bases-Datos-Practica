const readline = require('readline');
const moviesModel = require('./Servidor/models')
const csv = './CSV/SERIE_RATING.csv';
const fs = require("fs");

let doc = [];

fs.readFile(csv,'utf8', (err, data) => {
	let dataArray = data.split(/\r?\n/);
	for(const line of dataArray){
		let lineF = line.split(',');
		//moviesModel.createUser(lineF[0],lineF[1],lineF[2],lineF[3]);
		//moviesModel.createProfile(lineF[0],lineF[1],lineF[2],lineF[3],lineF[4],lineF[5],lineF[6],lineF[7]);
		//moviesModel.createPlan(lineF[0],lineF[1], lineF[2]);
		//moviesModel.createSub(lineF[0],lineF[1],lineF[2],lineF[3],lineF[4],lineF[5]);
		//moviesModel.createMovie(lineF[0],lineF[1],lineF[2],lineF[3],lineF[4],lineF[5]);
		//moviesModel.createSerie(lineF[0],lineF[1],lineF[2],lineF[3],lineF[4],lineF[5]);
		//moviesModel.createChapter(lineF[0],lineF[1],lineF[2],lineF[3],lineF[4],lineF[5]);
		//moviesModel.createCategory(lineF[0],lineF[1]);
		//moviesModel.createCategoryMovie(lineF[0],lineF[1]);
		//moviesModel.createCategorySerie(lineF[0],lineF[1]);
		//moviesModel.createFavMovie(lineF[0],lineF[1],lineF[2]);
		//moviesModel.createFavSerie(lineF[0],lineF[1],lineF[2]);
		//moviesModel.createActor(lineF[0],lineF[1],lineF[2]);
		//moviesModel.createActorMovie(lineF[0],lineF[1]);
		//moviesModel.createActorSerie(lineF[0],lineF[1]);
		//moviesModel.createCountry(lineF[0],lineF[1],lineF[2],lineF[3]);
		//moviesModel.createZone(lineF[0],lineF[1], lineF[2]);
		//moviesModel.createCity(lineF[0],lineF[1], lineF[2]);
		//moviesModel.createLanguage(lineF[0],lineF[1]);
		//moviesModel.createLanguageSerie(lineF[0],lineF[1]);
		//moviesModel.createLanguageMovie(lineF[0],lineF[1]);
		//moviesModel.createViewTSerie(lineF[0],lineF[1], lineF[2], lineF[3],lineF[4],lineF[5]);
		//moviesModel.createViewTMovie(lineF[0],lineF[1], lineF[2], lineF[3]);
		//moviesModel.createMovieRating(lineF[0],lineF[1], lineF[2]);
		//moviesModel.createSerieRating(lineF[0],lineF[1], lineF[2]);
	}
});

// moviesModel.createUser('69420','Juan','God','god@god.com', 'VioletGod', '22', '23', '31', '1111');