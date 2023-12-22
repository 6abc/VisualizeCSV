# import pygwalker as pyg
# import pandas as pd
# import streamlit.components.v1 as components
# import streamlit as st

# df = pd.read_csv('data/source.csv', encoding='latin-1') #Your CSV encoding was required for this CSV(encoding not mandatory)

# # Adjust the width of the Streamlit page
# st.set_page_config(
#     page_title="VisualizeCSV",
#     layout="wide"
# )

# # Add Title
# st.title("VisualizeCSV by github.com/6abc")

# # Generate the HTML using Pygwalker
# pyg_html = pyg.walk(df, return_html=True)

# # Embed the HTML into the Streamlit app
# components.html(pyg_html, height=1000, scrolling=True)
import pygwalker as pyg
import pandas as pd
import streamlit.components.v1 as components
import streamlit as st

# Adjust the width of the Streamlit page
st.set_page_config(
    page_title="VisualizeCSV",
    layout="wide"
)

# Add Title
st.title("VisualizeCSV by github.com/6abc")

# File Upload
uploaded_file = st.file_uploader("Upload a CSV file", type=["csv"])

# Check if a file has been uploaded
if uploaded_file is not None:
    # Read the CSV file
    df = pd.read_csv(uploaded_file, encoding='latin-1')

    # Generate the HTML using Pygwalker
    pyg_html = pyg.walk(df, return_html=True)

    # Embed the HTML into the Streamlit app
    components.html(pyg_html, height=1000, scrolling=True)
else:
    st.warning("Please upload a CSV file.")
