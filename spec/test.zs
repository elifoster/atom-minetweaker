/*
Script examples taken from the MineTweaker Wiki and FTB Gamepedia.
 */

// = ZenCode specification =
var text = "Hello world";
print(text);

package myserver.util;
export function addVals(x, y)
{
  return x + y;
}

package myserver.util;
include "otherscrit.zs";

var array = [];
array += ["Hello"];

var array = [1, 2].fixed;

var myArray = ["Hello", "world"] as string[];
doStrings(["Hello", "world"]);

function printInts(values as int[])
{
  for element in values {
    println(element);
  }
}

var myArray = [1, "Hello"];
printInts(myArray);

function addValues(values as any[])
{
  values += [1];
  values += ["Hi"];
}

var myArray = [] as int[];
addValues(myArray);

var a = 1;
val b = 2;
a = 10;
if a > 2 {
  print("a is greater than 2");
}

// = Tutorials:Advanced Recipes =
val stick = <minecraft:stick>;
val pick = <minecraft:stone_pickaxe>;
val damagedPick = pick.withDamage(10);
val stickedPick = pick.withTag({display: {Name: "Sticked pick", Lore: ["This pick", "Has been sticked"]}});

recipes.addShaped(damagedPick, [[pick, stick]]);
recipes.addShaped(stickedPick, [[pick, stick], [stick, stick]]);

val stick = <minecraft:stick>;
val pick = <minecraft:stone_pickaxe>;
val damagedPick = pick.withDamage(10);
val stickedPick = pick.withTag({display: {Name: "Sticked pick", Lore: ["This pick", "Has been sticked"]}});

recipes.addShaped(damagedPick, [[pick, stick]]);
recipes.addShaped(stickedPick, [[pick, stick], [stick, stick]]);

val stonedPick = pick.withTag({display: {Name: "Stoned pick", Lore: ["This pick", "Has been experimenting too much"]}});
val onlyStickedPick = pick.onlyWithTag({display: {Name: "Sticked pick"}});
val cobble = <minecraft:cobblestone>;
recipes.addShaped(stonedPick, [[onlyStickedPick, cobble], [cobble, cobble]]);

myItem.onlyDamaged(); // only accepts damaged items
myItem.onlyDamageAtLeast(15); // only accepts items with a damage of at least 15
myItem.onlyDamageAtMost(100); // only accepts items with a damage of at most 100
myItem.onlyDamageBetween(15, 100); // only accepts items with a damage between 15 and 100

myItem.onlyDamaged().onlyWithTag({display: {Name: "Sticked pick"}});

recipes.addShapeless(<minecraft:stick> * 3, [<minecraft:stone_axe>, <ore:woodPlanks>]);
recipes.addShapeless(<minecraft:stick> * 3, [<minecraft:stone_axe>.reuse(), <ore:plankWood>]);
recipes.addShapeless(<minecraft:stick> * 3, [<minecraft:stone_axe>.transformDamage(), <ore:plankWood>]);
recipes.addShapeless(<minecraft:stick> * 3, [<minecraft:stone_axe>.transformDamage(4), <ore:plankWood>]);
recipes.addShapeless(<minecraft:grass>, [<minecraft:dirt>, <minecraft:water_bucket>, <minecraft:wheat>]);
recipes.addShaped(<minecraft:grass>, [[
	<minecraft:dirt>,
	<minecraft:water_bucket>.transformReplace(<minecraft:bucket>),
	<minecraft:wheat>
]]);
recipes.addShaped(<minecraft:grass>, [[
	<minecraft:dirt>,
	<minecraft:water_bucket>.noReturn(),
	<minecraft:wheat>
]]);
recipes.addShaped(<minecraft:grass>, [[
	<minecraft:dirt>,
	<minecraft:water_bucket>.giveBack(<minecraft:iron_ore> * 3),
	<minecraft:wheat>
]]);
recipes.addShapeless(<minecraft:stone_pickaxe>, [<minecraft:stone_pickaxe>, <minecraft:cobblestone>], function(output, inputs, crafting) {
  // to be implemented
}
recipes.addShapeless(<minecraft:stone_pickaxe>, [<minecraft:stone_pickaxe>.marked("pick"), <minecraft:cobblestone>], function(output, inputs, crafting) {
  // to be implemented. inputs.pick now contains the pickaxe used as input
}
recipes.addShapeless(<minecraft:stone_pickaxe>, [<minecraft:stone_pickaxe>.anyDamage().marked("pick"), <minecraft:cobblestone>], function(output, inputs, crafting) {
  // the max is there to make sure that the damage doesn't go negative
  // fixes 25 damage per cobblestone
  return inputs.pick.withDamage(max(0, inputs.pick.damage - 25));
});

// Misc mod stuff
mods.avaritia.ExtremeCrafting.addShaped(<minecraft:glass>,
 [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>],
  [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>],
  [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>],
  [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>],
  [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>],
  [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>],
  [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>],
  [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>],
  [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>, <minecraft:sand>, <minecraft:stone>, <minecraft:stone>]]);

mods.tconstruct.Smeltery.addMelting(<IC2:itemCable:1>, <liquid:copper.molten> * 72, 350, <TConstruct:MetalBlock:3>)

val cable = <IC2:itemCable:1>
val liquid = <liquid:copper.molten>

import mods.nei.NEI;

print("Initializing 'NEI.zs'...");

#tooltips
<minecraft:golden_axe>.addTooltip(format.red("Used For Crafting Only!"));
<ImmersiveEngineering:tool:3>.addTooltip(format.red("Some items in book may not reflect changed recipes. Refer to NEI!"));

print("Initialized 'NEI.zs'");
