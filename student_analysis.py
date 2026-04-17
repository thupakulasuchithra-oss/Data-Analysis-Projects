import pandas as pd
import matplotlib.pyplot as plt

# Dataset
data = {
    'Name': ['Ravi', 'Priya', 'Arun', 'Sneha', 'Kiran'],
    'Math': [78, 92, 60, 88, 55],
    'Science': [85, 88, 65, 95, 60],
    'English': [80, 90, 70, 92, 58]
}

df = pd.DataFrame(data)

# Calculations
df['Total'] = df[['Math', 'Science', 'English']].sum(axis=1)
df['Average'] = df[['Math', 'Science', 'English']].mean(axis=1)

print("\nFull Data:\n", df)

# Top and weak student
top_student = df.loc[df['Total'].idxmax()]
weak_student = df.loc[df['Total'].idxmin()]

print("\nTop Performer:\n", top_student)
print("\nWeak Student:\n", weak_student)

# Chart
plt.bar(df['Name'], df['Total'])
plt.xlabel("Students")
plt.ylabel("Total Marks")
plt.title("Student Performance Analysis")
plt.show()