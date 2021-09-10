/* -------------------------------------------------------------------
Name: Pratik Pundlik Sayanakar
Student ID: 20200161
Final Project Assignment
Wonka Labs: Experiments in Food Discovery
------------------------------------------------------------------- */

-- ---------- Database Creation -------------------------------------
DROP DATABASE IF EXISTS wonka_labs_20200161;
CREATE DATABASE wonka_labs_20200161;
USE wonka_labs_20200161;

# Creating table to store input data file : pizza
DROP TABLE IF EXISTS pizza_csv;
CREATE TABLE pizza_csv (
    element VARCHAR(50) NOT NULL,
    category VARCHAR(10) NOT NULL,
    restriction VARCHAR(500) NOT NULL,
    first_word VARCHAR(200) NOT NULL,
    second_word VARCHAR(200) NOT NULL,
    PRIMARY KEY (element)
);

# Initially the csv version of provided data is loaded directly and in later stage insert query is generated with mysql workbench tools.

# Inserting data into pizza_csv table
INSERT INTO `pizza_csv` VALUES ('Alfredo sauce','Sauce','Italian, cream, vegetarian','Buttery','Butterfingers'),('anchovies','Meat','meat, seafood, salty','Salty, Briny',''),('artichoke hearts','Vegetable','Mediterranean','Cardiac',''),('asparagus tips','Vegetable','vegan, vegetarian','Pointy','Arrowhead'),('avocado','Vegetable','healthy, gourmet','Californian, New-Age',''),('baby corn','Vegetable','sweet','Jolly Green, Mayan',''),('baby spinach','Vegetable','healthy','Popeye\'s',''),('bacon','Meat','meat, pork, salty, crispy','Porky, Heart-Stopping, Sizzling',''),('balsamic glaze','Sauce','gourmet, sour, vegetarian, vegan','Vinegar','Gourmet'),('barbecue sauce','Sauce','sweet, vegetarian, vegan','Outdoors','Barbie Doll'),('basil pesto','Sauce','Italian, vegetarian, vegan','Fawlty',''),('bean curd','Cheese','healthy, vegan','Lumpy',''),('Bechamel sauce','Sauce','cream, French, vegetarian','Creamy',''),('Beef jerky','Meat','meat, Caribbean, beef, salty','Rubber, Chewy','Chewtoy'),('beetroot slices','Vegetable','Mediterranean','Red-faced',''),('bell peppers','Vegetable','sweet','Ringing, Ding-Dong','BONG'),('black olives','Vegetable','salty','Greek, Black-eyed',''),('black pudding','Meat','meat, pork, salty','Darth Vader\'s, Blackhole, Irish',''),('blood sausage','Meat','meat, pork, salty','Tarantino\'s, Bloody',''),('Bolognese sauce','Sauce','meat, Italian','Tuscan',''),('Boursin cheese','Cheese','French, dairy','French, Gallic',''),('breaded oysters','Meat','seafood, gourmet','','Pearl'),('Brie','Cheese','French, dairy','French',''),('button mushrooms','Vegetable','','Button-nosed','Fungi'),('Camembert','Cheese','French, dairy','French',''),('Canadian bacon','Vegetable','sweet, salty','Polite',''),('capers','Vegetable','salty','Caped',''),('Carbonarra sauce','Sauce','cream, vegetarian','Creamy',''),('carrot strips','Vegetable','crunchy','Buggs','Bunny'),('Caviar','Meat','seafood, salty, gourmet','Russian, Czar\'s, Romanov',''),('Cheddar','Cheese','English, dairy','English',''),('cherry tomatoes','Vegetable','sweet','Succulent','Sundae'),('Chicken Fajitas','Meat','meat, chicken, Mexican, spicy','Mexican, Viva, Sizzling',''),('chicken Tikka','Meat','meat, chicken, spicy, Indian, Asian','Bollywood, Taj, Maharaja\'s','Palace'),('chickpeas','Vegetable','Eastern','Levantine, Eastern',''),('Chilli con carne','Meat','meat, beef, Mexican, spicy','Mexican, Viva, Mariachi','Zapatos'),('Chimichurri sauce','Sauce','spicy, Mexican, vegetarian, vegan','Latin, Argentine','Gaucho'),('chopped garlic','Vegetable','spicy','Van Helsing\'s, Vampire Hunter\'s',''),('Chorizo','Meat','meat, pork, spicy, salty','Spanish, Matador\'s',''),('ciabatta','Base','thick, gluten','Bubbly, Airy',''),('coconut curry sauce','Sauce','nut, Asian, Thai','Thai',''),('Cod goujons','Meat','meat, gourmet, seafood','Atlantic','Codpiece'),('cottage cheese','Cheese','healthy, dairy','Lumpy',''),('crab meat','Meat','seafood','Mr. Krab\'s',''),('cracker crust','Base','thin, crunchy, gluten','Crunchy','Cracker'),('cranberries','Vegetable','sweet, festive','','Christmas'),('curried chicken','Meat','meat, chicken, spicy, Indian, Asian','Bollywood, Taj, Maharaja\'s',''),('curry sauce','Sauce','Indian, Asian, vegetarian','Taj, Bombay',''),('Danish blue cheese','Cheese','Scandinavian, Danish, dairy','Indigo, Ultraviolet','Smurf'),('deep dish crust','Base','thick, gluten','Spongy','Mattress, Phonebook'),('deep-fried base','Base','Scottish, MacBeth\'s, Jock\'s','Heart Attack',''),('Edam','Cheese','Dutch, dairy','Dutch, Double Dutch, Red Light',''),('falafel','Meat','vegan, Eastern, vegetarian','Aladin\'s, Baghdad, Eastern',''),('Feta cheese','Cheese','salty, dairy','Greek, Zorba\'s, Athenian','Acropolis, Parthenon'),('fig jam','Sauce','gourmet, sweet, vegetarian, vegan','Wrinkled',''),('Filet Mignon','Meat','meat, gourmet, French, beef','Ooh La La, Millionaire\'s','Extravagance'),('flatbread','Base','Greek, Eastern, gluten','Flat-capped, Flat-footed',''),('focaccia ','Base','Italian, thick, gluten','Fluffy','Astroturf'),('French fries','Vegetable','salty, crunchy, American','Crunchy, Golden, ','Happy Meal'),('French onions','Vegetable','French','Parisien, Eye-Watering',''),('garlic aioli sauce','Sauce','gourmet, vegetarian','West-coast, Beverly Hills',''),('gluten-free crust','Base','healthy','Poor man\'s','Frisbee'),('goat\'s cheese','Cheese','gourmet, dairy','Stubborn','Billy Goat, Ram, Headbutt'),('Gorgonzola','Cheese','salty, dairy','Smelly, Italian','Skunk'),('Gouda','Cheese','Dutch, dairy','Dutch, Double Dutch, Red Light',''),('green olives','Vegetable','salty','Mediterranean, Club Med','Martini'),('grilled apricots','Vegetable','sweet','Fruity','Tiger'),('grilled chicken','Meat','meat, chicken','Sun-tanned, Flaming',''),('Gruyere','Cheese','Swiss, dairy','Alpine, Banker\'s','Fondue'),('gyro bread','Base','Greek, gluten','Bendy',''),('habanero chillis','Vegetable','spicy, Mexican','Burning, Exploding, Explosive, Thermonuclear','Volcano'),('haloumi cheese','Cheese','salty, dairy','Cypriot',''),('ham hock','Meat','meat, pork, salty','Porky, Chubby, Peppa',''),('harissa sauce','Sauce','Eastern, spicy, vegetarian, vegan','Moroccan',''),('Hoisin sauce','Sauce','Chinese, Asian, vegetarian, vegan, vegetarian, vegan','Peking',''),('hummus','Sauce','Eastern, vegetarian, vegan','Moroccan, Levantine',''),('Jalapeno Jack','Cheese','spicy, Mexican, dairy','Jumpin\'',''),('jalapenos','Vegetable','spicy, Mexican','Burning, Exploding, Explosive, Feisty','Fire, TNT'),('Jarlsberg cheese','Cheese','German','Bismarck\'s','Blitzkrieg'),('kimchi','Vegetable','sour, spicy','Korean, Sour','M*A*S*H'),('King prawns','Meat','meat, seafood','Neptune\'s, Deep-sea, Royal, Regal','Spongebob'),('Kobe beef','Meat','meat, gourmet, Japanese, Asian, beef','Godzilla\'s, Yokohama',''),('Korean beef','Meat','meat, beef, spicy','Oriental, Spicy, Kim Jung','Seoulmate'),('lamb kofta','Meat','meat, lamb, Eastern','Moroccan, Woolly, Bo Peep\'s','Shepherd'),('lobster tail','Meat','seafood, gourmet','Neptune\'s',''),('Manchego cheese','Cheese','Spanish','Quixote\'s, Franco\'s','Bullfight'),('Marinara sauce','Sauce','Italian, vegetarian, vegan','Neopolitan',''),('meatballs','Meat','meat, beef','Carnivorous','Meteor Shower'),('Mongolian beef','Meat','meat, spicy, beef, Asian, Mongolian','Genghis, Khan\'s',''),('Monterey Jack','Cheese','American, dairy','Yankee, ','Fully Monty'),('Mozzarella','Cheese','Italian, dairy','Buffalo',''),('multigrain crust','Base','healthy, gourmet, gluten','Farmhouse, Rustic',''),('Munster cheese','Cheese','German, dairy','Herman\'s','Monster'),('olive tapenade','Sauce','Italian, salty, vegetarian, vegan','Spanish','Tap Dance'),('orange segments','Vegetable','sweet','Florida','Sunshine'),('paneer cheese','Cheese','Indian, Asian, dairy','Indian, Clotted',''),('Parma ham','Meat','meat, pork, salty','Italian, Undercooked',''),('Parmesan cheese','Cheese','Italian, dairy','Grand','Padano'),('pastrami','Meat','meat, beef, smoked','New York, Brooklyn',''),('Peking duck','Meat','duck, game, Asian, Chinese','Peking',''),('pepper jelly','Sauce','gourmet, vegetarian, vegan','Knightsbridge, Gourmet',''),('Pepperoni','Meat','meat, pork, spicy, salty','Italian, Spicy',''),('pickled onions','Vegetable','sour','Sour-faced',''),('pine nuts','Vegetable','crunchy, nut','Roman',''),('Piri Piri sauce','Sauce','spicy, Portuguese','Sizzling, Red Hot',''),('pistachios','Vegetable','salty, nut, Greek','Greek, Nutty',''),('polenta crust','Base','Italian','Italian, Corn-fed',''),('porcini mushrooms','Vegetable','gourmet','Forest','Fungi'),('Port Salut cheese','Cheese','French, dairy','Iberian',''),('Portobello mushrooms','Vegetable','gourmet','Flat-capped','Fungi'),('Provolone','Cheese','Italian, dairy','Provincial, Rustic','Lothario'),('puff pastry','Base','thick, gluten','Staypuft, Flaky','Cloud'),('pulled pork','Meat','meat, pork, salty','Porky, Peppa',''),('pumpkin chunks','Vegetable','sweet','Autumn, Halloween','Jack-O-Lantern'),('Puttenesca sauce','Sauce','Italian, salty, seafood, meat','Midnight','streetwalker'),('Quark','Cheese','healthy, German, dairy','Teutonic',''),('Queso Fresco','Cheese','Mexican, dairy','Mexican, Viva, Mariachi',''),('Quorn chunks','Meat','vegan, vegetarian','Cave wall',''),('ragu','Sauce','Italian, meat','Raging',''),('raised crust','Base','thick, gluten','Puffy','Elevator, High Rise'),('raisins','Vegetable','sweet','Wrinkled','Mummy'),('Ranch sauce','Sauce','American, vegetarian','Western','Cowboy, Buckaroo'),('Red Leicester','Cheese','English, dairy','Crimson',''),('red onions','Vegetable','crunchy','Red-Eye',''),('red peppers','Vegetable','sweet, juicy','Striped',''),('Ricotta cheese','Cheese','Italian, dairy','Italian','Cheesecake'),('Roast beef','Meat','meat, beef, English','John Bull\'s','Bull'),('roast turkey','Meat','meat, turkey, festive','Festive',''),('roasted peanuts','Vegetable','salty, nut','',''),('Salami','Meat','meat, pork, salty','Italian, Oily',''),('salsa','Sauce','Mexican, spicy, vegetarian, vegan','Dancin\'',''),('sardines','Meat','seafood, salty','Tinned',''),('satay chicken','Meat','meat, chicken, nut, Asian','',''),('satay sauce','Sauce','nut, Asian, Thai','Malay',''),('sauerkraut','Vegetable','sour, German','Teutonic, Bavarian',''),('sausage','Meat','meat, pork','Porky, Juicy',''),('seared scallops','Meat','seafood, French, gourmet','Aphrodite\'s',''),('shallots','Vegetable','French','Parisien',''),('Shiitake mushrooms','Vegetable','gourmet','Asian','Fungi'),('sliced aubergine','Vegetable','Mediterranean','Mediterranean, Club Med','Auberge'),('sliced courgettes','Vegetable','Mediterranean','Green-eyed, Mediterranean',''),('sliced green tomatoes','Vegetable','','Southern',''),('smoked salmon','Meat','meat, seafood, smoked, salty','Tycoon\'s',''),('smoked tofu','Cheese','healthy, vegan','Coughing',''),('sourdough crust','Base','sour, gluten','Fermented, Vinegar',''),('soy cheese','Cheese','vegan','Artificial, Synthetic',''),('soy chunks','Meat','vegan, vegetarian','Synthetic',''),('Soy-Miso sauce','Sauce','Japanese, Asian, vegetarian, vegan','Tokyo, Edo','Samurai, Geisha'),('Spam','Meat','meat, pork, salty','Monty Python\'s, Canned',''),('Steak','Meat','meat, beef, gourmet','Steakhouse','Bull'),('Stilton','Cheese','salty, dairy','English, Blue-veined','Aristocrat'),('stuffed crust','Base','thick, gluten','Stuffed',''),('sun-dried tomatoes','Vegetable','sweet, juicy','Mummified',''),('Swedish meatballs','Meat','meat, Swedish, Scandinavian','IKEA, Abba, Naked','Kroner'),('sweet and sour chicken','Meat','meat, chicken, Asian, Chinese, sour, sweet','Oriental, Moody, Bipolar',''),('sweet and sour pork','Meat','meat, pork, Asian, Chinese, sweet, sour','Oriental, Moody, Bipolar',''),('sweetcorn','Vegetable','sweet','Jolly Green, Mayan',''),('Swiss cheese','Cheese','Swiss, dairy','Neutral, Alpine, Heidi\'s, Apres Ski','Cuckoo, Avalanche, '),('Taco beef','Meat','meat, beef, spicy','Mexican, Viva',''),('Tandoori chicken','Meat','meat, chicken, spicy, Indian, Asian','Bollywood, Taj, Maharaja\'s, Flaming','Palace'),('Thai Chili sauce','Sauce','Thai, Asian, vegetarian, vegan','Siamese','Emperor'),('thick crust','Base','American, thick, gluten','','Slab, Mantle, Mouthful'),('thin crust','Base','Italian, Roman, thin, gluten','Skinny, Crispy','Platter'),('toasted almonds','Vegetable','sweet, crunchy, nut','Nutty',''),('Tofu cubes','Meat','vegan, vegetarian','Synthetic',''),('tomato pesto','Sauce','Italian, vegetarian, vegan','Tuscan',''),('truffle shavings','Vegetable','gourmet','Millionaire\'s, Rich Man\'s','Razor'),('tuna','Meat','meat, seafood','Pacific, Atlantic',''),('unleavened crust ','Base','thin, gluten','Flat-footed','Communion'),('venison','Meat','game','','Bambi'),('Wensleydale','Cheese','salty, dairy','Yorkshire','Grommit'),('wholewheat crust','Base','healthy, gourmet, gluten','Unrefined, Farmhouse, Rustic',''),('wilted greens','Vegetable','','Sweaty','Sauna'),('Zaatar and olive oil','Sauce','Eastern, vegetarian, vegan','Moroccan, Eastern','');

# Creating table to read input data file : beverage
DROP TABLE IF EXISTS beverage_csv;
CREATE TABLE beverage_csv (
    beverage VARCHAR(50) NOT NULL,
    nationality VARCHAR(30) NOT NULL,
    pairings VARCHAR(500) NOT NULL,
    PRIMARY KEY (beverage)
);

#Inserting data into beverage_csv table
INSERT INTO `beverage_csv` VALUES ('Barolo','Italian','beef, venison, duck'),('Beaujolais','French','Feta'),('Bordeaux','French','venison, duck'),('Cabernet Sauvignon','French','beef, venison, duck, pork, spicy, soy, pepper jelly, Gouda'),('Carlsberg beer','Danish','Danish, spicy, salty'),('Cava','Spanish','Caviar, Cod, tuna, salmon, seafood, Chorizo, sausage, Pepperoni, cream, salty, pickled, smoked'),('Champagne','French','Caviar, Cod, tuna, salmon, seafood, Chorizo, sausage, Pepperoni, cream, salty, pickled, gourmet'),('Chardonnay','French','seafood, pork, nut, corn, courgette, jerky, chicken, turkey, Gruyere, cream'),('Chenin Blanc','French','salty, spicy, sour'),('Chianti','Italian','beef, Steak, ragu, cream'),('Diet Coke','American','American, sweet'),('Gewürztraminer','French','salty, spicy, sour'),('Guinness beer','Irish','Danish, spicy, salty'),('Heineken beer','Dutch','Danish, spicy, salty'),('Irn Bru','Scottish','Scottish'),('Malbec','','duck, venison, salmon, tuna, ham, spicy, ginger, salty, berries, Asian, pork, pastrami, cherry, Cheddar'),('Mango Lassi','Indian','Indian, curried, Tandoor'),('Merlot','Californian, American','lamb, Steak, olives, mushroom, grilled, berries, salmon, tuna, satay, Monterey, ham'),('Muscat Blanc','French','salty, spicy, sour'),('Pinot Grigio','Italian','tuna, salmon, seafood, prawn, crab, chicken, Asian, coconut, Gruyere, Gorgonzola, Stilton, blue cheese, Mozzarella'),('Pinot Noir','French','duck, venison, salmon, tuna, ham, spicy, ginger, salty, berries, Asian, pork, pastrami, cherry, Brie, mushroom'),('Port','Portuguese','blue cheese'),('Prosecco','Italian','Caviar, Cod, tuna, salmon, seafood, Chorizo, sausage, Pepperoni, cream, salty, pickled, gourmet, Parmesan'),('Riesling','German','salmon, seafood, tuna, ham, vegan, barbecue, Chorizo, sausage, Pepperoni, grilled, salty, Ricotta'),('Rioja','Spanish','spicy, Chorizo, Manchego, lamb'),('Sancerre','French','asparagus'),('Sangiovese','Italian','cherry, berries'),('Sauternes','French','Gruyere, Swiss'),('Sauvignon Blanc','French','goat, courgette, pesto, Cod, sour, oyster, lobster, prawn, bell peppers, cherry, sardine'),('Sol beer','Mexican','Mexican'),('Syrah','French','lamb, sausage, pork, barbecue, olives, pepper, pork'),('Voignier','French','Jarlsberg'),('Zinfandel Rosé','Californian, American','chicken, Piri Piri, Parma, spicy, seafood, Puttenesca, aioli, garlic, sardines, avocado, crab');


/* comma seperated value found in below columns
	pizza_csv 	: 	restriction
					first_word
					second_word
	beverage_csv:	pairings
*/

DROP TABLE IF EXISTS pizza_ingredients;
CREATE TABLE pizza_ingredients (primary key(element)) AS
	select distinct element, category from pizza_csv;

# Added foreign key reference constraint to maintain consistency between data spread across multiple tables.
ALTER TABLE pizza_ingredients
ADD CONSTRAINT FK_pizza_ingredients
FOREIGN KEY (element) REFERENCES pizza_csv(element)
ON UPDATE CASCADE;

/* To convert comma seperated values as seperate rows, we need to know maximum number of each,
	Here, we are creating one additional table named `number` which loops over 
    comma seperated values
*/

DROP TABLE IF EXISTS numbers;
CREATE TABLE numbers (
    n INT PRIMARY KEY
);
INSERT INTO numbers VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15);


# Creating table to convert comma seperated restriction as seperate row associated with each element
DROP TABLE IF EXISTS element_restriction;

CREATE TABLE element_restriction (primary key(element,restriction )) AS
    SELECT distinct element, 
			TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(restriction, ',', numbers.n), ',', - 1)) AS restriction
    FROM numbers INNER JOIN
		 pizza_csv ON CHAR_LENGTH(restriction) - CHAR_LENGTH(REPLACE(restriction, ',', '')) >= numbers.n - 1;

# Added foreign key reference constraint to maintain consistency between data spread across multiple tables.
ALTER TABLE element_restriction
ADD CONSTRAINT FK_element_restriction
FOREIGN KEY (element) REFERENCES pizza_ingredients(element)
ON UPDATE CASCADE;


# Creating table to convert comma seperated namelets as seperate row associated with each element
DROP TABLE IF EXISTS element_namelets;

CREATE TABLE element_namelets(primary key(element, first_word, second_word)) AS
    SELECT distinct element,
			TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(first_word, ',', n1.n), ',', - 1)) AS first_word,
            TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(second_word, ',', n2.n), ',', - 1)) AS second_word
    FROM numbers n1 JOIN 
		 pizza_csv ON CHAR_LENGTH(first_word) - CHAR_LENGTH(REPLACE(first_word, ',', '')) >= n1.n - 1 
         JOIN 
         numbers n2 ON CHAR_LENGTH(second_word) - CHAR_LENGTH(REPLACE(second_word, ',', '')) >= n2.n - 1
		where first_word <> "" or second_word <> "";
        
# Added foreign key reference constraint to maintain consistency between data spread across multiple tables.
ALTER TABLE element_namelets
ADD CONSTRAINT FK_element_namelets
FOREIGN KEY (element) REFERENCES pizza_ingredients(element)
ON UPDATE CASCADE;


# Creating table to calculate weight of nationality and pairing
DROP TABLE IF EXISTS wine_weights;
CREATE TABLE wine_weights (primary key(beverage)) AS
    SELECT distinct beverage, 
			1/count(distinct TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(nationality, ',', n1.n), ',', - 1))) AS nationality_weight,
            1/count(distinct TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(pairings, ',', n2.n), ',', - 1))) AS pairing_weight
    FROM numbers n1 JOIN 
		 beverage_csv ON CHAR_LENGTH(nationality) - CHAR_LENGTH(REPLACE(nationality, ',', '')) >= n1.n - 1
         JOIN numbers n2 on CHAR_LENGTH(pairings) - CHAR_LENGTH(REPLACE(pairings, ',', '')) >= n2.n - 1
	group by beverage;

# Added foreign key reference constraint to maintain consistency between data spread across multiple tables.    
ALTER TABLE wine_weights
ADD CONSTRAINT FK_wine_weights
FOREIGN KEY (beverage) REFERENCES beverage_csv(beverage)
ON UPDATE CASCADE;


# Creating table to convert comma seperated pairing as seperate row associated with each wine
DROP TABLE IF EXISTS wine_pairing;

CREATE TABLE wine_pairing (primary key(beverage, pairing)) AS
    SELECT DISTINCT beverage, 
			TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(pairings, ',', numbers.n), ',', - 1)) AS pairing
    FROM numbers INNER JOIN 
		 beverage_csv ON CHAR_LENGTH(pairings) - CHAR_LENGTH(REPLACE(pairings, ',', '')) >= numbers.n - 1;
         
# Added foreign key reference constraint to maintain consistency between data spread across multiple tables.
ALTER TABLE wine_pairing
ADD CONSTRAINT FK_wine_pairing
FOREIGN KEY (beverage) REFERENCES wine_weights(beverage)
ON UPDATE CASCADE;


# Creating table to convert comma seperated nationality as seperate row associated with each wine
DROP TABLE IF EXISTS wine_nationality;
CREATE TABLE wine_nationality (primary key(beverage,nationality) ) AS
    SELECT distinct beverage, 
			TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(nationality, ',', numbers.n), ',', - 1)) AS nationality
    FROM numbers INNER JOIN 
		 beverage_csv ON CHAR_LENGTH(nationality) - CHAR_LENGTH(REPLACE(nationality, ',', '')) >= numbers.n - 1;
         
# Added foreign key reference constraint to maintain consistency between data spread across multiple tables.
ALTER TABLE wine_nationality
ADD CONSTRAINT FK_wine_nationality
FOREIGN KEY (beverage) REFERENCES wine_weights(beverage)
ON UPDATE CASCADE;


# To suggest the wine, we have pairing and nationality attribute of wine data model and restriction attribute of pizza data model.
# Let's create some queries to generate some numerical insights about these attributes.

SELECT beverage,
		1/count(TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(pairings, ',', numbers.n), ',', - 1))) AS pairing
FROM numbers 
INNER JOIN beverage_csv 
	ON CHAR_LENGTH(pairings) - CHAR_LENGTH(REPLACE(pairings, ',', '')) >= numbers.n - 1
group by beverage;
         
SELECT element,
		1/count(TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(restriction, ',', numbers.n), ',', - 1))) AS restriction
FROM numbers 
INNER JOIN pizza_csv 
	ON CHAR_LENGTH(restriction) - CHAR_LENGTH(REPLACE(restriction, ',', '')) >= numbers.n - 1
group by element;


# Now we have all the ingredients and related attributes ready in normalization form,
# Its a time to define few tables to propose interesting combination of elements to form a pizza,
# Pizza has limited number of meats and veggies, but here at wonka should provide liberty to add as many as meat and veggies option to design a pizza.
# So considering whole E-R model, we will be just accepting a unique pizza_id and elements required to make the pizza, 
# elements include meat, vegetable, sauce, cheese and base. and that too not limited to any number.

DROP TABLE IF EXISTS pizza_development;
CREATE TABLE pizza_development(
	pizza_id VARCHAR(7) NOT NULL,
	element VARCHAR(50) NOT NULL,
    PRIMARY KEY(pizza_id, element),
    CONSTRAINT FK_pizza_development FOREIGN KEY (element)
    REFERENCES pizza_ingredients(element)
    ON UPDATE CASCADE
);

drop table IF EXISTS pizza_history;
CREATE TABLE pizza_history(
	pizza_id varchar(10) NOT NULL,
    pizza_status varchar(20) NOT NULL DEFAULT 'development',
    PRIMARY KEY (pizza_id),
    CONSTRAINT FK_pizza_history FOREIGN KEY (pizza_id)
    REFERENCES pizza_development(pizza_id)
    ON UPDATE CASCADE
);

drop table IF EXISTS pizza_production;
create table pizza_production(
	pizza_id varchar(10) not null,
    pizza_name varchar(50) not null,
    ingredients varchar(500) not null,
    suggested_wines varchar(500) not null,
    primary key (pizza_id),
	CONSTRAINT FK_pizza_production FOREIGN KEY (pizza_id)
    REFERENCES pizza_development(pizza_id)
    ON UPDATE CASCADE
);


# Trigger to maintain pizza_history and pizza_production status after approval of marketing people,
DROP TRIGGER IF EXISTS trigger_pizza_history;
DELIMITER //
CREATE TRIGGER trigger_pizza_history
	AFTER INSERT
	ON pizza_development FOR EACH ROW
BEGIN
	INSERT IGNORE into pizza_history(pizza_id) values (new.pizza_id);
END //
DELIMITER ;


DROP TRIGGER IF EXISTS trigger_pizza_status_to_production;
DELIMITER //
CREATE TRIGGER trigger_pizza_status_to_production
	AFTER INSERT
	ON pizza_production FOR EACH ROW
BEGIN
	UPDATE pizza_history set pizza_status = 'production' where pizza_id = new.pizza_id;
END //
DELIMITER ;

# Views to show abstract information about data
CREATE OR REPLACE VIEW pizza_elements_count AS
    SELECT 
        t.pizza_id,
        SUM(CASE
            WHEN t.category = 'Meat' THEN cnt
        END) AS meat_count,
        SUM(CASE
            WHEN t.category = 'Vegetable' THEN cnt
        END) AS veg_count,
        SUM(CASE
            WHEN t.category = 'Cheese' THEN cnt
        END) AS cheese_count,
        SUM(CASE
            WHEN t.category = 'Sauce' THEN cnt
        END) AS sauce_count,
        SUM(CASE
            WHEN t.category = 'Base' THEN cnt
        END) AS base_count,
        SUM(cnt) AS total_ingredients
    FROM
        (SELECT 
            pd.pizza_id AS pizza_id,
                ing.category AS category,
                GROUP_CONCAT(pd.element) AS elements,
                COUNT(pd.element) AS cnt
        FROM
            pizza_development pd
        JOIN pizza_ingredients ing ON (pd.element = ing.element)
        GROUP BY pd.pizza_id , ing.category) t
    GROUP BY t.pizza_id;
-- -------------------------------------------------------------------
CREATE OR REPLACE VIEW pizza_elements_category AS
    SELECT 
        t.pizza_id AS pizza_id,
        GROUP_CONCAT(CASE
                WHEN t.category = 'Meat' THEN elements
            END) AS meat_elements,
        GROUP_CONCAT(CASE
                WHEN t.category = 'Vegetable' THEN elements
            END) AS veg_elements,
        GROUP_CONCAT(CASE
                WHEN t.category = 'Cheese' THEN elements
            END) AS cheese_elements,
        GROUP_CONCAT(CASE
                WHEN t.category = 'Sauce' THEN elements
            END) AS sauce_elements,
        GROUP_CONCAT(CASE
                WHEN t.category = 'Base' THEN elements
            END) AS base_elements,
        SUM(cnt) AS total_ingredients
    FROM
        (SELECT 
            pd.pizza_id AS pizza_id,
                ing.category AS category,
                GROUP_CONCAT(pd.element) AS elements,
                COUNT(pd.element) AS cnt
        FROM
            pizza_development pd
        JOIN pizza_ingredients ing ON (pd.element = ing.element)
        GROUP BY pd.pizza_id , ing.category) t
    GROUP BY t.pizza_id;
-- -------------------------------------------------------------------

CREATE OR REPLACE VIEW pizza_ingredients_namlets_merged AS
    SELECT 
        t.pizza_id AS pizza_id,
        GROUP_CONCAT(distinct element) ingredients,
        GROUP_CONCAT(distinct suggested_name) AS suggested_names
    FROM
        (SELECT 
            pizza_id,
                cn.element,
                CONCAT(first_word, ' ', second_word) AS suggested_name
        FROM
            pizza_development cd
        JOIN element_namelets cn ON (cd.element = cn.element)) t
    GROUP BY t.pizza_id;
-- -------------------------------------------------------------------
CREATE OR REPLACE VIEW pizza_ingredients_namlets AS
    SELECT distinct
        pizza_Id,
        cn.element,
        CONCAT(first_word, ' ', second_word) AS suggested_name
    FROM
        pizza_development cd
            JOIN
        element_namelets cn ON (cd.element = cn.element);
-- -------------------------------------------------------------------
CREATE OR REPLACE VIEW pizza_ingredients_first_second_words AS
    SELECT 
        distinct pizza_id, cn.element, first_word, second_word
    FROM
        pizza_development cd
            JOIN
		element_namelets cn ON (cd.element = cn.element);
 -- -------------------------------------------------------------------       
CREATE OR REPLACE VIEW pizza_wine_pairing AS
	SELECT DISTINCT pizza_id, wine_pairing.beverage,
		pairing_weight AS confidence,
    group_concat(distinct wine_pairing.pairing) as mapped_elements 
    FROM pizza_development
	JOIN element_restriction ON (pizza_development.element = element_restriction.element)
	JOIN wine_pairing ON (element_restriction.restriction = wine_pairing.pairing)
	JOIN wine_weights ON (wine_pairing.beverage = wine_weights.beverage)
    group by wine_pairing.beverage, pizza_id
    order by pizza_id asc, confidence desc;
-- -------------------------------------------------------------------

# Let's define some pizzas now,

# A pizza with 3 meats, 2 vegetable and one of each cheese, sauce and base.
INSERT INTO pizza_development values
('PZ001', 'Filet Mignon'),('PZ001', 'Taco beef'),('PZ001', 'Pepperoni'),
('PZ001', 'red onions'),('PZ001', 'chickpeas'),
('PZ001', 'Jarlsberg cheese'),
('PZ001', 'Marinara sauce'),
('PZ001', 'thick crust');

# A pizza with 2 meats, 2 vegetable and one of each cheese, sauce and base.
INSERT INTO pizza_development values
('PZ002', 'Filet Mignon'),('PZ002', 'ham hock'),
('PZ002', 'sliced courgettes'),('PZ002', 'Portobello mushrooms'),
('PZ002', 'Gouda'),
('PZ002', 'hummus'),
('PZ002', 'gluten-free crust');

INSERT INTO pizza_development values
('PZ003', 'Chorizo'),('PZ003', 'curried chicken'),
('PZ003', 'carrot strips'),
('PZ003', 'Jalapeno Jack'),
('PZ003', 'hummus');


INSERT INTO pizza_development values
('PZ004', 'black pudding'),('PZ004', 'breaded oysters'),
('PZ004', 'bell peppers'),('PZ004', 'button mushrooms'),('PZ004', 'Canadian bacon'),
('PZ004', "goat's cheese"),('PZ004', "Gorgonzola"),
('PZ004', 'Hoisin sauce'),('PZ004', 'Marinara sauce'),
('PZ004', 'deep dish crust');

INSERT INTO pizza_development values
('PZ005', 'anchovies'),('PZ005', 'Beef jerky'),
('PZ005', 'artichoke hearts'),('PZ005', 'baby corn'),
('PZ005', 'Brie'),('PZ005', 'Camembert'),('PZ005', 'Cheddar'), ('PZ005', 'Edam'),
('PZ005', 'basil pesto'),('PZ005', 'Bechamel sauce'),('PZ005', 'Carbonarra sauce'),
('PZ005', 'multigrain crust');

# A stored procedure to suggest a wine on the basis calculation of matching pair of wine and restrictions of pizza.
DROP PROCEDURE IF EXISTS suggest_wine_confidence;
DELIMITER //
CREATE PROCEDURE suggest_wine_confidence(IN pizza_id VARCHAR(7))
BEGIN
	
DROP TABLE IF EXISTS temp_pairing;
	
CREATE TABLE temp_pairing AS 
SELECT DISTINCT wine_pairing.beverage,
    pairing_weight AS confidence,
    wine_pairing.pairing FROM
    pizza_development
        JOIN
    element_restriction ON (pizza_development.element = element_restriction.element)
        JOIN
    wine_pairing ON (element_restriction.restriction = wine_pairing.pairing)
        JOIN
    wine_weights ON (wine_pairing.beverage = wine_weights.beverage)
WHERE
    pizza_development.pizza_id = pizza_id;
    
SELECT 
    beverage, SUM(confidence) AS confidence
FROM
    temp_pairing
GROUP BY beverage
HAVING confidence >= 0.5
ORDER BY confidence DESC;
   
END //
DELIMITER ;
-- -------------------------------------------------------------------

call suggest_wine_confidence('PZ001');

-- -------------------------------------------------------------------

# A stored procedure to suggest a wine on the basis calculation of matching pair of wine and restrictions of pizza.
# Here confidence or numerical weight is calculated considering the nationality constraint in wine and restriction of pizza.
-- -------------------------------------------------------------------
DROP PROCEDURE IF EXISTS suggest_wine_confidence_nationality;
DELIMITER //
CREATE PROCEDURE suggest_wine_confidence_nationality(IN pizza_id VARCHAR(7))
BEGIN
	
DROP TABLE IF EXISTS temp_pairing;
	
CREATE TABLE temp_pairing AS SELECT DISTINCT wine_pairing.beverage,
    nationality_weight AS confidence,
    nationality FROM
    pizza_development
        JOIN
    element_restriction ON (pizza_development.element = element_restriction.element)
        JOIN
    wine_pairing ON (element_restriction.restriction = wine_pairing.pairing)
        JOIN
    wine_nationality ON (wine_nationality.nationality = element_restriction.restriction)
        JOIN
    wine_weights ON (wine_pairing.beverage = wine_weights.beverage)
WHERE
    pizza_development.pizza_id = pizza_id;
    
SELECT 
    beverage, SUM(confidence) AS confidence
FROM
    temp_pairing
GROUP BY beverage
HAVING confidence >= 0.5
ORDER BY confidence DESC;
    
END //
DELIMITER ;
-- -------------------------------------------------------------------
call suggest_wine_confidence_nationality('PZ001');
-- -------------------------------------------------------------------

# A stored procedure to suggest a pizza name based on the ingredients present in the pizza.
DROP PROCEDURE IF EXISTS suggest_pizza_name;
DELIMITER //
CREATE PROCEDURE suggest_pizza_name(IN pizza_id VARCHAR(7))
BEGIN 
SELECT 
    pizza_development.element, first_word, second_word
FROM
    pizza_development
        JOIN
    element_namelets ON (pizza_development.element = element_namelets.element)
WHERE
    pizza_development.pizza_id = pizza_id;
    
END //
DELIMITER ;

-- -------------------------------------------------------------------
# A stored procedure to publish the pizza on production with the name selected by marketing people.
DROP PROCEDURE IF EXISTS push_pizza_to_production;
DELIMITER //
CREATE PROCEDURE push_pizza_to_production(
	IN pizza_id VARCHAR(7),
    IN pizza_name varchar(50)
)
BEGIN
	
    DECLARE suggested_wines VARCHAR(500);
    DECLARE ingredients VARCHAR(500);
    
    call suggest_wine_confidence(pizza_id);
    
	SELECT 
    GROUP_CONCAT(t.beverage) INTO suggested_wines 
    FROM
    (SELECT 
        beverage, SUM(confidence) AS confidence
    FROM
        temp_pairing
    GROUP BY beverage
    HAVING confidence >= 0.5
    ORDER BY confidence DESC) t;
    
SELECT 
    GROUP_CONCAT(element)
INTO ingredients FROM
    pizza_development
WHERE
    pizza_development.pizza_id = pizza_id
GROUP BY pizza_id;
    
    INSERT INTO pizza_production(pizza_id, pizza_name, ingredients, suggested_wines)
    values(pizza_id, pizza_name,ingredients, suggested_wines);
    
END //
DELIMITER ;
-- -------------------------------------------------------------------
call suggest_wine_confidence('PZ001');
-- -------------------------------------------------------------------
# Call a earlier stored procedure to select an name.
call suggest_pizza_name('PZ001');
-- -------------------------------------------------------------------
# Also have a look at the suggested wines for the same pizza
call suggest_wine_confidence('PZ001');
-- -------------------------------------------------------------------
# Now push the pizza to production with the name selected by marketing people.
call push_pizza_to_production('PZ001','Ooh La La Extravagance');
-- -------------------------------------------------------------------

# Let's introduce the cocktails to wonka labs.
# The cocktail domain exlored in the weekly assignment is a bit different.
# Let's define another data model for cocktails which resembles with pizza data model.

# Here, In case of cocktail the task is to assign an interesting name to the cocktail as per the ingredients.
# So the name is directly dependent on the ingredient, So Let's not seperate the ingredients as various tables like weekly assignment.

# We will have 2 tables as follows,
# cocktail_ingredients that contains ingredient_name and type of ingredient such as alcoholic, non-alcoholic, garnish, ice, glass
# cocktail_namelets that contains ingredient_name and interesting first_word and second_word for respective ingredient

DROP TABLE IF EXISTS cocktail_ingredients;
create table cocktail_ingredients(
	ingredient_id varchar(30) not null,
    ingredient_type  varchar(20) not null,
    primary key(ingredient_id)
);
-- -------------------------------------------------------------------
INSERT INTO cocktail_ingredients values ('Fresh Cream','non-alcohol'), ('Fresh Lemon Juice','non-alcohol'), ('Raspberry Syrup','non-alcohol'), ('Fresh Lime Juice','non-alcohol'), ('Fresh Pineapple Juice','non-alcohol'), ('Fresh Orange Juice','non-alcohol'), ('Apple juice','non-alcohol'), ('Elderflower cordial','non-alcohol'), ('Sugar Cane Juice','non-alcohol'), ('Egg Yolk','non-alcohol'), ('Cream','non-alcohol'), ('Sugar Syrup','non-alcohol'), ('Cognac','alcoholic'), ('Crème de Cacao (Brown)','alcoholic'), ('Bitter Campari','alcoholic'), ('Sweet Red Vermouth','alcoholic'), ('Apricot Brandy','alcoholic'), ('Calvados','alcoholic'), ('Gin','alcoholic'), ('Maraschino Luxard','alcoholic'), ('Triple Sec','alcoholic'), ('White Rum','alcoholic'), ('Bourbon','alcoholic'), ('Brandy','alcoholic'), ('Old Tom Gin','alcoholic'), ('White Cuban Ron','alcoholic'), ('Dry Vermouth','alcoholic'), ('Fernet Branca','alcoholic'), ('London Dry Gin','alcoholic'), ('Green Chartreuse','alcoholic'), ('Rye Whiskey','alcoholic'), ('Dry Gin','alcoholic'), ('Jamaican Rum','alcoholic'), ('Red Tawny Port Wine','alcoholic'), ('ground nutmeg','garnish'), ('lemon','garnish'), ('orange','garnish'), ('Soda Water','garnish'), ('Crème de Violette','garnish'), ('Aromatic Bitters','garnish'), ('Curacao','garnish'), ('Simple Syrup','garnish'), ('Egg White','garnish'), ('raspberries','garnish'), ('Superfine Sugar','garnish'), ('green olives','garnish'), ('lemon slice','garnish'), ('Angostura Bitters','garnish'), ('cocktail cherry','garnish'), ('Orange Bitters','garnish'), ('Absinthe','garnish'), ('Grenadine Syrup','garnish'), ('orange slice','garnish'), ('Lime','garnish'), ('Mint','garnish'), ('Mint Leaves','garnish'), ('Plain Water','garnish'), ('Sugar Cube','garnish'), ('Orange flower','garnish'), ('Vanilla','garnish');
-- -------------------------------------------------------------------
DROP TABLE IF EXISTS cocktail_namelets;
create table cocktail_namelets(
	ingredient_id varchar(30) not null,
    first_word  varchar(50) not null,
    second_word  varchar(50) not null,
    primary key(ingredient_id, first_word, second_word),
    CONSTRAINT FK_cocktail_namelets FOREIGN KEY (ingredient_id)
    REFERENCES cocktail_ingredients(ingredient_id)
    ON UPDATE CASCADE
);
-- -------------------------------------------------------------------
INSERT INTO cocktail_namelets values ('Absinthe','Night','Fury'), ('Angostura Bitters','High','Spirit'), ('Angostura Bitters','','fire'), ('Apple juice','Juicy',''), ('Apricot Brandy','desert','rose'), ('Apricot Brandy','casio','brandy'), ('Aromatic Bitters','dark','mystery'), ('Bitter Campari','dark',''), ('Bourbon','kentucky','blues'), ('Brandy','doctors','tonic'), ('Brandy','doctor','medicine'), ('Calvados','tropical',''), ('cocktail cherry','fruit','berry'), ('Cognac','rappers','choice'), ('Cream','milky',''), ('Crème de Cacao (Brown)','KAKA', ''), ('Crème de Violette', '' ,'van de sar'), ('Curacao','carribean',''), ('Curacao','ca ca', 'cao'), ('Dry Gin','sunny',''), ('Dry Vermouth','acer','predator'), ('Egg White','anda',''), ('Egg Yolk','sunflower','Egg'), ('Elderflower cordial','Bright','Flag'), ('Elderflower cordial','','flower'), ('Fernet Branca','Cabber','net'), ('Fresh Cream','milky',''), ('Fresh Lemon Juice','Tropical','Nimboos'), ('Fresh Lime Juice','Tropical','Nimboos'), ('Fresh Orange Juice','',''), ('Fresh Pineapple Juice','Pineapple','Express'), ('Gin','usacha','ras'), ('Green Chartreuse','milton','milton'), ('green olives','dun','hill'), ('Grenadine Syrup','',''), ('ground nutmeg','','Nuts'), ('Jamaican Rum','Flamable','Bob'), ('lemon','hangover','killer'), ('lemon slice', 'hangover','killer'), ('Lime', 'hangover','killer'), ('London Dry Gin', 'Butane', 'Isobutane'), ('Maraschino Luxard','Dark','Wood'), ('Mint','Go','Green'), ('Mint','Spark',''), ('Mint Leaves','Go','Green'), ('Old Tom Gin','sunny',''), ('orange','',''), ('Orange Bitters','',''), ('Orange flower','',''), ('orange slice','',''), ('Plain Water','aqua',''), ('raspberries','tropical','berries'), ('raspberries','','jam'), ('Raspberry Syrup', 'tropical','syrup'), ('Red Tawny Port Wine','beverly','hills'), ('Rye Whiskey','Polo','Club'), ('Simple Syrup','',''), ('Soda Water','co2','h20'), ('Sugar Cane Juice','usacha','ras'), ('Sugar Cube','sweet',''), ('Sugar Syrup','','ras'), ('Superfine Sugar','sweet',''), ('Sweet Red Vermouth','Ghost','Rider'), ('Triple Sec','Flashy','flash'), ('Vanilla','fairy','land'), ('Vanilla','sweet','affair'), ('White Cuban Ron','','pirates'), ('White Rum','samurai','jackson');

-- -------------------------------------------------------------------
-- Let's create some cocktails

DROP TABLE IF EXISTS cocktail_development;
create table cocktail_development(
	cocktail_id VARCHAR(4) not null,
    ingredient VARCHAR(50) not null,
    primary key (cocktail_id, ingredient),
    CONSTRAINT FK_cocktail_development FOREIGN KEY (ingredient)
    REFERENCES cocktail_ingredients(ingredient_id)
    ON UPDATE CASCADE
);
-- -------------------------------------------------------------------
drop table IF EXISTS cocktail_history;
CREATE TABLE cocktail_history(
	cocktail_id varchar(10) NOT NULL,
    cocktail_status varchar(20) NOT NULL DEFAULT 'development',
    PRIMARY KEY (cocktail_id),
    CONSTRAINT FK_cocktail_history FOREIGN KEY (cocktail_id)
    REFERENCES cocktail_development(cocktail_id)
    ON UPDATE CASCADE
);
-- -------------------------------------------------------------------
drop table IF EXISTS cocktail_production;
create table cocktail_production(
	cocktail_id varchar(10) not null,
    cocktail_name varchar(50) not null,
    ingredients varchar(500) not null,
    primary key (cocktail_id),
    CONSTRAINT FK_cocktail_production FOREIGN KEY (cocktail_id)
    REFERENCES cocktail_development(cocktail_id)
    ON UPDATE CASCADE
);
-- -------------------------------------------------------------------

# Trigger to maintain cocktail_history and cocktail_production status after approval of marketing people,
DROP TRIGGER IF EXISTS trigger_cocktail_history;
DELIMITER //
CREATE TRIGGER trigger_cocktail_history
	AFTER INSERT
	ON cocktail_development FOR EACH ROW
BEGIN
	INSERT IGNORE into cocktail_history(cocktail_id) values (new.cocktail_id);
END //
DELIMITER ;

-- -------------------------------------------------------------------
DROP TRIGGER IF EXISTS trigger_cocktail_status_to_production;
DELIMITER //
CREATE TRIGGER trigger_cocktail_status_to_production
	AFTER INSERT
	ON cocktail_production FOR EACH ROW
BEGIN
	UPDATE cocktail_history set cocktail_status = 'production' where cocktail_id = new.cocktail_id;
END //
DELIMITER ;

-- -------------------------------------------------------------------
# Views for cocktail domain

CREATE OR REPLACE VIEW cocktail_ingredients_count AS
    SELECT 
        t.cocktail_id,
        SUM(CASE
            WHEN t.category = 'alcoholic' THEN cnt
        END) AS alcoholic_ing_count,
        SUM(CASE
            WHEN t.category = 'non-alcohol' THEN cnt
        END) AS nonalcoholic_ing_count,
        SUM(CASE
            WHEN t.category = 'garnish' THEN cnt
        END) AS garnish_count,
        SUM(cnt) AS total_ingredients
    FROM
        (SELECT 
            cd.cocktail_id AS cocktail_id,
                ing.ingredient_type AS category,
                GROUP_CONCAT(cd.ingredient) AS ingredient,
                COUNT(cd.ingredient) AS cnt
        FROM
            cocktail_development cd
        JOIN cocktail_ingredients ing ON (cd.ingredient = ing.ingredient_id)
        GROUP BY cd.cocktail_id , ing.ingredient_type) t
    GROUP BY t.cocktail_id;
-- -------------------------------------------------------------------
CREATE OR REPLACE VIEW cocktail_ingredients_category AS
    SELECT 
        t.cocktail_id AS cocktail_id,
        GROUP_CONCAT(CASE
                WHEN t.category = 'alcoholic' THEN ingredient
            END) AS alcoholic_ngredients,
        GROUP_CONCAT(CASE
                WHEN t.category = 'non-alcohol' THEN ingredient
            END) AS nonalcoholic_ingredients,
        GROUP_CONCAT(CASE
                WHEN t.category = 'garnish' THEN ingredient
            END) AS garnishes,
        SUM(cnt) AS total_ingredients
    FROM
        (SELECT 
            cd.cocktail_id AS cocktail_id,
                ing.ingredient_type AS category,
                GROUP_CONCAT(cd.ingredient) AS ingredient,
                COUNT(cd.ingredient) AS cnt
        FROM
            cocktail_development cd
        JOIN cocktail_ingredients ing ON (cd.ingredient = ing.ingredient_id)
        GROUP BY cd.cocktail_id , ing.ingredient_type) t
    GROUP BY t.cocktail_id;
-- -------------------------------------------------------------------
DROP VIEW IF EXISTS cocktail_ingredients_namlets_merged;
CREATE VIEW cocktail_ingredients_namlets_merged AS
    SELECT 
        t.cocktail_id AS cocktail_id,
        GROUP_CONCAT(ingredient) ingredients,
        GROUP_CONCAT(suggested_name) AS suggested_names
    FROM
        (SELECT 
            cocktail_id,
                ingredient,
                CONCAT(first_word, ' ', second_word) AS suggested_name
        FROM
            cocktail_development cd
        JOIN cocktail_namelets cn ON (cd.ingredient = cn.ingredient_id)) t
    GROUP BY t.cocktail_id;
-- -------------------------------------------------------------------
DROP VIEW IF EXISTS cocktail_ingredients_namlets;
CREATE VIEW cocktail_ingredients_namlets AS
    SELECT 
        cocktail_id,
        ingredient,
        CONCAT(first_word, ' ', second_word) AS suggested_name
    FROM
        cocktail_development cd
            JOIN
        cocktail_namelets cn ON (cd.ingredient = cn.ingredient_id);
-- -------------------------------------------------------------------
DROP VIEW IF EXISTS cocktail_ingredients_first_second_words;
CREATE VIEW cocktail_ingredients_first_second_words AS
    SELECT 
        cocktail_id, ingredient, first_word, second_word
    FROM
        cocktail_development cd
            JOIN
        cocktail_namelets cn ON (cd.ingredient = cn.ingredient_id);
-- -------------------------------------------------------------------
# Let's make some cocktails now,

INSERT INTO cocktail_development values
('C001', 'Apricot Brandy'),('C001', 'Bitter Campari'),('C001', 'Bourbon'),
('C001', 'Aromatic Bitters'),('C001', 'lemon slice'),
('C001', 'Mint');
-- -------------------------------------------------------------------
INSERT INTO cocktail_development values
('C002', 'Brandy'),('C002', 'Calvados'),('C002', 'Cognac'),
('C002', 'Sugar Cane Juice'),('C002', 'lemon slice'),
('C002', 'Curacao');
-- -------------------------------------------------------------------
INSERT INTO cocktail_development values
('C003', 'Crème de Cacao (Brown)'),('C003', 'Dry Gin'),('C003', 'Dry Vermouth'),
('C003', 'Fresh Pineapple Juice'),('C003', 'lemon slice'),
('C003', 'ground nutmeg');
-- -------------------------------------------------------------------
INSERT INTO cocktail_development values
('C004', 'Fernet Branca'),('C004', 'Gin'),('C004', 'Green Chartreuse'),
('C004', 'Elderflower cordial'),('C004', 'Fresh Lemon Juice'),
('C004', 'Orange flower');
-- -------------------------------------------------------------------
INSERT INTO cocktail_development values
('C005', 'Jamaican Rum'),('C005', 'London Dry Gin'),('C005', 'Maraschino Luxard'),
('C005', 'Apple juice'),('C005', 'Cream'),
('C005', 'Mint Leaves');
-- -------------------------------------------------------------------
# A stored procedure to suggest a pizza name based on the ingredients present in the pizza.
DROP PROCEDURE IF EXISTS suggest_cocktail_name;
DELIMITER //
CREATE PROCEDURE suggest_cocktail_name(IN cocktail_id VARCHAR(7))
BEGIN
SELECT 
    ingredient, first_word, second_word
FROM
    cocktail_development
        JOIN
    cocktail_namelets ON (cocktail_development.ingredient = cocktail_namelets.ingredient_id)
WHERE
    cocktail_id = cocktail_id;
END //
DELIMITER ;
-- -------------------------------------------------------------------
call suggest_cocktail_name('C001');
-- -------------------------------------------------------------------
# A stored procedure to publish the cocktail on production with the name selected by marketing people.
DROP PROCEDURE IF EXISTS push_cocktail_to_production;
DELIMITER //
CREATE PROCEDURE push_cocktail_to_production(
	IN cocktail_id VARCHAR(7),
    IN cocktail_name varchar(50)
)
BEGIN

    DECLARE ingredients VARCHAR(500);
    
SELECT 
    GROUP_CONCAT(ingredient)
INTO ingredients FROM
    cocktail_development
WHERE
    cocktail_id = cocktail_id
GROUP BY cocktail_id;
    
    INSERT INTO cocktail_production(cocktail_id, cocktail_name, ingredients)
    values(cocktail_id, cocktail_name,ingredients);
    
END //
DELIMITER ;
-- -------------------------------------------------------------------
# Call a earlier stored procedure to select an name.
call push_cocktail_to_production('C001','Go Green');
-- -------------------------------------------------------------------
# List of database level views, stored procedure and triggers.

SHOW FULL TABLES 
WHERE table_type = 'VIEW';

SHOW PROCEDURE STATUS where db = 'wonka_labs_20200161';

show triggers;
-- -------------------------------------------------------------------

/*  Due to limitation of mysql workbench on number of results, the below section is commented,
	Please uncomment it for execution purpose.
    I have described execution pipeline for cocktail and pizza as mentioned in wonka's white paper.
*/
#views
-- select * from pizza_wine_pairing;
-- select * from pizza_ingredients_namlets_merged;
-- select * from pizza_ingredients_namlets;
-- select * from pizza_ingredients_first_second_words;
-- select * from pizza_elements_count;
-- select * from pizza_elements_category;
-- select * from cocktail_ingredients_namlets_merged;
-- select * from cocktail_ingredients_namlets;
-- select * from cocktail_ingredients_first_second_words;
-- select * from cocktail_ingredients_count;
-- select * from cocktail_ingredients_category;
-- -- -------------------------------------------------------------------

-- # Process pipeline for with Pizza:

-- select * from pizza_history;
-- select * from pizza_development where pizza_id = 'PZ005';
-- select * from pizza_wine_pairing where pizza_id = 'PZ005';
-- select * from pizza_ingredients_namlets where pizza_id = 'PZ005';
-- select * from pizza_ingredients_first_second_words  where pizza_id = 'PZ005';
-- select * from pizza_elements_count where pizza_id = 'PZ005';
-- select * from pizza_elements_category where pizza_id = 'PZ005';

-- call suggest_pizza_name('PZ005');
-- call suggest_wine_confidence('PZ005');
-- call suggest_wine_confidence_nationality('PZ005');
-- call push_pizza_to_production('PZ005','Chewy Chewtoy');
-- select * from pizza_history;
-- -- -------------------------------------------------------------------
-- # Process pipeline for cocktail:
-- select * from cocktail_history;
-- select * from cocktail_development where cocktail_id = 'C005';
-- select * from cocktail_ingredients_namlets where cocktail_id = 'C005';
-- select * from cocktail_ingredients_first_second_words where cocktail_id = 'C005';
-- select * from cocktail_ingredients_count where cocktail_id = 'C005';
-- select * from cocktail_ingredients_category where cocktail_id = 'C004';

-- call suggest_cocktail_name('C004');
-- call push_cocktail_to_production('C004','doctor medicine');
-- select * from cocktail_history;
-- -- -------------------------------------------------------------------
-- ####### Create a new pizza, Veg Pizza

-- select * from pizza_history;

-- INSERT INTO pizza_development values
-- ('PZ006', 'baby corn'),('PZ006', 'cherry tomatoes'),('PZ006', 'kimchi'), ('PZ006', 'pistachios'),
-- ('PZ006', "haloumi cheese"),('PZ006', "Mozzarella"), ('PZ006', "Queso Fresco"),('PZ006', "smoked tofu"), 
-- ('PZ006', 'Bechamel sauce'),('PZ006', 'Chimichurri sauce'),
-- ('PZ006', 'wholewheat crust');

-- select * from pizza_development where pizza_id = 'PZ006';

-- # Select Queries for views
-- select * from pizza_wine_pairing where pizza_id = 'PZ006';
-- select * from pizza_ingredients_namlets where pizza_id = 'PZ006';
-- select * from pizza_ingredients_first_second_words  where pizza_id = 'PZ006';
-- select * from pizza_elements_count where pizza_id = 'PZ006';
-- select * from pizza_elements_category where pizza_id = 'PZ006';

-- call suggest_wine_confidence('PZ006');

-- call suggest_wine_confidence_nationality('PZ006');

-- call suggest_pizza_name('PZ006');

-- call push_pizza_to_production('PZ006','Korean M*A*S*H');

-- select * from pizza_production where pizza_id = 'PZ006';

-- -- -------------------------------------------------------------------
-- ## Create New cocktail

-- select * from cocktail_history;

-- INSERT INTO cocktail_development values
-- ('C006', 'Rye Whiskey'),('C006', 'Triple Sec'),('C006', 'Maraschino Luxard'),
-- ('C006', 'Sugar Cane Juice'),('C006', 'Apple juice'),('C006', 'Raspberry Syrup'),
-- ('C006', 'Sugar Cube'),('C006', 'Lime'),('C006', 'Plain Water');

-- select * from cocktail_development where cocktail_id = 'C006';
-- select * from cocktail_ingredients_namlets where cocktail_id = 'C006';
-- select * from cocktail_ingredients_first_second_words  where cocktail_id = 'C006';
-- select * from cocktail_ingredients_count where cocktail_id = 'C006';
-- select * from cocktail_ingredients_category where cocktail_id = 'C006';

-- call suggest_cocktail_name('C006');

-- call push_cocktail_to_production('C006','hangover killer');

-- select * from cocktail_production;

-- select * from cocktail_history;

-- -- -------------------------------------------------------------------