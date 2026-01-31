# Digital Signal Processing (DSP) Lab Codes using GNU Octave / MATLAB

This repository contains MATLAB/Octave codes for various Signal Processing laboratory experiments. The codes cover basic signal generation, frequency analysis, waveform generation, line coding, and modulation techniques.

**Tools Used:** GNU Octave (Compatible with MATLAB)

---

## 📂 Lab 01: Introduction to Basic Signals & Frequency Analysis
**Objective:** মৌলিক সিগন্যাল তৈরি (Time Domain) এবং তাদের ফ্রিকোয়েন্সি বিশ্লেষণ (Frequency Domain)।

| Code No | Signal Name / Task | Short Description |
| :---: | :--- | :--- |
| **01** | **Basic Cosine Signal** | একটি সাধারণ Cosine ওয়েভ প্লট করা। (Time Domain) |
| **02** | **Exponential Decay** | সময়ের সাথে কমে যাচ্ছে এমন একটি সিগন্যাল ($e^{-\alpha t}$) তৈরি করা। |
| **03** | **Simple FFT (Freq vs Amp)** | সাইন ওয়েভকে Time Domain থেকে Frequency Domain-এ নিয়ে ফ্রিকোয়েন্সি বের করা। |
| **04** | **Damped Sine Wave** | সাইন ওয়েভ, যা সময়ের সাথে ছোট হয়ে যাচ্ছে (Exponential গুণ করে)। |
| **05** | **FFT of Composite Signal** | একাধিক সাইন ওয়েভ যোগ করে তৈরি জটিল সিগন্যালের ফ্রিকোয়েন্সি বের করা। |
| **06** | **Cosine with Phase Shift** | সাধারণ Cosine ওয়েভ, কিন্তু একটু সরে শুরু হয়েছে (Phase $\theta$ যোগ করা)। |
| **07** | **Sine & Cosine Combined** | একই গ্রাফে সাইন এবং কোসাইন দুটোই আঁকা (`hold on` ব্যবহার করে)। |
| **08** | **FFT Analysis (Repeat)** | কোড ০৩ বা ০৫ এর মতোই, ভিন্ন ফ্রিকোয়েন্সি দিয়ে FFT প্র্যাকটিস। |
| **09** | **Basic Sinusoidal Signal** | একটি সাধারণ Sine ওয়েভ প্লট করা। |

---

## 📂 Lab 02: Generation of Non-Sinusoidal Waveforms
**Objective:** সাইন/কোসাইন ছাড়া অন্যান্য ওয়েভফর্ম (Square, Triangle, Sawtooth) লজিক দিয়ে তৈরি করা।

| Code No | Signal Name / Task | Short Description |
| :---: | :--- | :--- |
| **01** | **Square Wave** | `sign(sin(t))` ফাংশন ব্যবহার করে স্কয়ার ওয়েভ বানানো। |
| **02** | **Triangular Wave (Manual)** | `sawtooth(t, 0.5)` অথবা ম্যানুয়াল লজিক ব্যবহার করে ত্রিভুজ আকৃতির ওয়েভ। |
| **03** | **Pulse Wave (Duty Cycle)** | `square(t, duty)` ফাংশন দিয়ে পালস তৈরি (Duty cycle কন্ট্রোল করা)। |
| **04** | **Sawtooth Wave** | `sawtooth(t)` ফাংশন দিয়ে করাত আকৃতির ওয়েভ বানানো। |

---

## 📂 Lab 03: Digital Line Coding Techniques
**Objective:** বাইনারি বিট (0, 1) কে ভোল্টেজ বা সিগন্যালে রূপান্তর করা।
*(Note: `n` = samples per bit, e.g., 100)*

| Code No | Signal Name | Logic Description | MATLAB Logic / Shape Code (`for b = bits`) |
| :---: | :--- | :--- | :--- |
| **01** | **Unipolar NRZ** | **1:** +ve Voltage <br> **0:** Zero Voltage | `if b==1, s=ones(1,n);`<br>`else s=zeros(1,n); end` |
| **02** | **Polar NRZ** | **0:** +ve Voltage <br> **1:** -ve Voltage | `if b==1,  s=-1*ones(1,n);`<br>`else s = ones(1,n); end` |
| **03** | **Unipolar RZ** | **1:** Half High, Half Zero <br> **0:** Always Zero | `if b==1, s=[ones(1,n/2) zeros(1,n/2)];`<br>`else s=zeros(1,n); end` |
| **04** | **Polar RZ** | **1:** Half +ve, Half 0 <br> **0:** Half -ve, Half 0 | `if b==1, s=[ones(1,n/2) zeros(1,n/2)];`<br>`else s=[-1*ones(1,n/2) zeros(1,n/2)]; end` |
| **05** | **Manchester** | **1:** High to Low <br> **0:** Low to High | `if b==1, s=[ones(1,n/2) -ones(1,n/2)];`<br>`else s=[-1*ones(1,n/2) ones(1,n/2)]; end` |
| **06** | **Bipolar AMI** | **0:** Zero <br> **1:** Toggle (+V, -V) | `if b==0, s=zeros(1,n);`<br>`else s=v*ones(1,n); v=-v; end` *(Need prev state)* |

---

## 📂 Lab 04: Analog & Digital Modulation
**Objective:** মডুলেশন টেকনিক (কিভাবে সিগন্যালকে বাহক তরঙ্গের সাথে মিশিয়ে পাঠানো হয়)।

| Code No | Signal Name / Task | Short Description |
| :---: | :--- | :--- |
| **01** | **Frequency Modulation (FM)** | মেসেজ অনুযায়ী ক্যারিয়ারের **ফ্রিকোয়েন্সি** পরিবর্তন করা। (`fmmod` or manual) |
| **02** | **PCM (Quantization)** | এনালগ সাইন ওয়েভকে ধাপে ধাপে ডিজিটাল মান (Quantized Level) এ ভাগ করা। |
| **03** | **Amplitude Modulation (AM)** | মেসেজ অনুযায়ী ক্যারিয়ারের **অ্যাম্প্লিচিউড** বা উচ্চতা পরিবর্তন করা। (`(1+m*x).*c`) |
| **04** | **Delta Modulation (DM)** | সিগন্যাল বাড়লে ১ বিট, কমলে ০ বিট (সিঁড়ির মতো ধাপে ধাপে আগানো)। |

---

## 📝 Cheat Sheet (Common Functions)

A quick reference for common Octave/MATLAB functions used in these labs.

| Function | Keyword | Usage |
| :--- | :--- | :--- |
| **Sine/Cos** | `sin`, `cos` | `y = sin(2*pi*f*t)` |
| **Exponential** | `exp` | `y = exp(-alpha*t)` |
| **Plotting** | `plot`, `stairs` | `plot(t,y)` for analog, `stairs(t,y)` for digital bits |
| **Frequency** | `fft` | Fast Fourier Transform |
| **Array Build** | `[ ]` | `x = [x shape]` (Concatenation / জোড়া লাগানো) |
| **Repeating** | `ones`, `zeros` | `ones(1, 100)` creates 100 samples of High voltage |