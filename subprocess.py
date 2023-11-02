import subprocess
import tkinter as tk

# Function to set android_id
def set_android_id():
    android_id = android_id_entry.get()
    command = f"adb shell settings put secure android_id {android_id}"
    subprocess.run(command, shell=True)
    result_label.config(text=f"android_id set to {android_id}")

    # Save the android_id to a file
    with open("android_id.txt", "w") as file:
        file.write(android_id)

# Create the main window
window = tk.Tk()
window.title("Set android_id")

# Create and configure the label
label = tk.Label(window, text="Enter android_id:")
label.pack()

# Create and configure the entry field
android_id_entry = tk.Entry(window)
android_id_entry.pack()

# Load the android_id from the file if available
try:
    with open("android_id.txt", "r") as file:
        previous_android_id = file.read()
        android_id_entry.insert(0, previous_android_id)
except FileNotFoundError:
    pass

# Create and configure the set button
set_button = tk.Button(window, text="Set", command=set_android_id)
set_button.pack()

# Create and configure the result label
result_label = tk.Label(window, text="")
result_label.pack()

# Start the GUI main loop
window.mainloop()
