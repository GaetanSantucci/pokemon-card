-- Pokemon Database 
-- Created by Bastien Thouverez https://github.com/bthouverez/Pokemon-BDD
-- Modified by Enzo Testa https://github.com/enzoclock
-- Under GPL-3.0 licence, available in the project.


-- RESET DB --

DROP TABLE IF EXISTS 
carried_pokemon, 
stored_pokemon, 
type, 
evolution, 
trainer, 
pokemon;


-- CREATE TABLES --

CREATE TABLE pokemon (
	id SERIAL PRIMARY KEY,
  image VARCHAR(40),
	name VARCHAR(50)
);


CREATE TABLE evolution (
	base_pokemon_id INT REFERENCES pokemon(id),
	evolution_pokemon_id INT REFERENCES pokemon(id),
	evolution_level INT,
	require_stone BOOLEAN,
	require_exchange BOOLEAN
);


CREATE TABLE type (
	pokemon_id INT REFERENCES pokemon(id),
	name VARCHAR(30)
);


CREATE TABLE trainer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);


CREATE TABLE carried_pokemon (
	trainer_id INT REFERENCES trainer(id),
	pokemon_id INT REFERENCES pokemon(id),
	pokemon_level INT
);


CREATE TABLE stored_pokemon (
	trainer_id INT REFERENCES trainer(id),
	pokemon_id INT REFERENCES pokemon(id),
	pokemon_level INT
);



-- POPULATE TABLES --


INSERT INTO pokemon (id, image ,name) VALUES
(  1, 'poke_01' ,'Bulbizarre'),
(  2, 'poke_02' ,'Herbizarre'),
(  3, 'poke_03' ,'Florizarre'),
(  4, 'poke_04' ,'Salameche'),
(  5, 'poke_05' ,'Reptincel'),
(  6, 'poke_06' ,'Dracaufeu'),
(  7, 'poke_07' ,'Carapuce'),
(  8, 'poke_08' ,'Carabaffe'),
(  9, 'poke_09' ,'Tortank'),
( 10, 'poke_10' ,'Chenipan'),
( 11, 'poke_11' ,'Chrysacier'),
( 12, 'poke_12' ,'Papilusion'),
( 13, 'poke_13' ,'Aspicot'),
( 14, 'poke_14' ,'Coconfort'),
( 15, 'poke_15' ,'Dardargnan'),
( 16, 'poke_16' ,'Roucool'),
( 17, 'poke_17' ,'Roucoups'),
( 18, 'poke_18' ,'Roucarnage'),
( 19, 'poke_19' ,'Rattata'),
( 20, 'poke_20' ,'Rattatac'),
( 21, 'poke_21' ,'Piafabec'),
( 22, 'poke_22' ,'Rapasdepic'),
( 23, 'poke_23' ,'Abo'),
( 24, 'poke_24' ,'Arbok'),
( 25, 'poke_25' ,'Pikachu'),
( 26, 'poke_26' ,'Raichu'),
( 27, 'poke_27' ,'Sabelette'),
( 28, 'poke_28' ,'Sablaireau'),
( 29, 'poke_29' ,'NidoranF'),
( 30, 'poke_30' ,'Nidorina'),
( 31, 'poke_31' ,'Nidoqueen'),
( 32, 'poke_32' ,'NidoranM'),
( 33, 'poke_33' ,'Nidorino'),
( 34, 'poke_34' ,'Nidoking'),
( 35, 'poke_35' ,'Melofee'),
( 36, 'poke_36' ,'Melodelfe'),
( 37, 'poke_37' ,'Goupix'),
( 38, 'poke_38' ,'Feunard'),
( 39, 'poke_39' ,'Rondoudou'),
( 40, 'poke_40' ,'Grodoudou'),
( 41, 'poke_41' ,'Nosferapti'),
( 42, 'poke_42' ,'Nosferalto'),
( 43, 'poke_43' ,'Mystherbe'),
( 44, 'poke_44' ,'Ortide'),
( 45, 'poke_45' ,'Rafflesia'),
( 46, 'poke_46' ,'Paras'),
( 47, 'poke_47' ,'Parasect'),
( 48, 'poke_48' ,'Mimitoss'),
( 49, 'poke_49' ,'Aeromite'),
( 50, 'poke_50' ,'Taupiqueur'),
( 51, 'poke_51' ,'Triopikeur'),
( 52, 'poke_52' ,'Miaouss'),
( 53, 'poke_53' ,'Persian'),
( 54, 'poke_54' ,'Psykokwak'),
( 55, 'poke_55' ,'Akwakwak'),
( 56, 'poke_56' ,'Ferosinge'),
( 57, 'poke_57' ,'Colossinge'),
( 58, 'poke_58' ,'Caninos'),
( 59, 'poke_59' ,'Arcanin'),
( 60, 'poke_60' ,'Ptitard'),
( 61, 'poke_61' ,'Tetarte'),
( 62, 'poke_62' ,'Tartard'),
( 63, 'poke_63' ,'Abra'),
( 64, 'poke_64' ,'Kadabra'),
( 65, 'poke_65' ,'Alakazam'),
( 66, 'poke_66' ,'Machoc'),
( 67, 'poke_67' ,'Machopeur'),
( 68, 'poke_68' ,'Mackogneur'),
( 69, 'poke_69' ,'Chetiflor'),
( 70, 'poke_70' ,'Boustiflor'),
( 71, 'poke_71' ,'Empiflor'),
( 72, 'poke_72' ,'Tentacool'),
( 73, 'poke_73' ,'Tentacruel'),
( 74, 'poke_74' ,'Racaillou'),
( 75, 'poke_75' ,'Gravalanch'),
( 76, 'poke_76' ,'Grolem'),
( 77, 'poke_77' ,'Ponyta'),
( 78, 'poke_78' ,'Galopa'),
( 79, 'poke_79' ,'Ramoloss'),
( 80, 'poke_80' ,'Flagadoss'),
( 81, 'poke_81' ,'Magneti'),
( 82, 'poke_82' ,'Magneton'),
( 83, 'poke_83' ,'Canarticho'),
( 84, 'poke_84' ,'Doduo'),
( 85, 'poke_85' ,'Dodrio'),
( 86, 'poke_86' ,'Otaria'),
( 87, 'poke_87' ,'Lamantine'),
( 88, 'poke_88' ,'Tadmorv'),
( 89, 'poke_89' ,'Grotadmorv'),
( 90, 'poke_90' ,'Kokiyas'),
( 91, 'poke_91' ,'Crustabri'),
( 92, 'poke_92' ,'Fantominus'),
( 93, 'poke_93' ,'Spectrum'),
( 94, 'poke_94' ,'Ectoplasma'),
( 95, 'poke_95' ,'Onix'),
( 96, 'poke_96' ,'Soporifik'),
( 97, 'poke_97' ,'Hypnomade'),
( 98, 'poke_98' ,'Krabby'),
( 99, 'poke_99' ,'Krabboss'),
(100, 'poke_100' ,'Voltorbe'),
(101, 'poke_101' ,'Electrode'),
(102, 'poke_102' ,'Noeunoeuf'),
(103, 'poke_103' ,'Noadkoko'),
(104, 'poke_104' ,'Osselait'),
(105, 'poke_105' ,'Ossatueur'),
(106, 'poke_106' ,'Kicklee'),
(107, 'poke_107' ,'Tygnon'),
(108, 'poke_108' ,'Excelangue'),
(109, 'poke_109' ,'Smogo'),
(110, 'poke_110' ,'Smogogo'),
(111, 'poke_111' ,'Rhinocorne'),
(112, 'poke_112' ,'Rhinoferos'),
(113, 'poke_113' ,'Leveinard'),
(114, 'poke_114' ,'Saquedeneu'),
(115, 'poke_115' ,'Kangourex'),
(116, 'poke_116' ,'Hypotrempe'),
(117, 'poke_117' ,'Hypocean'),
(118, 'poke_118' ,'Poissirene'),
(119, 'poke_119' ,'Poissoroy'),
(120, 'poke_120' ,'Stari'),
(121, 'poke_121' ,'Staross'),
(122, 'poke_122' ,'M. Mime'),
(123, 'poke_123' ,'Insecateur'),
(124, 'poke_124' ,'Lippoutou'),
(125, 'poke_125' ,'Elektek'),
(126, 'poke_126' ,'Magmar'),
(127, 'poke_127' ,'Scarabrute'),
(128, 'poke_128' ,'Tauros'),
(129, 'poke_129' ,'Magicarpe'),
(130, 'poke_130' ,'Leviator'),
(131, 'poke_131' ,'Lokhlass'),
(132, 'poke_132' ,'Metamorph'),
(133, 'poke_133' ,'Evoli'),
(134, 'poke_134' ,'Aquali'),
(135, 'poke_135' ,'Voltali'),
(136, 'poke_136' ,'Pyroli'),
(137, 'poke_137' ,'Porygon'),
(138, 'poke_138' ,'Amonita'),
(139, 'poke_139' ,'Amonistar'),
(140, 'poke_140' ,'Kabuto'),
(141, 'poke_141' ,'Kabutops'),
(142, 'poke_142' ,'Ptera'),
(143, 'poke_143' ,'Ronflex'),
(144, 'poke_144' ,'Artikodin'),
(145, 'poke_145' ,'Electhor'),
(146, 'poke_146' ,'Sulfura'),
(147, 'poke_147' ,'Minidraco'),
(148, 'poke_148' ,'Draco'),
(149, 'poke_149' ,'Dracolosse'),
(150, 'poke_150' ,'Mewtwo'),
(151, 'poke_151' ,'Mew');

INSERT INTO type (pokemon_id, name) VALUES
(  1, 'Plante'),
(  1, 'Poison'),
(  2, 'Plante'),
(  2, 'Poison'),
(  3, 'Plante'),
(  3, 'Poison'),
(  4, 'Feu'),
(  5, 'Feu'),
(  6, 'Feu'),
(  6, 'Vol'),
(  7, 'Eau'),
(  8, 'Eau'),
(  9, 'Eau'),
( 10, 'Insecte'),
( 11, 'Insecte'),
( 12, 'Insecte'),
( 12, 'Vol'),
( 13, 'Insecte'),
( 13, 'Poison'),
( 14, 'Insecte'),
( 14, 'Poison'),
( 15, 'Insecte'),
( 15, 'Poison'),
( 16, 'Normal'),
( 16, 'Vol'),
( 17, 'Normal'),
( 17, 'Vol'),
( 18, 'Normal'),
( 18, 'Vol'),
( 19, 'Normal'),
( 20, 'Normal'),
( 21, 'Normal'),
( 21, 'Vol'),
( 22, 'Normal'),
( 22, 'Vol'),
( 23, 'Poison'),
( 24, 'Poison'),
( 25, 'Electrique'),
( 26, 'Electrique'),
( 27, 'Sol'),
( 28, 'Sol'),
( 29, 'Poison'),
( 30, 'Poison'),
( 31, 'Poison'),
( 31, 'Sol'),
( 32, 'Poison'),
( 33, 'Poison'),
( 34, 'Poison'),
( 34, 'Sol'),
( 35, 'Normal'),
( 36, 'Normal'),
( 37, 'Feu'),
( 38, 'Feu'),
( 39, 'Normal'),
( 40, 'Normal'),
( 41, 'Poison'),
( 41, 'Vol'),
( 42, 'Poison'),
( 42, 'Vol'),
( 43, 'Plante'),
( 43, 'Poison'),
( 44, 'Plante'),
( 44, 'Poison'),
( 45, 'Plante'),
( 45, 'Poison'),
( 46, 'Insecte'),
( 46, 'Plante'),
( 47, 'Insecte'),
( 47, 'Plante'),
( 48, 'Insecte'),
( 48, 'Poison'),
( 49, 'Insecte'),
( 49, 'Poison'),
( 50, 'Sol'),
( 51, 'Sol'),
( 52, 'Normal'),
( 53, 'Normal'),
( 54, 'Eau'),
( 55, 'Eau'),
( 56, 'Combat'),
( 57, 'Combat'),
( 58, 'Feu'),
( 59, 'Feu'),
( 60, 'Eau'),
( 61, 'Eau'),
( 62, 'Eau'),
( 62, 'Combat'),
( 63, 'Psy'),
( 64, 'Psy'),
( 65, 'Psy'),
( 66, 'Combat'),
( 67, 'Combat'),
( 68, 'Combat'),
( 69, 'Plante'),
( 69, 'Poison'),
( 70, 'Plante'),
( 70, 'Poison'),
( 71, 'Plante'),
( 71, 'Poison'),
( 72, 'Eau'),
( 72, 'Poison'),
( 73, 'Eau'),
( 73, 'Poison'),
( 74, 'Roche'),
( 74, 'Sol'),
( 75, 'Roche'),
( 75, 'Sol'),
( 76, 'Roche'),
( 76, 'Sol'),
( 77, 'Feu'),
( 78, 'Feu'),
( 79, 'Eau'),
( 79, 'Psy'),
( 80, 'Eau'),
( 80, 'Psy'),
( 81, 'Electrique'),
( 82, 'Electrique'),
( 83, 'Normal'),
( 83, 'Vol'),
( 84, 'Normal'),
( 84, 'Vol'),
( 85, 'Normal'),
( 85, 'Vol'),
( 86, 'Eau'),
( 87, 'Eau'),
( 87, 'Glace'),
( 88, 'Poison'),
( 89, 'Poison'),
( 90, 'Eau'),
( 91, 'Eau'),
( 91, 'Glace'),
( 92, 'Spectre'),
( 92, 'Poison'),
( 93, 'Spectre'),
( 93, 'Poison'),
( 94, 'Spectre'),
( 94, 'Poison'),
( 95, 'Roche'),
( 95, 'Sol'),
( 96, 'Psy'),
( 97, 'Psy'),
( 98, 'Eau'),
( 99, 'Eau'),
(100, 'Electrique'),
(101, 'Electrique'),
(102, 'Plante'),
(102, 'Psy'),
(103, 'Plante'),
(103, 'Psy'),
(104, 'Sol'),
(105, 'Sol'),
(106, 'Combat'),
(107, 'Combat'),
(108, 'Normal'),
(109, 'Poison'),
(110, 'Poison'),
(111, 'Sol'),
(111, 'Roche'),
(112, 'Sol'),
(112, 'Roche'),
(113, 'Normal'),
(114, 'Plante'),
(115, 'Normal'),
(116, 'Eau'),
(117, 'Eau'),
(118, 'Eau'),
(119, 'Eau'),
(120, 'Eau'),
(121, 'Eau'),
(121, 'Psy'),
(122, 'Psy'),
(123, 'Insecte'),
(123, 'Vol'),
(124, 'Glace'),
(124, 'Psy'),
(125, 'Electrique'),
(126, 'Feu'),
(127, 'Insecte'),
(128, 'Normal'),
(129, 'Eau'),
(130, 'Eau'),
(130, 'Vol'),
(131, 'Eau'),
(131, 'Glace'),
(132, 'Normal'),
(133, 'Normal'),
(134, 'Eau'),
(135, 'Electrique'),
(136, 'Feu'),
(137, 'Normal'),
(138, 'Roche'),
(138, 'Eau'),
(139, 'Roche'),
(139, 'Eau'),
(140, 'Roche'),
(140, 'Eau'),
(141, 'Roche'),
(141, 'Eau'),
(142, 'Roche'),
(142, 'Vol'),
(143, 'Normal'),
(144, 'Glace'),
(144, 'Vol'),
(145, 'Electrique'),
(145, 'Vol'),
(146, 'Feu'),
(146, 'Vol'),
(147, 'Dragon'),
(148, 'Dragon'),
(149, 'Dragon'),
(149, 'Vol'),
(150, 'Psy'),
(151, 'Psy');


INSERT INTO trainer (id, name) VALUES 
( 1, 'Zab'),
( 2, 'Pierre'),
( 3, 'Ondine'),
( 4, 'Major Bob'),
( 5, 'Erika'),
( 6, 'Koga'),
( 7, 'Morgane'),
( 8, 'Auguste'),
( 9, 'Giovanni'),
(10, 'Olga'),
(11, 'Aldo'),
(12, 'Agatha'),
(13, 'Peter');

INSERT INTO carried_pokemon (trainer_id, pokemon_id, pokemon_level) VALUES
-- Zab: M.Mime (62), Lippoutou (65), Arcanin (58), Rafflesia (61), Elektek (65), Hypocean (68)
(1, 122, 62),
(1, 124, 65),
(1,  59, 58),
(1,  45, 61),
(1, 125, 65),
(1, 117, 68),
-- Pierre: Raccaillou 12, Onix 14 
( 2, 74, 12),
( 2, 95, 14),
-- Ondine: Stari 18, Staross 21
( 3, 120, 18),
( 3, 121, 21),
-- Major Bob: Voltorbe 21, Pikachu 18, Raichu 24
( 4, 100, 21),
( 4, 25, 18),
( 4, 26, 24),
-- Erika: Empiflor 29, Saquedeneu 24, Rafflesia 29
( 5, 71, 29),
( 5, 114, 24),
( 5, 45, 29),
-- Koga: Smogo 37, Grotadmorv 39, Smogo 37, Smogogo 43
( 6, 109, 37),
( 6, 89, 39),
( 6, 109, 37),
( 6, 110, 43),
-- Morgane: Kadabra 38, M.  Mime 37, Aeromite 38, Alakazam 43
( 7, 64, 38),
( 7, 122, 37),
( 7, 49, 38),
( 7, 65, 43),
-- Auguste: Caninos 42, Ponyta 40, Galopa 42, Arcanin 47
( 8, 58, 42),
( 8, 77, 40),
( 8, 78, 42),
( 8, 59, 47),
-- Giovanni: Rhinocorne 45, Triopikeur 42, Nidoqueen 44, Nodiking 45, Rhinoferos 50
( 9, 111, 42),
( 9, 51, 42),
( 9, 31, 44),
( 9, 34, 45),
( 9, 112, 50),
-- Olga: Lamantine 54, Crustabri 53, Flagadoss 54, Lippoutou 56, Lokhlass 56
( 10, 87, 54),
( 10, 91, 53),
( 10, 80, 54),
( 10, 124, 56),
( 10, 131, 56),
-- Aldo: Onix 53, Tygnon 55, Kicklee 55, Onix 56, Mackogneur 58
( 11, 95, 53),
( 11, 107, 55),
( 11, 106, 55),
( 11, 95, 56),
( 11, 68, 58),
-- Agatha: Ectoplasma 56, Nosferalto 56, Spectrum 55, Arbok 58, Ectoplasma 60
( 12, 94, 56),
( 12, 42, 56),
( 12, 93, 55),
( 12, 24, 58),
( 12, 94, 60),
-- Peter: Leviator 58, Draco 56,  Draco 56, Ptera 60, Dracolosse 62
( 13, 130, 58),
( 13, 148, 56),
( 13, 148, 56),
( 13, 142, 60),
( 13, 149, 62); 

INSERT INTO stored_pokemon (trainer_id, pokemon_id, pokemon_level) VALUES
(1, 16, 25),
(1, 16, 5),
(1, 16, 15),
(1, 11, 10),
(1, 16, 13),
(1, 10, 5),
(1, 19, 11),
(1, 19, 13),
(1, 16, 8),
(1, 16, 17),
(1, 19, 10),
(1, 11, 11),
(1, 16, 13),
(1, 124, 42),
(1, 117, 53),
(1, 142, 50),
(1, 143, 32),
(1, 143, 59),
(1, 133, 25),
(1, 134, 48),
(1, 135, 45),
(1, 136, 42),
(1, 150, 85),
(1, 151, 98);



INSERT INTO evolution (base_pokemon_id, evolution_pokemon_id, evolution_level, require_stone, require_exchange) VALUES
(  1,   2, 16, false, false),
(  2,   3, 32, false, false),
(  4,   5, 16, false, false),
(  5,   6, 36, false, false),
(  7,   8, 16, false, false),
(  8,   9, 36, false, false),
( 10,  11, 7 , false, false),
( 11,  12, 10, false, false),
( 13,  14, 7 , false, false),
( 14,  15, 10, false, false),
( 16,  17, 18, false, false),
( 17,  18, 36, false, false),
( 19,  20, 20, false, false),
( 21,  22, 20, false, false),
( 23,  24, 22, false, false),
( 25,  26, 10, true, false),
( 27,  28, 22, false, false),
( 29,  30, 16, false, false),
( 30,  31, 13, true, false),
( 32,  33, 16, false, false),
( 33,  34, 14, true, false),
( 35,  36, 10, true, false),
( 37,  38, 26, true, false),
( 39,  40, 28, true, false),
( 41,  42, 22, false, false),
( 43,  44, 21, false, false),
( 44,  45, 19, true, false),
( 46,  47, 24, false, false),
( 48,  49, 31, false, false),
( 50,  51, 26, false, false),
( 52,  53, 28, false, false),
( 54,  55, 33, false, false),
( 56,  57, 28, false, false),
( 58,  59, 17, true, false),
( 60,  61, 25, false, false),
( 61,  62, 28, true, false),
( 63,  64, 16, false, false),
( 64,  65, 12, false, true),
( 66,  67, 28, false, false),
( 67,  68, 25, false, true),
( 69,  70, 21, false, false),
( 70,  71, 16, true, false),
( 72,  73, 30, false, false),
( 74,  75, 25, false, false),
( 75,  76, 38, false, true),
( 77,  78, 40, false, false),
( 79,  80, 37, false, false),
( 81,  82, 30, false, false),
( 84,  85, 31, false, false),
( 86,  87, 34, false, false),
( 88,  89, 38, false, false),
( 90,  91, 30, true, false),
( 92,  93, 25, false, false),
( 93,  94, 28, false, true),
( 96,  97, 26, false, false),
( 98,  99, 28, false, false),
(100, 101, 30, false, false),
(102, 103, 31, true, false),
(104, 105, 28, false, false),
(109, 110, 35, false, false),
(111, 112, 42, false, false),
(116, 117, 32, false, false),
(118, 119, 33, false, false),
(120, 121, 28, true, false),
(129, 130, 20, false, false),
(133, 134, 30, true, false),
(133, 135, 28, true, false),
(133, 136, 34, true, false),
(138, 139, 40, false, false),
(140, 141, 40, false, false),
(147, 148, 30, false, false),
(148, 149, 55, false, false);