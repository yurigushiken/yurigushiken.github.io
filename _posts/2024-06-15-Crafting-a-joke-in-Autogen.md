---
layout: post
title:  "Crafting a Joke in Autogen"
date:   2024-06-15 01:05:54 -0400
categories: autogen update learning-projects
thumbnail:
subtitle: "Using a multi-agent workflow to write a joke."
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">Using a multi-agent workflow to write a joke.</p>
  
  <h3 style="color: #eee;">What I did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Use Microsoft's open-source software - Autogen Studio 2.0</li>
    <li>Set up a three-agent system: two "comedian" agents and one "Joke-Director" agent.</li>
    <li>Wrangle chaotic multi-agent interactions through meticulous environment setup and prompt design</li>
  </ul>
</div>

<details style="margin-bottom: 20px; background-color: #282c34; padding: 15px; border-radius: 5px; border: 1px solid #444;">
  <summary style="cursor: pointer; font-weight: bold; color: #7cc5ff; font-size: 1.2em;">Read Full Post Details...</summary>
  <div style="padding-top: 15px; color: #bbb;" markdown="1">

This joke was written by a team of AI agents:

# "Dating in New York is like job hunting: ghosted, rejected, or you end up with a mime."

This is a demonstration of an [Autogen Studio 2.0](https://github.com/microsoft/autogen) workflow with three agents: Two comedians (Mark-Normand) and (Sam Morril), overseen by one Joke-Director.

Autogen is a Microsoft Open-Source project that allows users to program and run AI agents. 

To see how the agents arrived at the joke and to witness an early example of agent interactions please see the conversation:

--------------------------------------------------------------------------------
<span style="color: #FF5733;">Yuri</span>: Please write a joke

<span style="color: #8D33FF;">Joke-Director</span>: 
Mark, Sam, write a joke.

<span style="color: #FF33C4;">Mark-Normand</span>: 
Alright, Sam, let's do this. How about we start with something relatable? Maybe dating in New York?
Hey Sam, dating in New York is like job hunting...

<span style="color: #33FF57;">Sam-Morril</span>: 
Yeah, Mark, dating in New York is like job hunting... you apply for a bunch of positions, get ghosted by most, and the ones that call you back are just trying to sell you a pyramid scheme. Mark, what do you think? Maybe we can tighten it up a bit.

<span style="color: #FF33C4;">Mark-Normand</span>: 
Nice, Sam! Let's trim it down for impact. How about: "Dating in New York is like job hunting: you get ghosted, rejected, and the ones that call back are just pyramid schemes."

<span style="color: #33FF57;">Sam-Morril</span>: 
I like it, Mark! Short and punchy. How about we add a little twist for the punchline? "Dating in New York is like job hunting: you get ghosted, rejected, and the ones that call back are just pyramid schemes... or living with their parents." What do you think?

<span style="color: #8D33FF;">Joke-Director</span>: 
Reviewing the joke.

Reasons why it does not meet the standards:

- Punchline: The punchline lacks a strong element of surprise or unexpected twist.
- Economy of words: The joke could be more concise.
- Exaggeration: Needs stronger exaggeration to emphasize the humor.
- Relatability: Could be more relatable by focusing on a more common experience.
- Misdirection: The misdirection isn't strong enough to create a significant humorous surprise.

Revise and resubmit.

<span style="color: #FF33C4;">Mark-Normand</span>: 
Alright, Sam, let's punch this up with more exaggeration and a stronger twist. How about: "Dating in New York is like job hunting: you get ghosted, rejected, and if they call you back, they're either a pyramid scheme or a mime." What do you think?

<span style="color: #33FF57;">Sam-Morril</span>: 
That's a good start, Mark! The mime twist is unexpected. Let's tighten it up a bit more for economy. "Dating in New York is like job hunting: ghosted, rejected, or you end up with a mime." What do you think?

<span style="color: #8D33FF;">Joke-Director</span>: 
Reviewing the joke.

Reasons why it does not meet the standards:

- Setup: The setup is clear and relatable.
- Punchline: The punchline is unexpected but could use more impact.
- Economy of words: The joke is concise but could be tighter.
- Exaggeration: The exaggeration is moderate; could be more extreme for humor.
- Misdirection: The misdirection is present but lacks a strong flip.
- Timing: Pacing is decent but could be sharper.
- Rule of three: Properly structured, but the third item could be more surprising.
- Revise and resubmit.

(15 turns passed - end of conversation)

Model: GPT-4o Tokens: ~20,000 Cost: $0.10

The prompts for the comedians were modeled after Mark Normand's comedic style with a four page multiple shot prompt.

![Image of Mark Normand](/media/mark-normand.jpeg)
*Image source: [https://improv.com/irvine/comic/mark+normand/](https://improv.com/irvine/comic/mark+normand/)*

  </div>
</details>

