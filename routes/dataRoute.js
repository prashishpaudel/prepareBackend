var ScenarioControllers = require('../controllers/ScenarioControllers.js');
const Json2csvParser = require('json2csv').Parser;

//Data Access Requests (PREPARE Data Sources stored in Database)
module.exports = { 

		saveVRData : function(request, response) { 
		try {
			if (request && request.body) {
				['startTime','endTime','subjectID','score','scenarioID','answer'].forEach(function(str) {
					if (!request.body.hasOwnProperty(str)){
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['startTime','endTime','subjectID','score','scenarioID', 'answer'].forEach(function(str) {
					request.input[str] = request.body[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.saveVRData(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					var message={
						error:false,
						message:"Data Entered"
					}
					return response.json(message);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},


	physioData: function(request, response) {
		try {
			if (request && request.query) {
				['unixtime'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['unixtime'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.physioData(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},




	downloadPhysioData: function(request, response) {
		try {
			if (request && request.query) {

				['play_id','lastname'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['play_id','lastname'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;
				return ScenarioControllers.downloadPhysioData(request.input, function(err, data) { 
					if (err) {
						throw err;
					}
					

					var fields= [];

					if(data.length>0){
						fields=Object.keys(data[0]);
					}
					
					const json2csvParser = new Json2csvParser({ fields });
        			const csv = json2csvParser.parse(data);        
        			response.attachment('physioDataRaw.csv');
       				return response.status(200).send(csv);




				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},






	downloadPhysioDataRaw: function(request, response) {
		try {
			if (request && request.query) {

				['play_id','lastname'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['play_id','lastname'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;
				return ScenarioControllers.downloadPhysioDataRaw(request.input, function(err, data) { 
					if (err) {
						throw err;
					}
					

					var fields= [];

					if(data.length>0){
						fields=Object.keys(data[0]);
					}
					
					const json2csvParser = new Json2csvParser({ fields });
        			const csv = json2csvParser.parse(data);        
        			response.attachment('physioDataRaw.csv');
       				return response.status(200).send(csv);




				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},

	downloadInstructorDataWithPhysio: function(request, response) {
		try {
			if (request && request.query) {
				['courseId','window'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['courseId','window'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user; 


				return ScenarioControllers.downloadInstructorDataWithPhysio(request.input, function(err, data) {
					if (err) {
						throw err;
					}

					// return response.json(data);
					var fields= [];

					
					if(data.length>0){
						fields=Object.keys(data[0]);
					}

					
					const json2csvParser = new Json2csvParser({ fields });
        			const csv = json2csvParser.parse(data);        
        			response.attachment('filename.csv');
       				return response.status(200).send(csv);


					// return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL'); 
				throw err;
			}
		} catch (e) {

			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},

	downloadInstructorData: function(request, response) {
		try {
			if (request && request.query) {
				['courseId'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['courseId'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user; 


				return ScenarioControllers.downloadInstructorData(request.input, function(err, data) {
					if (err) {
						throw err;
					}


					var fields= [];

					if(data.length>0){
						fields=Object.keys(data[0]);
					}
					
					const json2csvParser = new Json2csvParser({ fields });
        			const csv = json2csvParser.parse(data);        
        			response.attachment('filename.csv');
       				return response.status(200).send(csv);


					// return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL'); 
				throw err;
			}
		} catch (e) {

			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},

	downloadAssessmentData: function(request, response) {
		try {
			if (request && request.query) {
				['courseId'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['courseId'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.downloadAssessmentData(request.input, function(err, data) {
					if (err) {
						throw err;
					}


					var fields= [];

					if(data.length>0){
						fields=Object.keys(data[0]);
					}
					
					const json2csvParser = new Json2csvParser({ fields });
        			const csv = json2csvParser.parse(data);        
        			response.attachment('filename.csv');
       				return response.status(200).send(csv);


					// return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL'); 
				throw err;
			}
		} catch (e) {

			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},

	getCourseOverview: function(request, response) {
		try {
			if (request && request.query) {
				['courseId','learner_ids'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['courseId','learner_ids'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.getCourseOverview(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL'); 
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	getPlayVidList: function(request, response) {
		try {
			if (request && request.query) {
				['playId'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['playId'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.getPlayVidList(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},

	getActiveDevices: function(request, response) {
		try {
			if (request && request.query) {
				['dateTime'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['dateTime'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.getActiveDevices(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	getLearners: function(request, response) {


		try {
			if (request && request.query) {
				["courseId"].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				["courseId"].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.getLearners(request.input, function(err, data) { 
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	addLearner: function(request, response) {


		try {
			if (request && request.query) {
				["learnerName","rocketId","role","years","faculty","courseId"].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				["learnerName","rocketId","role","years","faculty","courseId"].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.addLearner(request.input, function(err, data) { 
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	deleteLearner: function(request, response) {


		try {
			if (request && request.query) {
				["learner_id", "courseId"].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				["learner_id", "courseId"].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.deleteLearner(request.input, function(err, data) { 
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	getStreamDataResults: function(request, response) {
		try {
			if (request && request.query) {
				['serialNumber','startTime','endTime'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['serialNumber','startTime','endTime'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.getStreamDataResults(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},

	getStreamData: function(request, response) {
		try {
			if (request && request.query) {



				['serialNumber'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['serialNumber'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;


				return ScenarioControllers.getStreamData(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	streamData: function(request, response) {
		try {
			if (request && request.body) {
				
				return ScenarioControllers.streamData(request.body, function(err, data) {
					if (err) {
						console.log(err);
						throw err;

					}
					console.log(data);
					return response.json(data);
				});
			} else {
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	speceficResults: function(request, response) {
		try {
			if (request && request.query) {

				['play_id','lastname'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['play_id','lastname'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;
				return ScenarioControllers.speceficResults(request.input, function(err, data) { 
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	savepostassessmentformresponse:function(request,response) {
		try {
			if (request && request.query) {


				['course_id','learner_id','learner_name','learnerDetail','formData'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				console.log(request.query);
				['course_id','learner_id','learner_name','learnerDetail','formData'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;
				return ScenarioControllers.savepostassessmentformresponse(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	savepreassessmentformresponse:function(request,response) {
		try {
			if (request && request.query) {


				['course_id','learner_id','learner_name','learnerDetail','formData'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				console.log(request.query);
				['course_id','learner_id','learner_name','learnerDetail','formData'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;
				return ScenarioControllers.savepreassessmentformresponse(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	savepostassessment:function(request,response) {
		try {
			if (request && request.query) {

				['postassessment','course_id'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				console.log(request.query);
				['postassessment','course_id'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;
				return ScenarioControllers.savepostassessment(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	savepreassessment:function(request,response) {
		try {
			if (request && request.query) {

				['preassessment','course_id'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['preassessment','course_id'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;
				return ScenarioControllers.savepreassessment(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	savegoals:function(request,response) {
		try {
			if (request && request.query) {

				['goals','course_id'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['goals','course_id'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;
				return ScenarioControllers.savegoals(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	savePlay: function(request, response) {
		try {
			if (request && request.query) {

				['trainee','nodes','scenario_id','comments'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['trainee','nodes','scenario_id','comments'].forEach(function(str) {
					request.input[str] = request.query[str];
				});

				request.input['user']=request.user;
				return ScenarioControllers.savePlay(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	results: function(request, response) {
		
		
		try {
			if (request && request.query) {
				['course_id'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['course_id'].forEach(function(str) {
					request.input[str] = request.query[str];
				});
				return ScenarioControllers.results(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else { 
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}

		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}

	},
	getCourse: function(request, response) {
		try {
			
			return ScenarioControllers.getCourse(function(err, data) {
				if (err) {
					throw err;
				}
				return response.json(data);
			});

		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},

	speceficcourse:function(request, response) {
		try {
			if (request && request.query) {
				['course_id'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['course_id'].forEach(function(str) {
					request.input[str] = request.query[str];
				});
				return ScenarioControllers.speceficcourse(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	getscenariobycourseid:function(request, response) {
		try {
			if (request && request.query) {
				['course_id'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['course_id'].forEach(function(str) {
					request.input[str] = request.query[str];
				});
				return ScenarioControllers.getscenariobycourseid(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	getScenario: function(request, response) {
		try {
			
			return ScenarioControllers.getScenario(function(err, data) {
				if (err) {
					throw err;
				}
				return response.json(data);
			});

		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	createCourse: function(request, response) {
		try {
			if (request && request.query) {
				['coursename'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['coursename'].forEach(function(str) {
					request.input[str] = request.query[str];
				});
				request.input['user']=request.user;
				return ScenarioControllers.createCourse(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	createScenario: function(request, response) {
		try {
			if (request && request.query) {
				console.log(request.query);
				['scenario_name', 'scenario_time','category','roles','course_id'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['scenario_name', 'scenario_time','category','roles','course_id'].forEach(function(str) {
					request.input[str] = request.query[str];
				});
				return ScenarioControllers.createScenario(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	addEvent: function(request, response) {
		try {
			if (request && request.query) {

				['eventname', 'skilltype', 'specificskill', 'timestart', 'scenario_id','heart_rate','systolic_bp','diastolic_bp','spo2','r_rate','cardiac_rhythm','scenario_role_id','objectives1'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['eventname', 'skilltype', 'specificskill', 'timestart', 'scenario_id','heart_rate','systolic_bp','diastolic_bp','spo2','r_rate','cardiac_rhythm','scenario_role_id','objectives1'].forEach(function(str) {
					request.input[str] = request.query[str];
				});
				return ScenarioControllers.addEvent(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},

	getEvent: function(request, response) {
		try {
			if (request && request.query) {
				['scenario_id'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['scenario_id'].forEach(function(str) {
					request.input[str] = request.query[str];
				});
				return ScenarioControllers.getEvent(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	deleteEvent: function(request, response) {
		try {
			if (request && request.query) {
				['event_id', 'scenario_id'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['event_id', 'scenario_id'].forEach(function(str) {
					request.input[str] = request.query[str];
				});
				return ScenarioControllers.deleteEvent(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	},
	deleteScenario: function(request, response) {
		try {
			if (request && request.query) {
				['scenario_id'].forEach(function(str) {
					if (!request.query[str]) {
						var err = new Error(str + ' is not present in the URL');
						throw err;
					}
				});
				request.input = {};
				['scenario_id'].forEach(function(str) {
					request.input[str] = request.query[str];
				});
				return ScenarioControllers.deleteScenario(request.input, function(err, data) {
					if (err) {
						throw err;
					}
					return response.json(data);
				});
			} else {
	
				var err = new Error(' Query is not present in the URL');
				throw err;
			}
		} catch (e) {
			request.output = {}
			request.output.error = true;
			request.output.message = e.message;
			response.json(request.output);
		}
	}
}