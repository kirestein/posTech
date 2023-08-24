# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
import pandas as pd

df_csv = pd.read_csv('Datas/aluguel.csv', sep=';')
df_csv.columns.name = 'Id'
print(df_csv)