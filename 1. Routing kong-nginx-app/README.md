# Running the app :


## Step 1

* Build and start the app: `docker build -t <appname> .` then `docker run -p 3000:4567 <appname>`

## Step 2

* Build and start nginx: `docker build -t <servername> .` then `docker run -p 5000:90 <servername>`

## Step 3

* Open the nginx.template file in `ng-kong/kong` folder and in the `location` blocks put the IP:PORT of your nginx server in your `proxy_pass directive`
* Build and start kong: `docker-compose up --build`



