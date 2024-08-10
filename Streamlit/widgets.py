import streamlit as st
import pandas as pd

st.title("Streamlit TEXT Input")

name = st.text_input("Enter your name : ")

age = st.slider("Select your age : ", 0, 100, 25)

if name:
    st.write(f"Hello {name} your age is {age}!")


options = ["Python", "Javascript", "C", "C++"]
choice = st.selectbox("Chose the language in which you are confident", options)
st.write(f"You have selected {choice}.")


data = {
    "Name": ["Nick", "Manav", "Akshar"],
    "Age": [24, 21, 24],
    "City": ["Toronto", "Valsad", "Vadodara"],
}
df = pd.DataFrame(data)
df.to_csv("Sample.csv")

st.write(df)


upload_file = st.file_uploader("Chosse a csv file", type="csv")

if upload_file is not None:
    df = pd.read_csv(upload_file)
    st.write(df)
