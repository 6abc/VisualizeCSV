import pygwalker as pyg
import pandas as pd
import streamlit.components.v1 as components
import streamlit as st

df = pd.read_csv('source.csv', encoding='latin-1') #Your CSV encoding was required for this CSV(encoding not mandatory)

# Adjust the width of the Streamlit page
st.set_page_config(
    page_title="Use Pygwalker In Streamlit",
    layout="wide"
)

# Add Title
st.title("Use Pygwalker In Streamlit")

# Generate the HTML using Pygwalker
pyg_html = pyg.walk(df, return_html=True)

# Embed the HTML into the Streamlit app
components.html(pyg_html, height=1000, scrolling=True)