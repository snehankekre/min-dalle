import streamlit as st
import subprocess
import sys
import os

if not os.path.isdir("pretrained"):
  subprocess.call("bash setup.sh", shell=True)
  
with st.form("min(DALL.E)"):
    prompt = st.text_input("Enter your text here:")
    submit = st.form_submit_button("Generate")

if submit:
    subprocess.call(
        f"{sys.executable} image_from_text.py --text='{prompt}' --seed=7", shell=True
    )

    st.image("generated.png")
    with open("generated.png", "rb") as file:
     btn = st.download_button(
             label="Download image",
             data=file,
             file_name="generated.png",
             mime="image/png"
           )
