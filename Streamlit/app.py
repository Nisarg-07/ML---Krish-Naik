import streamlit as st
import pandas as pd
import numpy as np

# Title of the application

st.title("Hey there! This is Streamlit.")

# Display a Dataframe

df = pd.DataFrame({"first_column": [1, 2, 3], "second_column": [4, 5, 6]})
st.write(df)

# Display a line chart

chart_df = pd.DataFrame(np.random.randn(20, 3), columns=["A", "B", "C"])
st.line_chart(chart_df)

bar_df = pd.DataFrame()
st.bar_chart(bar_df)
