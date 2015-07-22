print();
import
val
var

This is a sentence

recipes.addShaped(<stuff>)
recipes.addShapeless
recipes.remove
recipes.removeShaped
recipes.removeShapeless
recipes.addShapedMirrored
furnace.setFuel
furnace.addRecipe
for in
game.setLocalisation
{}
[]
vanilla.loot.addChestLoot
vanilla.loot.removeChestLoot
vanilla.seeds.addSeed
vanilla.seeds.removeSeed
addTooltip
addShiftTooltip
format.black
format.obfuscated
format.bold
format.strikethrough
format.underline
format.italic
print(<minecraft:chest>.displayName);
<minecraft:chest>.displayName = "Display Name";
// comment

/*
multi line comment
*/

withTag;
onlyWithTag;
onlyDamaged;
onlyDamageAtLeast;
onlyDamageAtMost;
onlyDamageBetween;
<ore:shit>;
add;
addAll;
mirror;


'name': 'MineTweaker'
'scopeName': 'source.minetweaker'
'fileTypes': [
  'zs'
]
'patterns': [
  {
    'match': '\\b(print|recipes\.[^\(\;]*|furnace\.[^\(\;]*|add|addAll|mirror|withDamage|withTag|onlyWithTag|onlyDamaged|onlyDamageAtLeast|onlyDamageAtMost|onlyDamageBetween|transformDamage|transformReplace|giveBack|noReturn|displayName|addTooltip|addShiftTooltip|vanilla\.[^\(]*|game\.[^\(\;]*)\\b'
    'name': 'storage.modifier.minetweaker'
  }
  {
    'match': '\\b(for|in)\\b'
    'name': 'keyword.control.minetweaker'
  }
  {
    'match': '\\b(format|print|recipes|furnace|vanilla)\\b'
    'name': 'entity.name.class.minetweaker'
  }
  {
    'match': '(?<=This is)(.*?)(?=sentence)'
    'name': 'entity.name.class.minetweaker'
  }
  {
    'match': '(?<=\\.)(black|bold)'
    'name': 'support.class.minetweaker'
  }
  {
    'match': '\\bimport\\b'
    'name': 'keyword.control.minetweaker'
  }
  {
    'begin': '\''
    'end': '\''
    'name': 'string.quoted.single.minetweaker'
  }
  {
    'begin': '""'
    'end': '""'
    'name': 'string.quoted.double.minetweaker'
  }
  {
    'begin': '//'
    'end': '$'
    'name': 'comment.line.double-slash.minetweaker'
  }
  {
    'begin': '#'
    'end': '$'
    'name': 'comment.line.number-sign.minetweaker'
  }
  {
    'begin': '/\\*'
    'end': '\\*/'
    'name': 'comment.block.minetweaker'
  }
  {
    'match': '\\b(mods\.[^\(\;]*|)\\b'
    'name': 'functions.minetweaker.mods'
  }
]
