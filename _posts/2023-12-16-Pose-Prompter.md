---
layout: post
title: "Pose Prompter – Final Project"
date: 2023-12-16 00:00:00 -0400
categories: coding design experimentation
---

This is a pose prompter machine. It displays a generated image that is prompted by a text prompt and a user’s pose in front of a webcam. It is a combination of real-time hand tracking with automated image generation. It is a novel way of prompting for AI image generation. The system operates in two components: ‘app_camera.py’ and ‘index-camera.html’ are focused on real-time hand tracking, while ‘app.py’ and ‘index.html’ send and receive data from the image generator. The flagship workflow is a moon above a beach horizon with aurora borealis.

I used several applications and platforms to make this project:

- GPT4: writing code and software walkthrough
- VS Code: writing code and file management
- Github: software and asking for advice 
- MediaPipe: body tracking
- ComfyUI: image generating software (a version of Stable Diffusion)

*note: I refer to ComfyUI as ‘ComfyUI’ even when not referring to the user interface component of ComfyUI. It seems to be the convention in the community.

## Code

All code for this project is available on GitHub at [https://github.com/mkg2145/pose-prompter](https://github.com/mkg2145/pose-prompter)

The project is made up of two components, the camera component that captures a screenshot of the JavaScript overlay, and the image generation component that uses that screenshot as an input for the image generator (ComfyUI) and displays the output image on a webUI.

## Camera component: ‘app_camera.py’ and ‘index-camera.html’

![First Experiment](/media/YouCut_20231220_180838651_2.gif)

The first component of this project are two files: ‘app_camera.py’ and ‘index-camera.html’. Together they display the webcam, use MediaPipe for hand tracking, apply a JavaScript overlay of circles on the detected hand areas, and capture a screenshot every 200ms. The screenshots are saved to a directory for immediate use by ‘app.py’.

## Image generation component: ‘app.py’ and ‘index.html’

![Second Experiment](/media/YouCut_20231220_180953056_2.gif)

The second component feeds the screenshots (generated by the first component) along with a text prompt into ComfyUI (image generator) to generate and display an image onto a simple webUI at the rate of about 3 images per second.

‘app.py’ monitors the screenshot-save directory on my PC for the newest file. We want the generated image to reflect the user’s real-time pose, so we need to send the latest screenshot to ComfyUI. I am familiar with monitoring folders for their latest file with Python, as I used this technique for my [voice-to-notion app (April 2023)](https://yurigushiken.com/2023/04/11/voice-to-notion-python-app/).

## Workflows

Workflows are a combination of JSON files made with ComfyUI’s point/click/drag user interface as well as the JavaScript overlay from ‘app_camera.py’ and ‘index-camera.html’. They are designed to work together. In this showcase example of a planet in the galaxy, ‘app_camera.py’ and ‘index-camera.html’ create circles that will represent planets, and the JSON file includes the text prompt and input image (screenshot).

To make the JSON file, we assemble our image generator by connecting nodes within ComfyUI. Once complete, we export the workflow as a JSON file which will be used by ‘app.py’.

![First Experiment](/media/Screenshot-2023-12-16-142939.png)
*first experiment*

![Output Images in Directory](/media/capturemoon.png)
*output images in directory*

![Early Results](/media/generates-moons-in-place.png)
*early results*

![Workflow – Moon over horizon](/media/YouCut_20231219_215001809.mp4)
*Workflow – Moon over horizon*

![Workflow – A being in the universe](/media/YouCut_20231219_222700984_1.mp4)
*Workflow – A being in the universe*

![Workflow – Two planets in a cloudy universe](/media/YouCut_20231219_223437317.mp4)
*Workflow – Two planets in a cloudy universe*

## Inspiration – release of SDXL Turbo

I was inspired and enabled to generate images in near-real-time by the release of [SDXL Turbo](https://huggingface.co/stabilityai/sdxl-turbo) (28 Nov, 2023), which is a fast text-to-image model compared to standard models (~300ms per generation vs. ~6 seconds). In reaction to the release of SDXL Turbo, my friends and I had a conversation about what would be faster than ‘text-to-image’, since generating at 3 images per second is faster than my ability to type a new input. Someone jokingly suggested “thought-to-image”. With this app using a version of ‘pose-to-image’, we’ve found some middle ground.

## Experience gained

- VS Code – Managing project in coding software
- GitHub – Asked and received help from GitHub repository owner
- Encoding – Learned about base64 image encoding
- ComfyUI – Learned to use ComfyUI in code! This is a personal achievement!

![Microsoft VS Code](/media/vscode-2048x1109.png)
*Microsoft VS Code, with built-in file explorer, built-in terminal for test-runs, and built-in AI assistant “Co-Pilot”*

![GitHub Issues](/media/github-issues-2048x1265.png)
*This GitHub ‘issues’ page helped me with the API. It explains sending and receiving images with ComfyUI. Sending requires encoding to base64 and receiving involves decoding the output image.*

![Issue #1](/media/Screenshot-2023-12-19-224954.png)
*Issue #1: My first help request with the repository owner. I was not decoding the image from ComfyUI API properly.*

![Issue #2](/media/github-issue2-2048x1585.png)
*Issue #2: I was attempting to encode two images into one ComfyuI input node. Solution – each image gets its own node.*

![Handle Generate Image](/media/handle_generate_image-2048x1579.png)
*The most difficult part of the code: encoding image to base64 and sending to ComfyUI. I was stuck for days without progress.*

![Monitoring a Directory for the Latest Image](/media/function-latest-image.png)
*Monitoring a directory for the latest image. This is the same function I used my April 2023 application ‘voice-to-notion’ – posted on my blog and GitHub page (mkg2145)*

![Basic Workflow](/media/basic-workflow-2048x1453.png)
*The user interface of ComfyUI. This is a visual representation of the JSON file (prompt) that ‘app.py’ sends to ComfyUI. I used two new nodes for this project: “load image Base-64” and “save image Base-64.*

![Perfecting the Prompt](/media/perfectingtheprompt.png)
*Testing workflows – adjusting settings, prompts, and input images and swapping nodes*

## Demonstrations

![Early Test – ‘app_camera.py’](/media/app_camera-screen-recording.mp4)
*Early test – ‘app_camera.py’*

![A Friend Using the App](/media/20231211_185308.mp4)
*A friend using the app*

![A Professor Using the App](/media/20231212_155001_1.mp4)
*A professor using the app*

![Testing the App in Class](/media/20231212_175902.mp4)
*Testing the app in class*

![Using the App with Friends in Social Work Library](/media/20231219_201021_1.mp4)
*Using the app with friends in Social Work library*

## Links

- ComfyUI – Image generator: [https://github.com/comfyanonymous/ComfyUI](https://github.com/comfyanonymous/ComfyUI)
- SDXL Turbo install guide and demonstration: [https://www.youtube.com/watch?v=e-dqCHaI4U8&t=84s&pp=ygUKc2R4bCB0dXJibw==](https://www.youtube.com/watch?v=e-dqCHaI4U8&t=84s&pp=ygUKc2R4bCB0dXJibw==)
- GPT4 – Coding assistant: [https://chat.openai.com/](https://chat.openai.com/)
- Visual Studio Code – Coding software with GitHub Copilot: [https://code.visualstudio.com/](https://code.visualstudio.com/)

## Scratched projects (projects started, but aborted)

Newsguesser – Game to guess the news. User is presented with an image of a story in the news and tries to guess the headline. The image presented is generated by image generator with input prompt as a headline and subheading of a news story. An AI compares the user’s guess and the actual headline and gives a score.

Rewind Time Machine – Revisit specific days in the past. User selects day on calendar. The UI shows.
