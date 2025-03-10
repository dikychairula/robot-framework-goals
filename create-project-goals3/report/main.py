# 1 Buka Folder Project Tugas 2.2
# 2. Didalam older project bikin folder ex:Report
# 3. Masuk ke folder Report 
#    - Masukan file main.py
# 5. Setelah file main.py masuk setup dulu path untuk testuite yang ingin dijalankan (create update delete project TM DIgital)
# 6. Melakukan setup directory mau kemana untuk menyimpan reportnya
# 7. Setup output.xml yang telah terbuat menjadi base html report by robotmetrics
# 8. Setup untuk melakukan running testsuite / testcasenya

#PATH
# Resource    ../test_case/login_tm_digital.robot
# Resource    ../test_case/create_project.robot
# Resource    ../test_case/update_project.robot
# Resource    ../test_case/delete_project.robot


import os
from robot import run
import subprocess
from datetime import datetime

testcase = [
    "../test_case/create_project.robot",
    # "../test_case/update_project.robot",
    "../test_case/delete_project.robot"
]

date_for_report = datetime.now().strftime("%d%m%y-%H%M%S")
output_dir = os.path.abspath("resultSuites-"+date_for_report)  # Get the absolute path
options = {
    "outputdir": output_dir,      # Directory to save the results
    # "loglevel": "DEBUG",          # Log level
    # "report": "report.html",      # Report file name
    # "log": "log.html",            # Log file name
}

# Run the test case with the options
run(*testcase,**options)

# CONVERT & GENERATE REPORT FROM XML TO HTML
output_path = os.path.join(output_dir, "output.xml") # type: ignore
if os.path.exists(output_path):
    # Run Robot Framework Metrics and save in the results folder
    metrics_command = f"robotmetrics --inputpath {output_dir} --output {output_path} --metrics-report-name newReport.html" # type: ignore
    subprocess.run(metrics_command, shell=True) # type: ignore
else:
    print(f"output.xml file is missing: {output_path}")

