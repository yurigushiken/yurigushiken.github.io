---
layout: post
title:  "Voice to Notion Python App"
date:   2022-01-11 00:00:00 -0400
categories: python app hobby
thumbnail: https://img.youtube.com/vi/-nVTJpQAbs0/0.jpg
subtitle: "Python application"
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">Python application that transcribes voice memos and imports the text, along with an AI-generated summary, into Notion.</p>
  
  <h3 style="color: #eee;">What I did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Developed a Python app to automate voice memo transcription and note creation in Notion.</li>
    <li>Integrated OpenAI API (WhisperAI for transcription, GPT-3 for summaries).</li>
    <li>Google Cloud Services for continuous operation and file monitoring.</li>
    <li>Notion API for note input.</li>
    <li>App fulfills a personal need for a specific voice-to-note workflow not available in existing software market.</li>
  </ul>
</div>

GitHub repository for the Voice to Notion app [here](https://github.com/yurigushiken/voice-to-notion).

<p>Video demonstration:</p>
<a href="https://www.youtube.com/watch?v=-nVTJpQAbs0" target="_blank">
  <img src="https://img.youtube.com/vi/-nVTJpQAbs0/0.jpg" alt="Watch the video" style="width: 560px; height: 315px;">
</a>

I created a Voice-to-Notion app with Python that transcribes voice files and inputs them into Notion, a note-taking app. It uses the OpenAI API for WhisperAI and GPT-3 for transcription and summary generation, as well as Google Cloud Services and Notion APIs. The app runs on Google Cloud continuously, waiting for new voice files to enter a folder. The reason for creating this app was that the applications on the market did not do exactly what I wanted and needed.


