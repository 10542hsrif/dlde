import os

os.system('clear')

driver = input("Do you want to install legacy NVIDIA drivers? (Y/n): ").strip().lower()

if driver in ["y", "Y", "yes", "Yes"]:
    os.system('sh apt-sid.sh')
elif driver in ["n", "N", "no", "No"]:
    exit()
else:
    os.system('sh apt-sid.sh')

exit()
