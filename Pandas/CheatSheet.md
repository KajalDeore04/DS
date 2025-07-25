# Pandas Cheat Sheet

## 1. Reading Data

```python
import pandas as pd

# Read CSV with date parsing
df = pd.read_csv('file.csv', parse_dates=['DateColumn'])

# Read without date parsing, then convert
df['DateColumn'] = pd.to_datetime(df['DateColumn'])
```

## 2. Basic Exploration

```python
df.head()      # View first 5 rows
df.tail()      # View last 5 rows
df.info()      # Column info and non-null counts
df.describe()  # Descriptive statistics
df.value_counts()  # For Series: count unique values
```

## 3. Selecting Data

```python
# Selecting columns
df['Col']

# Selecting rows by index
df.iloc[0]

# Selecting rows by condition
df[df['Col'] > 5]

# Selecting using loc
df.loc[0, 'Col']
df.loc[:, ['Col1', 'Col2']]
```

## 4. Handling Missing Data

```python
df.isnull()          # Check missing values
df.isnull().sum()    # Count missing values per column
df.dropna()          # Drop rows with any missing values
df.fillna(0)         # Fill missing with 0
df.fillna(method='ffill')  # Forward fill
df.fillna(method='bfill')  # Backward fill
```

## 5. Data Type Conversion

```python
df['Col'] = df['Col'].astype(int)                # Convert to int
df['DateCol'] = pd.to_datetime(df['DateCol'])   # Convert to datetime
```

## 6. String Operations

```python
df['Col'].str.lower()             # Convert to lowercase
df['Col'].str.contains('text')   # Check if contains text
df['Col'].str.replace('a', 'b')  # Replace text
df['Col'].str.extract('regex')   # Extract using regex
```

## 7. Filtering and Conditional Selection

```python
df[df['Col'] > 10]
df[(df['Col1'] > 10) & (df['Col2'] < 5)]
```

## 8. Sorting and Ranking

```python
df.sort_values('Col')
df.sort_values(['Col1', 'Col2'], ascending=[True, False])
df.sort_index()
df['Rank'] = df['Col'].rank()
```

## 9. Applying Functions

```python
def func(x):
    return x * 2

df['NewCol'] = df['Col'].apply(func)
df['NewCol'] = df['Col'].apply(lambda x: x + 5)
df['Col'].map({'A': 1, 'B': 2})     # Mapping values in Series
```

## 10. GroupBy

```python
grouped = df.groupby('Col')
grouped['OtherCol'].mean()
df.groupby(['Col1', 'Col2']).agg({'Col3': 'mean'})
df.groupby('Col').transform('mean')
```

## 11. Pivot Tables

```python
df.pivot_table(index='Col1', columns='Col2', values='Col3', aggfunc='mean')
```

## 12. Merging and Joining

```python
pd.concat([df1, df2])                        # Vertical
pd.concat([df1, df2], axis=1)               # Horizontal
pd.merge(df1, df2, on='Key')               # Merge on key
pd.merge(df1, df2, left_on='Key1', right_on='Key2')
df1.join(df2, lsuffix='_left', rsuffix='_right')  # Join on index
```

## 13. Time Series

```python
df = pd.read_csv('file.csv', parse_dates=['Date'])
df.set_index('Date', inplace=True)
df.resample('M').mean()                    # Monthly average
df['Year'] = df.index.year
df['Month'] = df.index.month
df['Day'] = df.index.day
df.loc['2025-01']                          # Filter by date
```

## 14. MultiIndexing

```python
arrays = [
    ['Group1', 'Group1', 'Group2'],
    ['Sub1', 'Sub2', 'Sub1']
]
index = pd.MultiIndex.from_arrays(arrays, names=('Group', 'Sub'))
df = pd.DataFrame({'Data': [1, 2, 3]}, index=index)
df.loc['Group1']
df.loc[('Group1', 'Sub1')]
```

## 15. Feature Engineering

```python
df['NewCol'] = df['Col1'] + df['Col2']
df['IsMinor'] = df['Age'].apply(lambda x: 1 if x < 18 else 0)
df['Title'] = df['Name'].str.extract(',\s*([^\.]*)\s*\.')
```

## 16. Removing Duplicates

```python
df.duplicated().sum()           # Check duplicates
df = df.drop_duplicates()       # Remove duplicates
```

## 17. Practical Tips

* Use `.copy()` when creating slices to avoid SettingWithCopyWarning.
* Use `df.sample(5)` for a random sample.
* Use `.iloc` for position-based and `.loc` for label-based selection.
* Use `.query('Col > 5')` for readable filtering.
* For memory efficiency, use `df.info(memory_usage='deep')`.


