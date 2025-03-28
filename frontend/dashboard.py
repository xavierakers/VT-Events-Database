import tkinter as tk
from tkinter import messagebox
import mysql.connector

def connect_to_db():
    try:
        conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="adminadmin",
            database="vt_event_database"
        )
        cursor = conn.cursor()
        cursor.execute("SELECT name, location FROM venues")
        venues = cursor.fetchall()

        listbox.delete(0, tk.END)
        for venue in venues:
            listbox.insert(tk.END, f"{venue[0]} - {venue[1]}")

        cursor.close()
        conn.close()

    except mysql.connector.Error as err:
        messagebox.showerror("Database Connection Error", f"Error: {err}")

root = tk.Tk()
root.title("Virginia Tech Event Venues")

connect_button = tk.Button(root, text="Venues", command=connect_to_db)
connect_button.pack(pady=10)

listbox = tk.Listbox(root, width=50, height=15)
listbox.pack(pady=10)

root.mainloop()
