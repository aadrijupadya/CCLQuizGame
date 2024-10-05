CREATE TABLE IF NOT EXISTS questions(
    QUESTION TEXT,
    QUESTIONTYPE INTEGER,
    ANSWERCHOICE1 TEXT,
    ANSWERCHOICE2 TEXT,
    ANSWERCHOICE3 TEXT,
    ANSWERCHOICE4 TEXT,
    CORRECTANSWER TEXT
);

--ALTER TABLE questions
--ADD CATEGORY INTEGER;
/*
INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which of the following policies is not apart of CCL''s agenda?', 0, 'A) Carbon Pricing', 'B) Reducing Electrification', 'C)Healthy Forests', 'D) Permitting Reform', 'B) Reducing Electrification', 1);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('Approximately how many millions of American lives can a carbon price save over the next 50 years?', 2, '4.5', 1);

*/

/*

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: Favoring spending revenues on clean energy projects instead of a carbon dividend helps low and middle-income households.', 1, 'TRUE', 'FALSE', 'FALSE', 1);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('What recent government act contains the potential emissions reductions in 2030? (State its full name)', 2, 'Inflation Reduction Act', 1);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which of these best describes carbon sequestration?', 0, 'A) The process of emitting carbon dioxide into the air by burning biomass and dead plant mass', 'B) Practice of reducing carbon emissions through installing environment-friendly electrification in houses', 'C) Removing carbon from the atmosphere and storing it in "sinks"', 'D) Method of converting carbon dioxide into other, less harmful greenhouse gases', 'C) Removing carbon from the atmosphere and storing it in "sinks"', 1);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('How many billions of tons of carbon dioxide should be removed by the year 2050?', 2, '10', 1);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('How much is congress offering in rebates for home weatherization and electrification? (in dollars)', 2, '600', 1);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('How much can the average household save on yearly energy bills by installing heat pumps and induction stoves? (in dollars)', 2, '14000', 1);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('By how much are we expanding our electric transformation infrastructure? (give answer as percentage)', 2, '1', 1);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('Nearly ___ of America''s buildings use fossil fuels to heat space or water to cook food.', 2, '3/4', 1);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('Buildings create _ percent of our carbon pollution each year.', 2, '10', 1);

*/

/*

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: Favoring spending revenues on clean energy projects instead of a carbon dividend helps low and middle-income households.', 1, 'TRUE', 'FALSE', 'FALSE', 1);

*/
/*
INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True/False: CCL focuses on every potential climate solution.', 1, 'TRUE', 'FALSE', 'FALSE', 2);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('Currently the trend shows us cutting emissions down _% by 2050', 2, '28', 2);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('Fill in the Blank: A strong, economy-wide price on carbon could help reduce America''s carbon pollution _% by 2030', 2, '50', 2);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('The Big Wires Act requires regions to increase their ability to import and export electricity to _% of their peak load by 2035.', 2, '30', 2);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('How many votes is needed for a budget reconcialation to pass in the Senate?', 2, '51', 2);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('In the US senate, how many votes is needed to pass legislation?', 2, '60', 2);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('According to the Congressional Management Foundation, fewer than _ personalized emails is enough for the office ot start taking the requested action.', 2, '100', 2);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True/False: Politicians create political will.', 1, 'TRUE', 'FALSE', 'FALSE', 2);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True/False: When forests die, they release the carbon they''ve been storing in the soil and trees into the air.', 1, 'TRUE', 'FALSE', 'TRUE', 2);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('A CCL liason starts preparing for a lobby meeting about _ weeks before the meeting.', 2, '6', 2);

*/
/*
INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which of these is a consideration you should take into account when presenting?', 0, 'A) Using complex terminology and jargon to enhance the quality of your presentation', 'B) Focusing on the problem at hand', 'C) Avoid emphasizing the urgency of the issue', 'D) Minimizing "Gloom and Doom"', 'D) Minimizing "Gloom and Doom"', 3);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('How often do CCL''s National conferences occur?', 2, '2', 3);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('There are no background requirements for being of service, but leaning into the qualities of _______ and ________ will help get you started.', 0, 'A) Curiosity and collaboration', 'B) Curiosity and creativity', 'C) Creativity and collaboration', 'D) Judgement and joyfullness', 'A) Curiosity and collaboration', 3);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: When trying to connect with another environmental organization, it is important to point out where they are wrong to increase overall understanding.', 1, 'TRUE', 'FALSE', 'FALSE', 3);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: Rotary and other service organizations can help advocate for policy positions, particularly those related to carbon pricing.', 1, 'TRUE', 'FALSE', 'FALSE', 3);
*/

/*

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which of these should you NOT do when writing your letter to the editor?', 0, 'A) Time letters by submitting them well before the deadline', 'B) Always couple warnings with a solution', 'C) Raise "hot button" issues like nuclear power to increase viewer appeal', 'D) Eliminate unnecessary words to keep the story concise and under the word limit', 'C) Raise "hot button" issues like nuclear power to increase viewer appeal', 4);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which of the following should you not do when writing an Op-ed related to climate', 0, 'A) Stay focused', 'B) Make it local', 'C) Tell a story', 'D) Talk about a variety of topics', 'D) Talk about a variety of topics', 4);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('What social media platform does CCL recomend for lobbying?', 2, 'Twitter', 4);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: It is important to correct and repeat false statements from the opposition, even if it diverts from the main message', 1, 'TRUE', 'FALSE', 'FALSE', 4);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: Social media is an approproiate paltform to "pitch" to local media and start calls for action', 1, 'TRUE', 'FALSE', 'TRUE', 4);

*/

/*

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('The five areas where CCL focuses their attention upon research of how members of Congresss are influenced are Lobbying, Media, Grasstops, Grassroots, and ______', 0, 'A) Group bonding', 'B) Individual Development', 'C) Individual bonding', 'D) Group Development', 'D) Group Development', 5);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Large Local Employers, Economists, Faith Leaders, and _____ are especially good types of community leaders.', 0, 'A) National politicians', 'B) Appointed officials', 'C) Locally elected officials', 'D) None of the above', 'C) Locally elected officials', 5);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('How often is the Farm Bill updated?', 0, 'A) 1 year cycle', 'B) 2 year cycle', 'C) 5 year cycle', 'D) 4 year cycle', 'C) 5 year cycle', 5);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: A Chamber can show support by attending a lobby meeting or issuing a press release using CCL''s press release format', 1, 'TRUE', 'FALSE', 'TRUE', 5);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: A Chamber can show support by attending a lobby meeting or issuing a press release using CCL''s press release format', 1, 'TRUE', 'FALSE', 'TRUE', 5);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('What program is the Farm Bill funding mostly for?', 2, 'Nutrition Assistance', 5);

*/
/*
INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('The five levers of political will are lobbying congress, ____, grassroots outreach, grasstops engagement, and chapter and volunteer development', 2, 'Media Relations', 6);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which of these is not one of the 3 Is of Evaluation?', 0, 'A) Intelligence', 'B) Insight', 'C) Improvement', 'D) Involvement', 'A) Intelligence', 6);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('In the weeks prior to a chapter meeting, what is one thing you should do?', 0, 'A) Call people beforehand to personally invite them, especially newer members or people you haven''t seen in a while.', 'B) Do not call anyone', 'C) Call people repeatedly at odd hours', 'D) None of the above', 'A) Call people beforehand to personally invite them, especially newer members or people you haven''t seen in a while.', 6);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('90% of CCL groups manage their finances informally and spend less than ____ in a year.', 0, 'A) 10000', 'B) 200', 'C) 650', 'D) 1000', 'D) 1000', 6);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: You should be on every single social media platforms to be as succesful of a climate advocate as possible', 1, 'TRUE', 'FALSE', 'FALSE', 6);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('CCL Chapters are organized by ...', 2, 'Federal Congressional District', 6);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('On college campuses, what is one libertarian group that is likely to have conservatives who are concerned about climate?', 0, 'A) Young Americans for Liberty', 'B) Liberty Americans', 'C) Young Americans', 'D) None of the above', 'A) Young Americans for Liberty', 6);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: You should post your member of congress when posting on social media', 1, 'TRUE', 'FALSE', 'TRUE', 6);
*/ 

/*

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('What is the primary source of carbon dioxide (CO2) emissions?', 0, 'A) Deforestation', 'B) Burning fossil fuels', 'C) Industrial processes', 'D) Agricultural activities', 'B) Burning fossil fuels', 7);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('Between 2000 and 2010, by what percentage did greenhouse gas emissions increase each year?', 2, '2.2', 7);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('What is the primary source of carbon dioxide (CO2) emissions?', 0, 'A) 300 parts per million; 2 million years ago', 'B) 350 parts per million; 5 million years ago', 'C) 410 parts per million; 3 million years ago', 'D) 450 parts per million; 4 million years ago', 'C) 410 parts per million; 3 million years ago', 7);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: Methane and Nitrous Oxide are more potent than greenhouse gasses.', 1, 'TRUE', 'FALSE', 'TRUE', 7);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which of the following is a consequence of a warming planet?', 0, 'A) Decreased wildfires', 'B) Diminishing snowpack', 'C) Reduced storm frequency', 'D) Increased snowfall', 'B) Diminishing snowpack', 7);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('What is suggested to accompany dire climate facts when communicating with the public?', 2, 'Solutions', 7);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which of the following is not listed as a method to use local climate impact research?', 0, 'A) Social media', 'B) Municipal resolutions', 'C) International conferences', 'D) None of the above', 'C) International conferences', 7);

*/
/*

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which part of the brain is less critical and more receptive when listening to stories?', 0, 'A) The logical part', 'B) The emotional part', 'C) The creative part', 'D) The analytical part', 'B) The emotional part', 8);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which value is NOT one of the two values that NNOCCI found effective for moving people to action around climate change?', 0, 'A) Connecting to our sacred places', 'B) Responsibly managing our resources', 'C) Protecting the people and places we love', 'D) Promoting economic growth', 'D) Promoting economic growth', 8);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which of these is not an area of connection you should aim to reach in your audience when telling a story?', 0, 'A) Head', 'B) Heart', 'C) Gut', 'D) None of the above', 'D) None of the above', 8);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('Which of these is not one of the four processes of Motivational interviewing?', 0, 'A) Design', 'B) Engage', 'C) Focus', 'D) Plan', 'A) Design', 8);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('What does the "A" in OARS stand for?', 2, 'Affirmations', 8);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('What is the purpose of the "Evocation" process in Motivational Interviewing?', 0, 'A) To tell the person what to do', 'B) To elicit their reasons for change', 'C) To summarize their options', 'D) To plan the next steps', 'B) To elicit their reasons for change', 8);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('Which of these is part of the DARN CAT mnemonic?', 2, 'Commitment', 8);
*/

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('How many countries have carbon pricing in their Nationally Determined Contributions (NDCs) with their commitments to the UN?', 0, 'A) 10', 'B) 17', 'C) 26', 'D) 96', 'D) 96', 9);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('The Climate Action Tracker tracks how many countries?', 0, 'A) 12', 'B) 80', 'C) 32', 'D) 100', 'C) 32', 9);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('How many countries have carbon pricing in their Nationally Determined Contributions (NDCs) with their commitments to the UN?', 0, 'A) 10', 'B) 17', 'C) 26', 'D) 96', 'D) 96', 9);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('If you know someone interested in becoming a new prospective international leader, whom should you contact?', 2, 'Cathy Orlando', 9);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('As of March 2020, how many international registered supporters are there?', 0, 'A) 10000', 'B) 5000', 'C) 500', 'D) 12200', 'D) 12200', 9);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('A majority of pepole in the EU believe that the EU should be carbon neutral by?', 2, '2050', 9);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('Carbon price for fuels is rising in Canda. By 2030, what how many canadian dollars is it expected to cost per ton? (answer in CAD)', 2, '170', 9);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY)
VALUES('As of 2016, what percent of global greenhouse gas emissions does Canada emit?', 0, 'A) 1.2%', 'B) 1.1%', 'C) 1.6%', 'D) None of the above', 'C) 1.6%', 9);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: New evidence shows that each increment of 0.1ºC carries significant, measurable heating effects, which add to Earth''s energy imbalance and create expanded risk of destabilizing climate impacts.', 1, 'TRUE', 'FALSE', 'TRUE', 9);

INSERT INTO questions(QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, CORRECTANSWER, CATEGORY)
VALUES('True or False: By the end of this century, an estimated 3 to 6 billion individuals — approximately one-third to one-half of the global population — might find themselves confined beyond the livable region, encountering severe heat, limited food availability, and elevated mortality rates because of the effects of climate change ', 1, 'TRUE', 'FALSE', 'TRUE', 9);

INSERT INTO questions(QUESTION, QUESTIONTYPE, CORRECTANSWER, CATEGORY)
VALUES('The Paris Agreement deems what temperature increase as the upper limit of acceptable warming? (answer in Celsius)', 2, '1.5', 9);



