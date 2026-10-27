# ECGGeneratorArduino

A synthetic ECG signal generator. MATLAB builds one heartbeat waveform, and an Arduino plays it back as an 8-bit parallel output for a DAC stage. The repo also holds the Proteus schematic.

*Early work: electronics coursework.*

## Context

The Proteus project file is dated July to August 2015. The code was uploaded to GitHub in August 2019, together with my other university-era projects.

## What it shows

- Signal modelling in MATLAB. One heartbeat (the P, QRS and T segments) is built piecewise from 14 time breakpoints, then sampled at 3,000 points and quantised to 0–255.
- Direct port manipulation on an Arduino Mega. Each sample is written to `PORTB` in one instruction, with microsecond delays to set the beat timing.
- Moving a lookup table from MATLAB into firmware.
- A Proteus schematic and simulation of the microcontroller and output stage.

## Stack

MATLAB, Arduino (C/C++), Proteus.

## Run it

Run `heart_signal_drawer.m` in MATLAB or Octave to plot the waveform. Flash `arduino_ecg_generator.ino` to an Arduino Mega and connect `PORTB` to an 8-bit DAC (for example an R-2R ladder). Open the `.pdsprj` file in Proteus to view the circuit.

## Looking back (2026)

Today I would generate the table with a script instead of pasting it into the sketch, and drive the output from a timer interrupt instead of busy-wait delays to get steadier timing.
