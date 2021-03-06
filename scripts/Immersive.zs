import mods.immersiveengineering.AlloySmelter as alloy;
import mods.immersiveengineering.MetalPress as metalpress;
import mods.artisanworktables.Worktable;

print("--------------------------------Immersive Engineering Start-------------------------------------");

#Alloy Kiln
	#Bronze
alloy.addRecipe(<thermalfoundation:material:163>, <contenttweaker:impuredustcopper>,
	<contenttweaker:impuredusttin>, 1200);
	#Brass
alloy.addRecipe(<techreborn:ingot:1>, <contenttweaker:impuredustcopper>,
	<contenttweaker:impuredustzinc>, 1200);
	#Refined iron
furnace.remove(ingotRefinedIron);
alloy.addRecipe(<techreborn:ingot:19>, <minecraft:iron_ingot>,
	<minecraft:iron_ingot>, 1200);


  	#Blast Brick (disabled)
mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration:1>);

	#Blueprints (Components)
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));

	#Coke Brick
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration>, [
  [<minecraft:clay_ball>, <minecraft:brick>, <minecraft:clay_ball>],
  [<minecraft:brick>, <immersiveengineering:stone_decoration:10>, <minecraft:brick>],
  [<minecraft:clay_ball>, <minecraft:brick>, <minecraft:clay_ball>]]);

  	#Engineering Block - Heavy
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5>, [
	[<ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>],
	[<ore:gearBronze>, <ore:gearBronze>, <ore:gearBronze>],
	[<ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>]]);
  	
  	#Engineering Block - Light
recipes.remove(<immersiveengineering:metal_decoration0:4>);
  	
  	#Engineering Block - Redstone
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3>, [
	[<ore:plateIron>, null, <ore:plateIron>],
	[gearRedstone, <ore:gearBronze>, gearRedstone],
	[<ore:plateIron>, null, <ore:plateIron>]]);
	
	#Engineers Hammer
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [
	[null, ingotReinforcedStone,<ore:string>],
	[null,<ore:stickWood>, ingotReinforcedStone],
	[<ore:stickWood>,null,null]]);
	#Plate Removal
val iePlates = <immersiveengineering:metal>.definition;
for i in 30 to 41{
    recipes.removeShapeless(iePlates.makeStack(i), [<*>, <immersiveengineering:tool>]);}

	#Engineer's Workbench
recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShaped(<immersiveengineering:wooden_device0:2>, [
	[<immersiveengineering:tool>,<immersiveengineering:tool:1>,<forestry:soldering_iron>],
	[<immersiveengineering:treated_wood>,<immersiveengineering:treated_wood>,<immersiveengineering:treated_wood>],
	[<ore:workbench>,null,<immersiveengineering:wooden_decoration>]]);

	#Hemp
vanilla.seeds.removeSeed(<immersiveengineering:seed>);

	#Iron Mechanical Component
recipes.remove(<immersiveengineering:material:8>);
recipes.addShaped(<immersiveengineering:material:8>, [
	[<ore:ingotIron>, null, <ore:ingotIron>],
	[null, <ore:gearAbyssalnite>, null],
	[<ore:ingotIron>, null, <ore:ingotIron>]]);

	#Radiator
recipes.remove(<immersiveengineering:metal_decoration0:7>);
recipes.addShaped(<immersiveengineering:metal_decoration0:7>, [
	[<ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>],
	[<ore:plateCopper>, <nuclearcraft:cooler:1>, <ore:plateCopper>],
	[<ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>]]);

	#Reinforced Blast Brick
recipes.remove(<immersiveengineering:stone_decoration:2>);
//Check Compact Machines for Recipe

	#Steel Mechanical Component
recipes.remove(<immersiveengineering:material:9>);
recipes.addShaped(<immersiveengineering:material:9>, [
	[<ore:ingotSteel>, null, <ore:ingotSteel>],
	[null, <ore:gearAbyssalnite>, null],
	[<ore:ingotSteel>, null, <ore:ingotSteel>]]);

	#Wire - Aluminium
recipes.remove(<immersiveengineering:material:22>);
Worktable.addRecipeShapeless("basic", <immersiveengineering:material:22>, <ore:blacksmiths_cutters>, 2, 
  [plateAluminum]);
	#Wire - Copper
recipes.remove(<immersiveengineering:material:20>);
Worktable.addRecipeShapeless("basic", <immersiveengineering:material:20>, <ore:blacksmiths_cutters>, 2, 
  [plateCopper]);
	#Wire - Electrum
recipes.remove(<immersiveengineering:material:21>);
Worktable.addRecipeShapeless("basic", <immersiveengineering:material:24>, <ore:blacksmiths_cutters>, 2, 
  [plateElectrum]);
	#Wire - Steel
recipes.remove(<immersiveengineering:material:23>);
Worktable.addRecipeShapeless("basic", <immersiveengineering:material:23>, <ore:blacksmiths_cutters>, 2, 
  [plateSteel]);

	#LV Wire Coil
	#MV Wire Coil
	#HV Wire Coil

print("--------------------------------Immersive Engineering End-------------------------------------");