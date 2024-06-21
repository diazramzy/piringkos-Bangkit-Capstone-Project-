BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "recipe" (
	"uid"	INTEGER NOT NULL,
	"img"	TEXT NOT NULL,
	"tittle"	TEXT NOT NULL,
	"des"	TEXT NOT NULL,
	"ing"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	PRIMARY KEY("uid" AUTOINCREMENT)
);
INSERT INTO "recipe" VALUES (1,'https://www.blibli.com/friends-backend/wp-content/uploads/2023/04/B300026-Cover-resep-nasi-goreng.jpg','Nasi Goreng','Step 1

In a large bowl, whisk milk, pineapple juice, chili-garlic sauce, lime juice, brown sugar, garlic, soy sauce, and ginger until well combined. Add chicken and toss to coat. Cover and refrigerate at least 20 minutes or up to 4 hours.

Step 2

Remove chicken from marinade and transfer to a baking sheet, letting excess marinade drip back into bowl; season chicken all over with 3/4 teaspoon salt. Reserve marinade.

Step 3

Prepare a grill for medium-high heat; preheat 5 minutes. (Alternatively, use a grill pan.) Lightly brush grates with oil.

Step 4

Meanwhile, transfer marinade to a medium saucepan and bring to a boil over medium-high heat. Continue to boil, stirring occasionally, until marinade is thickened, about 5 minutes. Remove from heat.

Step 5

Grill chicken and pineapple, turning once, until chicken is lightly charred in places and an instant-read thermometer inserted into thickest part of chicken registers 165° and pineapple is tender and lightly charred, 8 to 10 minutes.

Step 6

Transfer pineapple and chicken to a platter, drizzle with sauce, and sprinkle with cilantro.','50 mins

Ingredients

1 c. canned unsweetened whole coconut milk

3/4 c. pineapple juice

1/4 c. chili-garlic sauce

1/4 c. fresh lime juice

1/4 c. packed light brown sugar

3 cloves garlic, finely chopped

2 tbsp. reduced-sodium soy sauce

1 tbsp. finely grated peeled ginger (from one 2" piece)

2 lb. boneless, skinless chicken thighs (about 8 small)

Kosher salt

Vegetable oil, for grilling

1 pineapple, sliced into rounds

1/4 c. packed fresh cilantro leaves','Popular');
INSERT INTO "recipe" VALUES (2,'https://thecozycook.com/wp-content/uploads/2014/06/Olive-Garden-Salad-Dressing-1024x682.jpg','Olive Garden Salad Dressing','1. Mix everything thoroughly together and refrigerate. That''s it!','5 min
.7 oz. Italian Dressing Mix
3/4 cup extra virgin olive oil,, high-quality olive oil yields much better results in this recipe
¼ cup + 2 Tablespoons distilled white vinegar
¼ cup water
½ teaspoon sugar
½ teaspoon Italian seasoning
½ teaspoon salt
¼ teaspoon pepper
¼ teaspoon garlic powder
½ Tablespoon mayo,, not miracle whip','Salad');
INSERT INTO "recipe" VALUES (3,'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/caponata-pasta-a0027c4.jpg?resize=960,872?quality=90&webp=true&resize=600,545','Caponata pasta','STEP 1
Heat the oil in a large pan and cook the onion for 8-10 mins until starting to caramelise (or for longer if you have time – the sweeter the better). Add the garlic for the final 2 mins of cooking time.
STEP 2
Tip in the mixed veg, tomatoes, capers and raisins. Season well and simmer, uncovered, for 10 mins, or until you have a rich sauce.
STEP 3
Meanwhile, boil the kettle. Pour the kettleful of water into a large pan with a little salt and bring back to the boil. Add the pasta and cook until tender with a little bite, then drain, reserving some of the pasta water. Tip the pasta into the sauce, adding a splash of pasta water if it needs loosening. Scatter with the basil leaves and parmesan, if you like, and serve straight from the pan','20 min
4 tbsp olive oil (or use the oil from your chargrilled veg, see below)
1 large onion, finely chopped
4 garlic cloves, finely sliced
250g chargrilled Mediterranean veg (peppers and aubergines, if possible) from a jar, pot or deli counter, drained if in oil (you can use this oil in place of the olive oil) and roughly chopped
400g can chopped tomatoes
1 tbsp small capers
2 tbsp raisins
350g rigatoni, penne or another short pasta shape
bunch basil leaves, picked
parmesan (or vegetarian alternative), shaved, to serve','Dish');
INSERT INTO "recipe" VALUES (4,'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/berry-smoothie-5543fc2.jpg?resize=960,872?quality=90&webp=true&resize=600,545','Avocado & strawberry smoothie','STEP 1
Put all the ingredients in a blender and whizz until smooth. If the consistency is too thick, add a little water.','5 min
½ avocado , stoned, peeled and cut into chunks
150g strawberry , halved
4 tbsp low-fat natural yogurt
200ml semi-skimmed milk
lemon or lime juice , to taste
honey , to taste','Drinks');
INSERT INTO "recipe" VALUES (5,'https://images.immediate.co.uk/production/volatile/sites/30/2021/07/Vegan-apple-cake-c466e14.jpg?resize=960,872?quality=90&webp=true&resize=600,545','Vegan apple cake','STEP 1
Use the spread to butter a 20cm deep cake tin and line with baking parchment. Heat the oven to 180C/160C fan/gas 4. Pour the oat milk into a jug, add the lemon juice and leave to sit for 5 mins at room temperature.
STEP 2
Put the flour, both sugars and the baking powder in a large bowl, pour over the thickened oat milk mixture and almond extract, then add the butter and ½ tsp salt. Beat everything together using an electric whisk. Tip the apples into a second large bowl, sprinkle over the extra 1 tbsp flour and toss to coat. Fold the apples through the cake batter using a spatula, then spoon the mixture into the prepared tin and sprinkle over the almonds.
STEP 3
Bake in the centre of the oven for 1 hr-1 hr 20 mins, or until golden and firm to the touch. Leave to cool for a few minutes in the tin. Serve warm, or turn out onto a wire rack and leave to cool completely. Once cool, will keep in an airtight container for up to three days.','1 hr 40 min
150g dairy-free spread, melted, plus extra for the tin
300ml oat milk
1 tbsp lemon juice
350g self-raising flour, plus 1 tbsp to coat the apples
100g caster sugar
100g light brown soft sugar
1 tsp baking powder
1 tsp almond extract
300g Granny Smith apples, peeled, cored and chopped into 2cm cubes
2 tbsp flaked almonds','Desserts');
INSERT INTO "recipe" VALUES (6,'https://hips.hearstapps.com/hmg-prod/images/creamsicles-lead-64678786bb964.jpg?crop=1xw:1xh;center,top&resize=1200:*','Homemade Creamsicles','ORANGE BASE

Step 1

In a blender, blend orange juice concentrate, cream, granulated sugar, vanilla, and salt on medium-low speed until combined.

Step 2

Add a little bit of food coloring (if using) and continue to blend until desired color is reached. Transfer to a medium bowl. Cover and refrigerate until ready to use. 

VANILLA YOGURT BASE & ASSEMBLY

Step 1

In another medium bowl, whisk yogurt, cream, granulated sugar, vanilla, and salt. Cover and refrigerate until ready to use.

Step 2

Pour 1 heaping tablespoon yogurt base into a 3-oz. ice pop mold, then pour in 1 tablespoon orange base. Repeat with yogurt and orange bases until you have 10 ice pops. Cover and insert sticks. Freeze until firm, at least 8 hours or up to overnight.

Step 3

Dip molds briefly into warm water to release pops.','Ingredients

ORANGE BASE

12 oz. frozen orange juice concentrate

1/2 c. heavy cream

1/4 c. granulated sugar

1/2 tsp. pure vanilla extract

1/8 tsp. kosher salt

Orange food coloring (optional)

VANILLA YOGURT BASE & ASSEMBLY

1 c. full-fat plain yogurt

1 c. heavy cream

1/4 c. granulated sugar

1 tsp. pure vanilla extract

1/8 tsp. kosher salt 

EQUIPMENT NEEDED

10 (3-oz.) ice-pop molds','Dessert');
INSERT INTO "recipe" VALUES (7,'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/caponata-pasta-a0027c4.jpg?resize=960,872?quality=90&webp=true&resize=600,545','Caponata pasta','STEP 1
Heat the oil in a large pan and cook the onion for 8-10 mins until starting to caramelise (or for longer if you have time – the sweeter the better). Add the garlic for the final 2 mins of cooking time.
STEP 2
Tip in the mixed veg, tomatoes, capers and raisins. Season well and simmer, uncovered, for 10 mins, or until you have a rich sauce.
STEP 3
Meanwhile, boil the kettle. Pour the kettleful of water into a large pan with a little salt and bring back to the boil. Add the pasta and cook until tender with a little bite, then drain, reserving some of the pasta water. Tip the pasta into the sauce, adding a splash of pasta water if it needs loosening. Scatter with the basil leaves and parmesan, if you like, and serve straight from the pan','20 min
4 tbsp olive oil (or use the oil from your chargrilled veg, see below)
1 large onion, finely chopped
4 garlic cloves, finely sliced
250g chargrilled Mediterranean veg (peppers and aubergines, if possible) from a jar, pot or deli counter, drained if in oil (you can use this oil in place of the olive oil) and roughly chopped
400g can chopped tomatoes
1 tbsp small capers
2 tbsp raisins
350g rigatoni, penne or another short pasta shape
bunch basil leaves, picked
parmesan (or vegetarian alternative), shaved, to serve','Dessert');
INSERT INTO "recipe" VALUES (8,'https://hips.hearstapps.com/hmg-prod/images/wdy050121lifeoftheparty-004d-1617736004.jpg?crop=1.00xw:0.668xh;0,0.291xh&resize=1200:*','Fresh Berry Lemonade','DIRECTIONS

STRAWBERRY SIMPLE SYRUP

STEP 1

In large saucepan, combine strawberries, sugar, and 2 cups water. Bring to a boil, stirring to dissolve sugar.

STEP 2

Reduce heat and simmer until berries turn pale and liquid is red, about 10 minutes. Skim off and discard any foam that has risen to surface.

STEP 3

Let syrup cool in saucepan 1 hour. Strain through fine-mesh sieve and let cool completely (discard berries or save for another use). Refrigerate in airtight container up to 2 weeks.

FRESH BERRY LEMONADE

STEP 1

In pitcher, stir together Strawberry Simple Syrup, lemon juice, and 5 cups ice-cold water. Serve over ice with fruit.','5 mins

INGREDIENTS

FOR SIMPLE SYRUP

1 lb. strawberries

1 c. sugar

FOR LEMONADE

2 c. Strawberry Simple Syrup

11/3 c. fresh lemon juice

Sliced strawberries and lemons, for serving','Drinks');
INSERT INTO "recipe" VALUES (9,'https://hips.hearstapps.com/hmg-prod/images/icy-granita-1593185908.jpg?crop=0.764xw:0.510xh;0.236xw,0.218xh&resize=1200:*','Icy Watermelon Granita','DIRECTIONS

STEP 1

In small saucepan, combine sugar, 1/4 cup water, and 1/4 tsp salt and simmer until sugar has dissolved, 2 to 3 minutes. Remove from heat. Finely grate zest from lemons and squeeze 1/2 cup juice. Stir zest and juice into syrup. 

STEP 2

In blender, working in batches, puree watermelon with lemon syrup. Pour into metal loaf pan or square pan and freeze until set, about 8 hours. 

STEP 3

When ready to serve, using a fork, scrape surface into large flakes.','8 hrs 10 mins

INGREDIENTS

2 tbsp. sugar

Kosher salt

2 large lemons

6 lb. seedless watermelon, rind removed, cut up','Drinks');
INSERT INTO "recipe" VALUES (10,'https://hips.hearstapps.com/hmg-prod/images/close-up-of-cranberry-lemonade-on-blue-background-royalty-free-image-1681503457.jpg?crop=0.835xw:1.00xh;0.0561xw,0&resize=980:*','Fizzy Cranberry-Lemonade Punch','DIRECTIONS

STEP 1

In large pitcher, stir together cranberry-juice cocktail and undiluted lemonade concentrate until blended.

STEP 2

Then, stir in seltzer, and ice cubes if you like. Garnish with orange pieces. Serve immediately.','5 mins

INGREDIENTS

4 c. cranberry-juice cocktail

1 container frozen lemonade concentrate

1 bottle Seltzer or club soda

1 small orange

ice cubes','Drinks');
INSERT INTO "recipe" VALUES (11,'https://hips.hearstapps.com/wdy.h-cdn.co/assets/cm/15/09/54f0064935c73_-_citrus-spritzer-recipe-ghk0413-xl.jpg?crop=1xw:1.0xh;center,top&resize=1200:*','Citrus Spritzer','DIRECTIONS

STEP 1

In large pitcher, stir together orange juice, lemon-lime seltzer, sliced oranges, and sliced limes. Refrigerate at least 30 minutes. Serve over ice.','40 mins

INGREDIENTS

4 c. orange juice

4 c. lemon-lime seltzer

2 oranges

2 Limes','Drinks');
INSERT INTO "recipe" VALUES (12,'https://hips.hearstapps.com/wdy.h-cdn.co/assets/cm/15/09/54efb405e5031_-_iced-fruit-punch-xl.jpg?crop=1xw:1.0xh;center,top&resize=1200:*','Iced Fruit Punch','DIRECTIONS

STEP 1

Make the ice:

Freeze juice in ice trays. When solid, release from molds and store by flavor in sealable freezer bags for up to 1 month.

STEP 2

Make the punch:

Fill an 8-ounce glass to the top with about 1/2 cup assorted flavored ice cubes, add 1/4 cup ginger ale and 1/4 cup seltzer, and serve immediately.','INGREDIENTS

6 c. assorted fruit juices

3 c. ginger ale

3 c. Seltzer water','Drinks');
INSERT INTO "recipe" VALUES (13,'https://hips.hearstapps.com/hmg-prod/images/mint-lemonade-slush-with-lemon-slice-royalty-free-image-1681504407.jpg?crop=0.447xw:1.00xh;0.270xw,0&resize=980:*','Lemon-Mint Slushie','DIRECTIONS

STEP 1

Place the lemonade, mint and 2 cups of ice in a blender. Blend until the ice is crushed and the mixture is combined.','15 mins

INGREDIENTS

1 1/2 c. Lemonade

1/4 c. fresh mint leaves','Drinks');
INSERT INTO "recipe" VALUES (14,'https://i0.wp.com/resepkoki.id/wp-content/uploads/2020/11/Resep-Indomie-Goreng.jpg?fit=500%2C667&ssl=1','Mie Goreng','FOR GRILLING:

Step 1

Prepare a grill for medium-high heat; heat 5 minutes (or preheat a grill pan over medium-high heat).

Step 2

Grill corn, turning often, until slightly charred all over, about 10 minutes. 

Step 3

Meanwhile, in a small bowl, mix mayonnaise and crema.

Step 4

Transfer corn to a platter. Brush with mayonnaise mixture. Top with cotija, chili powder, and cilantro. Serve warm or at room temperature with lime wedges alongside.

FOR THE AIR FRYER:

Step 1

Cut corn to fit in air-fryer basket (you may need to cut cobs in half).

Step 2

Brush corn all over with oil. Working in batches, arrange corn in basket and cook at 400°, turning halfway through, until tender, 10 to 12 minutes.

Step 3

Meanwhile, in a small bowl, mix mayonnaise and creama.

Step 4

Transfer corn to a platter. Brush with mayonnaise mixture. Top with cotija, chili powder, and cilantro. Serve warm or at room temperature with lime wedges alongside.','25 mins

Ingredients

6 ears corn, shucked, rinsed

Vegetable oil, for brushing if air frying

1/4 c. mayonnaise

1/4 c. Mexican crema or sour cream

1/3 c. grated cotija cheese

3 tsp. chili powder

Chopped fresh cilantro and lime wedges, for serving','Popular');
INSERT INTO "recipe" VALUES (15,'https://hips.hearstapps.com/hmg-prod/images/190409-creamy-steak-fettucine-vertical-2-1661787057.png?crop=1.00xw:0.667xh;0,0.165xh&resize=980:*','Creamy Steak Fettuccine','Step 1

In a large pot of boiling salted water, cook pasta until al dente according to package directions. Reserve ½ cup pasta water before draining. Return pasta to pot.

Step 2

Coat both sides of steak with oil and season generously with salt and pepper. In a large skillet over medium-high heat, cook steak to desired doneness, 4 minutes per side for medium-rare. Transfer to a plate to let rest for 10 minutes. Thinly slice steak.

Step 3

In skillet, melt butter over medium heat. Add garlic and cook until softened and fragrant, 1 to 2 minutes. Whisk in flour and cook 1 minute more, then slowly add milk, whisking to break up lumps, and simmer until thickened, 5 minutes. Add Parmesan and parsley and season with salt and pepper. Add tomatoes and cook until bursting, 2 to 3 minutes.

Step 4

Add cooked pasta and ¼ cup reserved pasta water to skillet and toss to combine, adding more pasta water as needed. Add spinach and toss until wilted.  

Step 5

Top with sliced steak and drizzle with balsamic glaze.

','30 mins

Ingredients

Kosher salt

12 oz. fettuccine

1 lb. sirloin steak

2 tbsp. vegetable oil 

Freshly ground black pepper

2 tbsp. butter

2 cloves garlic, minced

2 tbsp. all-purpose flour

2 c. milk

1/2 c. freshly grated Parmesan

1 tbsp. freshly chopped parsley

1 1/2 c. halved cherry tomatoes

4 c. baby spinach

2 tbsp. balsamic glaze (1/3 c. balsamic vinegar simmered for about 10 minutes)','Dessert');
INSERT INTO "recipe" VALUES (16,'https://hips.hearstapps.com/hmg-prod/images/delish-tuscan-butter-salmon-005-1-1541609886.jpg?crop=1.00xw:0.667xh;0,0.0658xh&resize=980:*','Tuscan Butter Salmon','Step 1

In a large skillet over medium-high heat, heat oil. Season salmon all over with salt and pepper. When oil is shimmering but not smoking, add salmon skin side up and cook until deeply golden, about 6 minutes. Flip over and cook 2 minutes more. Transfer to a plate.

Step 2

Reduce heat to medium and add butter. When butter has melted, stir in garlic and cook until fragrant, about 1 minute. Add cherry tomatoes and season with salt and pepper. Cook until tomatoes are beginning to burst, then add spinach. Cook until spinach is beginning to wilt.

Step 3

Stir in heavy cream, Parmesan, and herbs and bring mixture to a simmer. Reduce heat to low and simmer until sauce is slightly reduced, about 3 minutes.

Step 4

Return salmon back to skillet and spoon over sauce. Simmer until salmon is cooked through, about 3 minutes more.

Step 5

Garnish with more herbs and squeeze lemon on top before serving.','45 mins

Ingredients

2 tbsp. extra-virgin olive oil

4 (6-oz) salmon fillets, patted dry with paper towels

Kosher salt

Freshly ground black pepper

3 tbsp. butter

3 cloves garlic, minced

1 1/2 c. halved cherry tomatoes

2 c. baby spinach

1/2 c. heavy cream

1/4 c. freshly grated Parmesan

1/4 c. chopped herbs (such as basil and parsley), plus more for garnish

Lemon wedges, for serving (optional)','Dessert');
INSERT INTO "recipe" VALUES (17,'https://asset.kompas.com/crops/tTfsGVWAaGs4eyGf7xwNg3aPjoo=/0x0:999x666/750x500/data/photo/2020/07/22/5f179e22a9a39.jpg','Ayam Kecap','Step 1

In a small saucepan over medium heat, combine water and sugar and bring to a boil. Add walnuts and let boil for 2 minutes. Using a slotted spoon, remove walnuts and let cool on a small baking sheet. 

Step 2

Pat shrimp dry with paper towels and season lightly with salt and pepper. Place eggs in a shallow bowl and cornstarch in another shallow bowl. Dip shrimp in eggs, then in cornstarch coating well. 

Step 3

In a large skillet over medium heat, heat 1” of oil. Add shrimp in batches and fry until golden, 3 to 4 minutes. Remove with a slotted spoon and place on a paper towel lined plate. 

Step 4

In a medium bowl, whisk together mayonnaise, honey, and heavy cream. Toss shrimp in sauce. Serve over rice with candied walnuts and garnish with green onions.','40 mins

Ingredients

1 c. water

1 c. granulated sugar

1 c. walnuts

1 lb. shrimp, peeled and deveined

Kosher salt

Freshly ground black pepper

2 large eggs, beaten

1 c. cornstarch

Vegetable oil for frying

1/4 c. mayonnaise

2 tbsp. honey

2 tbsp. heavy cream

Cooked white rice, for serving

Thinly sliced green onions, for garnish','Popular');
INSERT INTO "recipe" VALUES (18,'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p2/133/2024/01/21/Kontol-Kejepit-2546923612.jpg','Donat Jadul','Step 1

Combine tomatoes, cucumbers, pepper, garlic, vinegar, and water in the bowl of a food processor or blender. Blend until smooth, then add oil and blend to combine. Taste and season with salt, pepper, and more vinegar if needed. Cover and refrigerate until chilled.

Step 2

Meanwhile, in a large skillet over medium heat, add enough oil to coat the bottom of the pan. Add bread and cook, stirring occasionally, until golden and crisp. Remove from heat, season with salt, and let cool.

Step 3

To serve, divide soup among bowls and top with basil, croutons, and a drizzle of oil.','25 mins

Ingredients

2 lb. tomatoes, quartered

2 Persian cucumbers, peeled and chopped

1/2 red bell pepper, chopped

1 clove garlic, roughly chopped

2 tbsp. red wine vinegar or sherry vinegar

1/2 c. water

1/3 c. extra-virgin olive oil, plus more for pan and garnish

Kosher salt

Freshly ground black pepper

2 slices country bread, cubed

2 tbsp. thinly sliced basil','Popular');
INSERT INTO "recipe" VALUES (19,'https://www.allrecipes.com/thmb/xvlRRhK5ldXuGcXad8XDM5tTAfE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/223382_chicken-stir-fry_Rita-1x1-1-b6b835ccfc714bb6a8391a7c47a06a84.jpg','Chicken Stir-Fry

','Instructions:



In a bowl, combine the sliced chicken with soy sauce and cornstarch. Toss to coat evenly and set aside for 10-15 minutes.

Heat oil in a large skillet or wok over medium-high heat. Add garlic and ginger, and sauté for 1 minute until fragrant.

Add the marinated chicken and cook until browned and cooked through.

Add the sliced vegetables and stir-fry for 3-4 minutes until crisp-tender.

Season with salt and pepper to taste.

Serve the chicken stir-fry over cooked rice or noodles. Enjoy!

','30min

Ingredients:

2 boneless, skinless chicken breasts, thinly sliced

2 tablespoons soy sauce

1 tablespoon cornstarch

1 tablespoon vegetable oil

2 cloves garlic, minced

1-inch piece of ginger, grated

1 cup sliced vegetables (e.g., bell peppers, carrots, broccoli)

Salt and pepper, to taste

Cooked rice or noodles, for serving

','Dish');
INSERT INTO "recipe" VALUES (20,'https://ohsweetbasil.com/wp-content/uploads/four-cheese-margherita-pizza-recipe-12-scaled.jpg','Margherita Pizza','Instructions:



Preheat your oven to the highest temperature setting (usually around 475°F/245°C).

Roll out the pizza dough on a floured surface to your desired thickness.

Transfer the dough to a baking sheet or pizza stone.

Spread pizza sauce evenly over the dough, leaving a small border around the edges.

Arrange mozzarella slices or sprinkle shredded mozzarella evenly over the sauce.

Season with salt and pepper.

Bake the pizza in the preheated oven for about 10-15 minutes or until the crust is golden brown and the cheese is bubbly and slightly browned.

Remove from the oven and top with fresh basil leaves.

Drizzle with a little olive oil.

Slice and serve the Margherita pizza while it''s hot and enjoy!

','25min

Ingredients:

Pizza dough (store-bought or homemade)

1/2 cup pizza sauce

8 ounces mozzarella cheese, sliced or shredded

Fresh basil leaves

Olive oil

Salt and pepper, to taste

','Dish');
INSERT INTO "recipe" VALUES (22,'https://www.allrecipes.com/thmb/PiWH6N96FDzLuPBMZji07wL7ojA=/0x512/filters:no_upscale():max_bytes(150000):strip_icc()/104804-curried-egg-sandwiches-ddmfs-3x4-c75f6bc7c4f24588a2bf6b59e33b2e37.jpg','Curried Egg Sandwiches','Directions

Gather your ingredients.

top down view of ingredients measured and prepped for curried egg salad sandwiches. 

Mix together mayonnaise and curry powder in a bowl. Gently stir in eggs, then season to taste with salt and pepper.

Mix together mayonnaise and curry powder in a bowl. Eggs stirred in gently then seasoned to taste with salt and pepper.

Evenly divide between 4 slices of bread, top with remaining 4 slices.','15 mins

Ingredients

4 hard-cooked eggs, peeled and chopped

½ cup mayonnaise

1 teaspoon curry powder

salt and pepper to taste

8 slices bread','Dish');
INSERT INTO "recipe" VALUES (23,'https://greenbowl2soul.com/wp-content/uploads/2021/06/Indian-vegetable-curry.jpg
','Vegetable Curry','Instructions:

Heat vegetable oil in a large skillet or pot over medium heat.

Add chopped onion and minced garlic, and sauté until softened and aromatic.

Stir in curry powder, ground cumin, ground coriander, and turmeric. Cook for 1-2 minutes to toast the spices.

Pour in the coconut milk and bring the mixture to a simmer.

Add the mixed vegetables and cook until tender, about 10-15 minutes.

Season with salt to taste.

Serve the vegetable curry hot over cooked rice or with naan bread. Garnish with chopped cilantro.

','30min

Ingredients:

2 tablespoons vegetable oil

1 onion, chopped

2 cloves garlic, minced

1 tablespoon curry powder

1 teaspoon ground cumin

1 teaspoon ground coriander

1/2 teaspoon turmeric

1 can (14 ounces) coconut milk

2 cups mixed vegetables (e.g., cauliflower, carrots, peas, bell peppers)

Salt, to taste

Chopped cilantro, for garnish

Cooked rice or naan bread, for serving

','Dish');
INSERT INTO "recipe" VALUES (24,'https://sallysbakingaddiction.com/wp-content/uploads/2013/05/classic-chocolate-chip-cookies.jpg','Chocolate Chip Cookies','Instructions:

Preheat your oven to 350°F (175°C) and line a baking sheet with parchment paper.

In a large bowl, cream together the softened butter, granulated sugar, and brown sugar until light and fluffy.

Beat in the eggs one at a time, followed by the vanilla extract.

In a separate bowl, whisk together the flour, baking soda, and salt.

Gradually add the dry ingredients to the butter mixture, mixing until just combined.

Stir in the chocolate chips.

Drop rounded tablespoons of dough onto the prepared baking sheet, spacing them about 2 inches apart.

Bake in the preheated oven for 10-12 minutes or until the edges are golden brown.

Remove from the oven and let the cookies cool on the baking sheet for a few minutes before transferring them to a wire rack to cool completely.

Enjoy the homemade chocolate chip cookies with a glass of milk!

','15min

Ingredients:



1 cup (2 sticks) unsalted butter, softened

1 cup granulated sugar

1 cup packed brown sugar

2 large eggs

1 teaspoon vanilla extract

3 cups all-purpose flour

1 teaspoon baking soda

1/2 teaspoon salt

2 cups chocolate chips



','Dish');
INSERT INTO "recipe" VALUES (25,'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F4b067cd907c6d86384b336405a8c505e%2F1683029923437IMG_4652.jpeg&q=60&c=sc&orient=true&poi=auto&h=512','Chicken Parmesan','Instructions:

Preheat your oven to 375°F (190°C).

Season the chicken breasts with salt and pepper.

Dredge each chicken breast in flour, shaking off any excess.

Dip the chicken breasts into the beaten eggs, allowing any excess to drip off.

In a shallow dish, combine the breadcrumbs and grated Parmesan cheese.

Coat each chicken breast in the breadcrumb mixture, pressing the crumbs onto the chicken to adhere.

Heat olive oil in a skillet over medium heat.

Add the breaded chicken breasts and cook until golden brown on both sides, about 3-4 minutes per side.

Transfer the chicken breasts to a baking dish.

Pour marinara sauce over the chicken breasts and sprinkle shredded mozzarella cheese on top.

Bake in the preheated oven for 20-25 minutes or until the chicken is cooked through and the cheese is melted and bubbly.

Garnish with fresh basil leaves and serve the Chicken Parmesan hot with pasta or a side salad.

','35min

Ingredients:

2 boneless, skinless chicken breasts

Salt and pepper, to taste

1/2 cup all-purpose flour

2 large eggs, beaten

1 cup breadcrumbs

1/2 cup grated Parmesan cheese

2 tablespoons olive oil

1 cup marinara sauce

1 cup shredded mozzarella cheese

Fresh basil leaves, for garnish



','Dish');
INSERT INTO "recipe" VALUES (26,'https://cookieandkate.com/images/2017/05/vegetable-fried-rice-550x757.jpg','Vegetable Fried Rice','Instructions:

Heat vegetable oil in a large skillet or wok over medium heat.

Add diced onion and minced garlic, and sauté until the onion becomes translucent.

Add mixed vegetables to the skillet and stir-fry for a few minutes until they are cooked but still slightly crisp.

Push the vegetables to one side of the skillet and pour the beaten eggs onto the empty side.

Scramble the eggs until they are fully cooked.

Add the cooked rice to the skillet and stir-fry to combine with the vegetables and eggs.

Drizzle soy sauce and oyster sauce (if using) over the rice, and toss everything together until well-coated.

Season with salt and pepper to taste.

Cook for an additional 2-3 minutes, stirring constantly.

Remove from heat and garnish with chopped green onions.

Serve the vegetable fried rice hot as a standalone dish or as a side with your favorite protein.

Enjoy your meal!

','40min

Ingredients:

2 cups cooked rice (preferably cooled or leftover rice)

2 tablespoons vegetable oil

1 small onion, diced

2 cloves garlic, minced

1 cup mixed vegetables (e.g., carrots, peas, corn)

2 eggs, lightly beaten

2 tablespoons soy sauce

1 tablespoon oyster sauce (optional)

Salt and pepper, to taste

Chopped green onions, for garnish



','Dish');
INSERT INTO "recipe" VALUES (27,'https://www.jessicagavin.com/wp-content/uploads/2019/07/caesar-salad-9-600x900.jpg','Classic Caesar Salad','Instructions:

In a large bowl, combine the torn romaine lettuce, Caesar dressing, and grated Parmesan cheese. Toss well to coat.

Add croutons and anchovy fillets (if using) to the bowl and toss again.

Season with freshly ground black pepper to taste.

Serve the classic Caesar salad as a side or add grilled chicken or shrimp to make it a complete meal.

','10min

Ingredients:

Romaine lettuce, torn into bite-sized pieces

Caesar dressing

Grated Parmesan cheese

Croutons

Anchovy fillets (optional)

Freshly ground black pepper



','Salad');
INSERT INTO "recipe" VALUES (28,'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2Ffac2227c623664c65a91f15976434c6f%2F167482803276820230127_133911.jpg&q=60&c=sc&orient=true&poi=auto&h=512','Greek Salad','Instructions:

In a large bowl, combine the diced cucumbers, tomatoes, red onion, Kalamata olives, and crumbled feta cheese.

Drizzle olive oil and lemon juice over the salad.

Season with salt and pepper to taste.

Add the chopped fresh parsley and toss everything together.

Serve the refreshing Greek salad as a side or add grilled chicken or lamb for a heartier meal.

','20min

Ingredients:

Cucumbers, diced

Tomatoes, diced

Red onion, thinly sliced

Kalamata olives

Feta cheese, crumbled

Fresh parsley, chopped

Olive oil

Lemon juice

Salt and pepper, to taste



','Salad');
INSERT INTO "recipe" VALUES (29,'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2003/9/22/0/tm1a35_caprese_salad.jpg.rend.hgtvcom.1280.720.suffix/1530799984231.jpeg','Caprese Salad','Instructions:

Arrange the tomato slices and mozzarella slices alternately on a platter.

Tuck fresh basil leaves between the tomato and mozzarella slices.

Drizzle balsamic glaze and extra-virgin olive oil over the salad.

Season with salt and pepper to taste.

Serve the Caprese salad as a refreshing appetizer or side dish.

','15min

Ingredients:

Fresh tomatoes, sliced

Fresh mozzarella cheese, sliced

Fresh basil leaves

Balsamic glaze

Extra-virgin olive oil

Salt and pepper, to taste



','Salad');
INSERT INTO "recipe" VALUES (30,'https://natashaskitchen.com/wp-content/uploads/2020/01/Cobb-Salad-Recipe-6.jpg','Cobb Salad','Instructions:

In a large bowl, arrange the torn romaine lettuce as the base.

Top with diced grilled chicken, hard-boiled egg slices, diced avocado, cherry tomato halves, crumbled crispy bacon, and crumbled blue cheese.

Drizzle with red wine vinegar dressing.

Toss well to combine all the ingredients.

Serve the hearty Cobb salad as a main course or a satisfying lunch option.

','22min

Ingredients:

Romaine lettuce, torn into bite-sized pieces

Grilled chicken breast, diced

Hard-boiled eggs, sliced

Avocado, diced

Cherry tomatoes, halved

Crispy bacon, crumbled

Blue cheese, crumbled

Red wine vinegar dressing



','Salad');
INSERT INTO "recipe" VALUES (31,'https://www.ambitiouskitchen.com/wp-content/uploads/2022/08/Grilled-Sesame-Chicken-Cabbage-Salad-5-750x750.jpg','Asian Sesame Chicken Salad','Instructions:

In a large bowl, combine the mixed salad greens, sliced grilled chicken breast, shredded carrots, sliced cucumber, and edamame beans.

Sprinkle toasted sesame seeds over the salad.

Drizzle with soy ginger dressing.

Toss well to coat all the ingredients.

Serve the flavorful Asian Sesame Chicken Salad as a light and healthy meal option.

','25min

Ingredients:

Mixed salad greens

Grilled chicken breast, sliced

Shredded carrots

Sliced cucumber

Edamame beans

Toasted sesame seeds

Soy ginger dressing



','Salad');
INSERT INTO "recipe" VALUES (32,'https://cookieandkate.com/images/2017/08/best-quinoa-salad-recipe-3-550x757.jpg','Quinoa Salad','Instructions:

In a large bowl, combine the cooked quinoa, diced bell peppers, cherry tomato halves, diced cucumber, finely chopped red onion, sliced Kalamata olives, crumbled feta cheese, and chopped fresh parsley.

Drizzle lemon vinaigrette over the salad.

Toss well to mix all the ingredients.

Serve the nutritious and protein-packed quinoa salad as a side or a light lunch option.

Spinach Strawberry Salad:

','25min

Ingredients:

Cooked quinoa

Diced bell peppers (assorted colors)

Cherry tomatoes, halved

Cucumber, diced

Red onion, finely chopped

Kalamata olives, pitted and sliced

Feta cheese, crumbled

Fresh parsley, chopped

Lemon vinaigrette



','Salad');
INSERT INTO "recipe" VALUES (33,'https://www.wellplated.com/wp-content/uploads/2019/04/Spinach-Strawberry-Salad.jpg','Spinach Strawberry Salad','Instructions:

In a large bowl, combine the baby spinach leaves, sliced fresh strawberries, thinly sliced red onion, chopped toasted almonds, and crumbled feta cheese.

Drizzle balsamic vinaigrette over the salad.

Toss well to coat all the ingredients.

Serve the vibrant and refreshing Spinach Strawberry Salad as a side or a light summer meal.

','15min

Ingredients:

Baby spinach leaves

Fresh strawberries, sliced

Red onion, thinly sliced

Toasted almonds, chopped

Feta cheese, crumbled

Balsamic vinaigrette



','Salad');
INSERT INTO "recipe" VALUES (34,'https://www.tasteofhome.com/wp-content/uploads/2018/01/Chocolate-Billionaires_EXPS_UCSBZ17_29093_B05_26_2b.jpg?resize=1024,1024
','Chocolate Billionaires
','1.baking sheets with waxed paper; grease the paper and set aside. In a large heavy saucepan, combine the caramels and water; cook and stir over low heat until smooth. Stir in pecans and cereal until coated. Drop by teaspoonfuls onto prepared pans. Refrigerate for 10 minutes or until firm.

2.Meanwhile, in a microwave, melt chocolate chips and shortening; stir until smooth. Dip candy into chocolate, coating all sides; allow excess to drip off. Place on prepared pans. Refrigerate until set. Store in an airtight container.

','45 Min

1 package (14 ounces) caramels

3 tablespoons water

1-1/2 cups chopped pecans

1 cup Rice Krispies

3 cups milk chocolate chips

1-1/2 teaspoons shortening

','Desserts');
INSERT INTO "recipe" VALUES (35,'https://www.tasteofhome.com/wp-content/uploads/2018/01/Peanut-Butter-Kiss-Cookies_EXPS_UCSBZ17_21640_A05_25_6b-3.jpg?w=1200
','Peanut Butter Kiss Cookies
','1.Preheat oven to 350°. Cream peanut butter and sugar until light and fluffy. Beat in egg and vanilla.

2.Roll into 1-1/4-in. balls. Place 2 in. apart on ungreased baking sheets. Bake until tops are slightly cracked, 10-12 minutes. Immediately press 1 chocolate kiss into center of each cookie. Cool for 5 minutes before removing from pans to wire racks.

','30 min

1 cup peanut butter

1 cup sugar

1 large egg, room temperature

1 teaspoon vanilla extract

30 milk chocolate kisses','Desserts');
INSERT INTO "recipe" VALUES (36,'https://www.tasteofhome.com/wp-content/uploads/2018/01/Vanilla-Meringue-Cookies_EXPS_HCBZ22_45262_DR_06_02_10b.jpg?w=1200
','Vanilla Meringue Cookies','1.Place egg whites in a small bowl; let stand at room temperature 30 minutes.

2.Preheat oven to 250°. Add vanilla, cream of tartar and salt to egg whites; beat on medium speed until foamy. Gradually add sugar, 1 tablespoon at a time, beating on high after each addition, until sugar is dissolved. Continue beating until stiff glossy peaks form, about 7 minutes.

3.Attach a #32 star tip to a pastry bag. Transfer meringue to bag. Pipe 1-1/4-in.-diameter cookies 2 in. apart onto parchment-lined baking sheets.

4.Bake until firm to the touch, 40-45 minutes. Turn off oven; leave meringues in oven 1 hour (leave oven door closed). Remove from oven; cool completely on baking sheets. Remove meringues from paper; store in an airtight container at room temperature

','45 min

3 large egg whites

1-1/2 teaspoons clear or regular vanilla extract

1/4 teaspoon cream of tartar

Dash salt

2/3 cup sugar

','Desserts');
INSERT INTO "recipe" VALUES (37,'https://www.tasteofhome.com/wp-content/uploads/2018/01/Whipped-Shortbread_EXPS_HCCBZ19_2523_E05_23_3b-6.jpg?w=1200
','Whipped Shortbread','1.In a large bowl, cream butter and confectioners'' sugar until light and fluffy, about 5 minutes. Gradually add flour and cornstarch, beating until well blended.

2.With hands lightly dusted with additional cornstarch, roll dough into 1-in. balls. Place 1 in. apart on ungreased baking sheets. Press lightly with a floured fork. Top with nonpareils or cherry halves.

3.Bake at 300° until bottoms are lightly browned, 20-22 minutes. Cool for 5 minutes before removing from pans to wire racks.

','45 min

3 cups butter, softened

1-1/2 cups confectioners'' sugar, sifted

4-1/2 cups all-purpose flour

1-1/2 cups cornstarch

Nonpareils and/or halved candied cherries

','Desserts');
INSERT INTO "recipe" VALUES (38,'https://www.tasteofhome.com/wp-content/uploads/2018/01/Easy-Peanut-Butter-Balls_EXPS_HC22_13774_P2_MD_06_01_1b.jpg?w=1200
','Easy Peanut Butter Balls','1.In a large saucepan, bring the corn syrup and sugar to a boil. Add the peanut butter. Remove from the heat; stir in vanilla and cornflakes.

2.Drop by tablespoonfuls onto waxed paper. Store in an airtight container

','30 min

1 cup light corn syrup

1/2 cup sugar

1 cup peanut butter

1 teaspoon vanilla extract

4 to 5 cups cornflakes','Desserts');
COMMIT;
