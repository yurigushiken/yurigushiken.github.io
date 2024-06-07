---
layout: post
title: "Demonstration of GPT Vision and DeepFace"
date: 2023-11-12 00:00:00 -0400
categories: coding design experimentation
---

![DeepFace by Facebook, 2021](/media/stock-2-1024x576.jpg)

## Demonstration of GPT Vision and DeepFace

Demonstration of GPT Vision and DeepFace. GPT Vision released by OpenAI early November 2023. DeepFace from Facebook, 2021.

I started with Roboflow’s GPT Vision application and modified it to include DeepFace.

GPT Vision: [https://platform.openai.com/docs/guides/vision](https://platform.openai.com/docs/guides/vision)

DeepFace: [https://github.com/serengil/deepface](https://github.com/serengil/deepface)

Original Roboflow’s GPT Vision: [https://github.com/roboflow/awesome-openai-vision-api-experiments](https://github.com/roboflow/awesome-openai-vision-api-experiments)

![I added creation of .txt files and DeepFace to Roboflow’s original script](/media/Screenshot-2023-11-12-153402-1024x673.png)

![.txt file of response from bot](/media/Screenshot-2023-11-12-153431-1024x743.png)

![Bot user interface](/media/Screenshot-2023-11-12-153509-1024x710.png)

![Screenshot of the final implementation](/media/Screenshot-2023-11-12-203510-1024x610.png)

## Code

```markdown
<pre style="background: #f4f4f4; padding: 20px; border-radius: 8px;">
<code>
import base64
import os
import uuid

import cv2
import gradio as gr
import numpy as np
import requests
from deepface import DeepFace
from datetime import datetime

MARKDOWN = """
# WebcamGPT 💬 + 📸

webcamGPT is a tool that allows you to chat with video using OpenAI Vision API.

Visit [awesome-openai-vision-api-experiments](https://github.com/roboflow/awesome-openai-vision-api-experiments) 
repository to find more OpenAI Vision API experiments or contribute your own.
"""
AVATARS = (
    "https://media.roboflow.com/spaces/roboflow_raccoon_full.png",
    "https://media.roboflow.com/spaces/openai-white-logomark.png"
)
IMAGE_CACHE_DIRECTORY = "data"
API_URL = "https://api.openai.com/v1/chat/completions"

def get_next_file_number(directory):
    highest_num = -1
    for filename in os.listdir(directory):
        if filename.endswith(".txt") or filename.endswith(".jpeg"):
            num_part = ''.join(filter(str.isdigit, filename))
            if num_part.isdigit():
                highest_num = max(highest_num, int(num_part))
    return f"{highest_num + 1:04d}"

def preprocess_image(image: np.ndarray) -> np.ndarray:
    image = np.fliplr(image)
    return cv2.cvtColor(image, cv2.COLOR_RGB2BGR)

def encode_image_to_base64(image: np.ndarray) -> str:
    success, buffer = cv2.imencode('.jpg', image)
    if not success:
        raise ValueError("Could not encode image to JPEG format.")
    encoded_image = base64.b64encode(buffer).decode('utf-8')
    return encoded_image

def compose_payload(image: np.ndarray, prompt: str) -> dict:
    base64_image = encode_image_to_base64(image)
    return {
        "model": "gpt-4-vision-preview",
        "messages": [
            {
                "role": "user",
                "content": [
                    {
                        "type": "text",
                        "text": prompt
                    },
                    {
                        "type": "image_url",
                        "image_url": {
                            "url": f"data:image/jpeg;base64,{base64_image}"
                        }
                    }
                ]
            }
        ],
        "max_tokens": 300
    }

def compose_headers(api_key: str) -> dict:
    return {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {api_key}"
    }

def prompt_image(api_key: str, image: np.ndarray, prompt: str) -> str:
    headers = compose_headers(api_key=api_key)
    payload = compose_payload(image=image, prompt=prompt)
    response = requests.post(url=API_URL, headers=headers, json=payload).json()

    if 'error' in response:
        raise ValueError(response['error']['message'])
    return response['choices'][0]['message']['content']

def generate_analysis_text(analysis_results, chatbot_response):
    analysis_text = "GPT Vision Analysis:\n"
    analysis_text += f"{chatbot_response}\n\n"
    analysis_text += "DeepFace Analysis:\n"
    first_result = analysis_results[0] if isinstance(analysis_results, list) else analysis_results

    if "Error" not in first_result:
        age = first_result.get("age", "N/A")
        gender = first_result.get("dominant_gender", "N/A")
        emotion = first_result.get("dominant_emotion", "N/A")
        race = first_result.get("dominant_race", "N/A")
        analysis_text += (
            f"  - Age: {age}\n"
            f"  - Gender: {gender}\n"
            f"  - Emotion: {emotion}\n"
            f"  - Race: {race}\n"
        )
    else:
        analysis_text += first_result["Error"]

    return analysis_text

def cache_analysis_results(analysis_text):
    file_num = get_next_file_number(IMAGE_CACHE_DIRECTORY)
    analysis_filename = f"analysis_results_{file_num}.txt"
    analysis_path = os.path.join(IMAGE_CACHE_DIRECTORY, analysis_filename)
    with open(analysis_path, 'w') as file:
        file.write(analysis_text)
    return analysis_path

def cache_chatbot_response(response):
    file_num = get_next_file_number(IMAGE_CACHE_DIRECTORY)
    response_filename = f"chatbot_response_{file_num}.txt"
    response_path = os.path.join(IMAGE_CACHE_DIRECTORY, response_filename)
    with open(response_path, 'w') as file:
        file.write(response)
    return response_path

def cache_raw_data(analysis_results):
    file_num = get_next_file_number(IMAGE_CACHE_DIRECTORY)
    raw_data_filename = f"raw_data_{file_num}.txt"
    raw_data_path = os.path.join(IMAGE_CACHE_DIRECTORY, raw_data_filename)
    with open(raw_data_path, 'w') as file:
        return raw_data_path

def cache_image(image: np.ndarray) -> str:
    file_num = get_next_file_number(IMAGE_CACHE_DIRECTORY)
    image_filename = f"capture{file_num}.jpeg"
    image_path = os.path.join(IMAGE_CACHE_DIRECTORY, image_filename)
    cv2.imwrite(image_path, image)
    return image_path

def respond(api_key: str, image: np.ndarray, prompt: str, chat_history):
    if not api_key:
        raise ValueError("API_KEY is not set. Please follow the instructions in the README to set it up.")

    image = preprocess_image(image=image)
    try:
        analysis_results = DeepFace.analyze(img_path=image, actions=['age', 'gender', 'emotion', 'race'])
        raw_data_path = cache_raw_data(analysis_results)
    except Exception as e:
        analysis_results = {"Error": str(e)}
        raw_data_path = cache_raw_data({"Error": str(e)})

    response = prompt_image(api_key=api_key, image=image, prompt=prompt)
    response_path = cache_chatbot_response(response)
    analysis_text = generate_analysis_text(analysis_results, response)
    combined_analysis_text_path = cache_analysis_results(analysis_text)
    cached_image_path = cache_image(image)
    chat_history.append(((cached_image_path, combined_analysis_text_path, raw_data_path, response_path), None))
    chat_history.append((prompt, response))
    return "", chat_history

with gr.Blocks() as demo:
    gr.Markdown(MARKDOWN)
    with gr.Row():
        webcam = gr.Image(source="webcam", streaming=True)
        with gr.Column():
            api_key_textbox = gr.Textbox(label="OpenAI API KEY", type="password")
            chatbot = gr.Chatbot(height=500, bubble_full_width=False, avatar_images=AVATARS)
            message_textbox = gr.Textbox()
            clear_button = gr.ClearButton([message_textbox, chatbot])

    message_textbox.submit(fn=respond, inputs=[api_key_textbox, webcam, message_textbox, chatbot], outputs=[message_textbox, chatbot])

demo.launch(debug=False, show_error=True)
</code>
</pre>

