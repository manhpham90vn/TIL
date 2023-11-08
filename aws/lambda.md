## Lambda là gì

- Một service serverless của AWS cho phép người dùng thực thi code mà không cần quan tâm tới hạ tầng phía sau.

## Các đặc điểm của lambda

- Lamda hỗ trợ các ngôn ngữ (runtime) sau:

  - Java
  - Python
  - .NET
  - GO
  - Ruby
  - Custom Runtime
  - Container

- Khi tạo 1 lambda function, bạn quyết định cấu hình thông qua thông số Memory. Min = 128MB, Max = 10GB. Memory càng cao, CPU được allocate càng lớn.
- Lambda khi khởi chạy được cấp phát 1 vùng nhớ tạm min = 512MB max =10GB, sẽ bị xoá khi lambda thực thi xong.
- Timeout tối đa 15 phút (quá thời gian này nếu execute chưa xong vẫn tính là failed và bị thu hồi resource).
- Lambda có thể được trigger từ nhiều nguồn: Trigger trực tiếp
  (Console or CLI), API Gateway, event từ các service khác (S3, SQS, DynamoDB, Kinesis, IoT...), hoặc chạy theo lịch (trigger từ EventBridge).
- Lambda có 2 mode chạy là chạy ngoài VPC và chạy trong VPC. Thông thường nếu lambda cần kết nối với RDS Database thì nên để trong VPC.
- Lưu ý đến số lượng IP của subnet chứa lambda.
- Lambda sau khi chạy xong sẽ không lưu lại bất cứ gì.
  - Log -> CloudWatch log
  - File output -> S3 hoặc EFS
  - Data output -> RDS Database hoặc DynamoDB.
- Lambda cũng cần được cấp IAM Role để có thể tương tác với các resource khác. Mặc định Lambda khi tạo ra sẽ được gán Role có các quyền cơ bản (vd write log to CloudWatch).
- Lambda không chỉ chứa 1 file code mà có thể chứa các file library, file common,... Để tiện dụng ta có thể gom nhóm chúng lại thành các
  layer và tái sử dụng ở nhiều function, tránh duplicate code.
- Khi có nhiều request từ client, Lambda scale horizontal bằng cách gia tăng số lượng concurent execute. Giới hạn này mặc định khi tạo account AWS là 10 concurent executions. Cần request tăng số này lên trước khi release production.
- Lambda có thể được set một số reserve concurent để tránh bị ảnh
  hưởng bởi các lambda khác.

## Cli

- cài đặt aws cli https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
- cấu hình tại file

```shell
~/.aws/credentials
```

- cài đặt sam cli https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html
- tạo project bằng hướng dẫn https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-getting-started-hello-world.html
- init project
```shell
sam init
```

- build
```shell
sam build
```

- build sử dụng docker
```shell
sam build --use-container
```

- deploy
```shell
sam deploy --guided
```

- sau khi deploy song thì chạy test như sau
```shell
curl https://21bwmgd7de.execute-api.ap-southeast-1.amazonaws.com/Prod/hello/
```

- test lambda function trên local (yêu cầu build bằng docker)
```shell
sam local invoke HelloWorldFunction -e events/event.json
```

- test lambda function bằng sam cli
```shell
sam remote invoke HelloWorldFunction --stack-name sam-app
```

- sync code
```shell
sam sync --watch
```

- delete
```shell
sam delete
```

- debug: có thể thêm flag --debug để debug lỗi

## Một số lỗi thường gặp

### Error: Running AWS SAM projects locally requires Docker. Have you got it installed and running?

- thêm DOCKER_HOST như sau
```shell
DOCKER_HOST=unix:///home/manh/.docker/desktop/docker.sock
```
- ref: https://github.com/aws/aws-sam-cli/issues/4329#issuecomment-1289588827