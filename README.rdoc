# S3 + Jquery File Upload plugin + Paperclip  => fit for Heroku large file upload

Heroku has 30s limitation when you upload large file, it's annoying, isnt it?
Here is a one-stop-shop code for all if you are using Jquery File Upload and save files to Amazon S3, and also using Paperclip to process the image. Yeah, this solution is what you are looking for.


## Usage
create a enviroment file called `.env` in project root folder, and input your aws key stuff

```ruby
  S3_BUCKET=xxx  
  AWS_ACCESS_KEY_ID=xxx
  AWS_SECRET_ACCESS_KEY=xxxx
  S3_REGION=xxx
```

then run the following command to start. Enjoy!

```ruby
foreman run rails s
```

Thank YOU :)