# Running the setup :


## Step 1

* Build and start the app: `docker build -t <appname> .` then `docker run -p 3000:4567 <appname>`

## Step 2

* Build and start nginx: `docker build -t <servername> .` then `docker run -p 5000:90 <servername>`

## Step 3

* Open the nginx.template file in `ng-kong/kong` folder and in the `location` blocks put the IP:PORT of your nginx server in your `proxy_pass directive`
* Build and start kong: `docker-compose up --build`

### NOTE 

Now open localhost:8005 on the browser. There you will see the app that you have created.
Replace 8005 with the port on which your kong-nginx server is listening specified in the nginx.template file in `ng-kong/kong` folder.
You can perform the steps in any order but open the url localhost:8005 only after performing all the steps.
You can also check that your nginx will run on localhost:5000 and your app on localhost:3000. 


