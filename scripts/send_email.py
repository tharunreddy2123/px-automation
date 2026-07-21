import os
import smtplib
from email.mime.text import MIMEText

subject = os.environ["MAIL_SUBJECT"]
body = os.environ["MAIL_BODY"]

sender = os.environ["EMAIL_USERNAME"]
password = os.environ["EMAIL_PASSWORD"]
receiver = os.environ["EMAIL_TO"]

msg = MIMEText(body)

msg["Subject"] = subject
msg["From"] = sender
msg["To"] = receiver

server = smtplib.SMTP("smtp.gmail.com",587)
server.starttls()

server.login(sender,password)

server.sendmail(sender,[receiver],msg.as_string())

server.quit()

print("Mail Sent")