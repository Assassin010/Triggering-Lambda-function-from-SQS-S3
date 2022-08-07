# Triggering-Lambda-function-from-SQS-S3
Triggering Lambda function from SQS and store the message in S3 bucket with Terraform(IAC)

•	Note: If you decide to use another bucket name please replace also the bucket name in the lambda python code with your the bucket name

To check if the code works

1.	Navigate to the SQS queue, click on the SEND AND RECEIVE MESSAGES button on the top right side.
2.	Under Send message:
•	Message body : Enter {"Name" : "Paul", "Course" : "Amazon Web Services", "Cost" : "$20"}
3.	Now click on the SEND MESSAGE button.
4.	You will be able to see a similar message.
           
5.	Now Navigate to S3 Console, open the S3 bucket that you have created.
6.	You will be able to see an object with the name Message.json, Click on the object name.
7.	Now click on the Make Public button under Action and then click on Make public. Now click on the Close button 

7.	Select the object and then click on OPEN  button. The s3 object will be downloaded to your local machine.
8.	Now open the file and you will be able to see the message that you have passed to SQS.
           

 
