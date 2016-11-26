

# Using rnorm 
## Using POST & GET
r <- POST("http://ec2-54-169-12-17.ap-southeast-1.compute.amazonaws.com/ocpu/user/ruser/library/stats/R/rnorm", body  = list(n = 120))
r1 <- GET("http://ec2-54-169-12-17.ap-southeast-1.compute.amazonaws.com/ocpu/tmp/x0a64f2e579/R/.val/json")
ans <- content(r1)
q <- unlist (ans)

## Using POST
r <- POST("http://ec2-54-169-12-17.ap-southeast-1.compute.amazonaws.com/ocpu/user/ruser/library/stats/R/rnorm/json", body  = list(n = 120))
ans <- content(r)
q <- unlist(ans)

# Using GET
r <- GET("http://ec2-54-169-12-17.ap-southeast-1.compute.amazonaws.com/ocpu/user/ruser/library/stats/R/rnorm", 
          query  = list(n = "120"))
ans <- content(r)

# Using lm 

## Using POST & GET

r <- POST("http://ec2-54-169-12-17.ap-southeast-1.compute.amazonaws.com/ocpu/user/ruser/library/stats/R/lm",
          body  = list(formula = "speed~dist", data = "cars"))
r1 <- GET("http://ec2-54-169-12-17.ap-southeast-1.compute.amazonaws.com/ocpu/tmp/x02bd41e511/R/.val")
ans <- content(r1) # get the tmp pos on /ocpu 
res  <- POST ("http://ec2-54-169-12-17.ap-southeast-1.compute.amazonaws.com/ocpu/library/base/R/get/json", 
                    body = list(x="'coefficients'",pos="x02bd41e511")) # get the coeff of the lm fit
content(res)

r2 <- POST("http://ec2-54-169-12-17.ap-southeast-1.compute.amazonaws.com/ocpu/library/graphics/R/plot", body = list(x = "x02bd41e511"))
content(r2) # 4 graphs

