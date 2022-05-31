import 'dart:math';

//list of dictionaries with each element referring to the frequency and correspondong note
var _freqList = [
  //0th octave
  {16.35: 'C0'},
  {17.32: 'C#0'},
  {18.35: 'D0'},
  {19.45: 'D#0'},
  {20.60: 'E0'},
  {21.83: 'F0'},
  {23.12: 'F#0'},
  {24.50: 'G0'},
  {25.96: 'G#0'},
  {27.50: 'A0'},
  {29.14: 'A#0'},
  {30.87: 'B0'},

  //1st Octave
  {32.70: 'C1'},
  {34.65: 'C#1'},
  {36.71: 'D1'},
  {38.89: 'D#1'},
  {41.20: 'E1'},
  {43.65: 'F1'},
  {46.25: 'F#1'},
  {49.00: 'G1'},
  {51.91: 'G#1'},
  {55.00: 'A1'},
  {58.27: 'A#1'},
  {61.74: 'B1'},

  //2nd Octave
  {65.41: 'C2'},
  {69.30: 'C#2'},
  {73.42: 'D2'},
  {77.78: 'D#2'},
  {82.41: 'E2'},
  {87.31: 'F2'},
  {92.50: 'F#2'},
  {98.00: 'G2'},
  {103.83: 'G#2'},
  {110.00: 'A2'},
  {116.54: 'A#2'},
  {123.47: 'B2'},

  //3rd octave
  {130.81: 'C3'},
  {138.59: 'C#3'},
  {146.83: 'D3'},
  {155.56: 'D#3'},
  {164.81: 'E3'},
  {174.61: 'F3'},
  {185.00: 'F#3'},
  {196.00: 'G3'},
  {207.65: 'G#3'},
  {220.00: 'A3'},
  {233.08: 'A#3'},
  {246.94: 'B3'},

  //4th octave
  {261.63: 'C4'},
  {277.18: 'C#4'},
  {293.66: 'D4'},
  {311.13: 'D#4'},
  {329.63: 'E4'},
  {349.23: 'F4'},
  {369.99: 'F#4'},
  {392.00: 'G4'},
  {415.30: 'G#4'},
  {440.00: 'A4'},
  {466.16: 'A#4'},
  {493.88: 'B4'},

  //5th octave
  {523.25: 'C5'},
  {554.37: 'C#5'},
  {587.33: 'D5'},
  {622.25: 'D#5'},
  {659.25: 'E5'},
  {698.46: 'F5'},
  {739.99: 'F#5'},
  {783.99: 'G5'},
  {830.61: 'G#5'},
  {880.00: 'A5'},
  {932.33: 'A#5'},
  {987.77: 'B5'},

  //6th octave
  {1046.50: 'C6'},
  {1108.73: 'C#6'},
  {1174.66: 'D6'},
  {1244.51: 'D#6'},
  {1318.51: 'E6'},
  {1396.91: 'F6'},
  {1479.98: 'F#6'},
  {1567.98: 'G6'},
  {1661.22: 'G#6'},
  {1760.00: 'A6'},
  {1864.66: 'A#6'},
  {1975.53: 'B6'},

  //7th octave
  {2093.00: 'C7'},
  {2217.46: 'C#7'},
  {2349.32: 'D7'},
  {2489.02: 'D#7'},
  {2637.02: 'E7'},
  {2793.83: 'F7'},
  {2959.96: 'F#7'},
  {3135.96: 'G7'},
  {3322.44: 'G#7'},
  {3520.00: 'A7'},
  {3729.31: 'A#7'},
  {3951.07: 'B7'},

  //8ve octave
  {4186.01: 'C8'},
  {4434.92: 'C#8'},
  {4698.63: 'D8'},
  {4978.03: 'D#8'},
  {5274.04: 'E8'},
  {5587.65: 'F8'},
  {5919.9: 'F#8'},
  {6271.93: 'G8'},
  {6644.88: 'G#8'},
  {7040.00: 'A8'},
  {7458.62: 'A#8'},
  {7902.13: 'B8'}
];

class NoteFrequencies {
  String getNote(double freq) {
    List<double> differenceList = [];
    for (int i = 0; i < _freqList.length; i++) {
      differenceList.add((freq - _freqList[i].keys.first).abs());
    }
    double minVal = differenceList.reduce(min);
    int idx = differenceList.indexOf(minVal);
    return _freqList[idx].values.first;
  }
}
