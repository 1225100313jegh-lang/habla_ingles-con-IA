import 'nivel.dart';
 
/// Una frase modelo. Se aprenden FRASES COMPLETAS (chunks), no palabras sueltas:
/// así el cerebro guarda ritmo, entonación y gramática juntos.
class Frase {
  final String id;
  final String ingles;
  final String espanol;
  final NivelCefr nivel;
  final String foco; // qué se practica con esta frase
  final String consejo; // consejo de pronunciación en español
 
  const Frase(this.id, this.ingles, this.espanol, this.nivel, this.foco, this.consejo);
}
 
const catalogoFrases = <Frase>[
  Frase('a1-01', 'Nice to meet you.', 'Mucho gusto.', NivelCefr.a1, 'Ritmo', 'Acentúa "meet" y alarga la "ee".'),
  Frase('a1-02', 'Where is the bathroom?', '¿Dónde está el baño?', NivelCefr.a1, 'Entonación', 'La voz sube al final solo en preguntas de sí/no; aquí baja.'),
  Frase('a1-03', 'I live in Dolores Hidalgo.', 'Vivo en Dolores Hidalgo.', NivelCefr.a1, 'Sonido "v"', 'Para la "v", los dientes superiores tocan el labio inferior.'),
  Frase('a1-04', 'I would like a coffee, please.', 'Quisiera un café, por favor.', NivelCefr.a1, 'Contracciones', '"I would" suena como "I\'d": rápido y suave.'),
  Frase('a1-05', 'The ship is big.', 'El barco es grande.', NivelCefr.a1, 'Par mínimo ship/sheep', '"ship" tiene la "i" corta y relajada; "sheep" la tiene larga y tensa.'),
  Frase('a1-06', 'The Cry of Dolores began in 1810.', 'El Grito de Dolores comenzó en 1810.', NivelCefr.a1, 'Pasado simple', 'En "began", marca con claridad la sílaba final.'),
  Frase('a1-07', 'Miguel Hidalgo rang the church bell.', 'Miguel Hidalgo tocó la campana de la iglesia.', NivelCefr.a1, 'Pasado irregular', '"Rang" es el pasado de "ring"; pronuncia la vocal como en "sing".'),
  Frase('a1-08', 'People met in the town square.', 'La gente se reunió en la plaza del pueblo.', NivelCefr.a1, 'Pasado simple', 'Une suavemente "met in" sin perder la terminación de "met".'),
  Frase('a1-09', 'Dolores Hidalgo is part of Mexican history.', 'Dolores Hidalgo forma parte de la historia de México.', NivelCefr.a1, 'Acento de frase', 'Acentúa "part" y "history"; las palabras pequeñas suenan más suaves.'),
  Frase('a1-10', 'The Independence Museum tells this story.', 'El Museo de la Independencia cuenta esta historia.', NivelCefr.a1, 'Sonido "th"', 'En "this", coloca la lengua entre los dientes y usa la voz.'),
  Frase('a2-01', 'I think this is a good idea.', 'Creo que es una buena idea.', NivelCefr.a2, 'Sonido "th"', 'Pon la lengua entre los dientes para "th" en "think" y "this".'),
  Frase('a2-02', 'Could you speak more slowly?', '¿Podría hablar más despacio?', NivelCefr.a2, 'Palabras funcionales', '"Could you" se une: "cou-dyu".'),
  Frase('a2-03', 'I went to the market yesterday.', 'Ayer fui al mercado.', NivelCefr.a2, 'Pasado simple', 'La "-ed" y "went" son pasado: marca el tiempo con claridad.'),
  Frase('a2-04', 'She doesn\'t like spicy food.', 'No le gusta la comida picante.', NivelCefr.a2, 'Tercera persona', '"doesn\'t" lleva el acento en "does"; "like" no lleva -s.'),
  Frase('b1-01', 'If I had more time, I would study every day.', 'Si tuviera más tiempo, estudiaría todos los días.', NivelCefr.b1, 'Condicional', 'Haz una pausa corta después de la coma.'),
  Frase('b1-02', 'I have been learning English for two years.', 'He estado aprendiendo inglés por dos años.', NivelCefr.b1, 'Presente perfecto continuo', '"have been" suena "hav-bin" y es átono.'),
  Frase('b1-03', 'Despite the rain, we enjoyed the festival.', 'A pesar de la lluvia, disfrutamos el festival.', NivelCefr.b1, 'Conectores', 'Acentúa "rain" y "fes-ti-val" (primera sílaba).'),
];
 
List<Frase> frasesDeNivel(NivelCefr n) => catalogoFrases.where((f) => f.nivel == n).toList();
