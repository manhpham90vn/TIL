## Định nghĩa region
- Region là một khái niệm để mô tả một khu vực vật lý trên thế giới mà
AWS cung cấp các dịch vụ điện toán đám mây. Mỗi AWS Region là một
khu vực độc lập với cơ sở hạ tầng và các dịch vụ.
Mỗi region sẽ bao gồm nhiều Availability Zone (AZ).

## Availability Zone là gì?
- Một Availability Zone (AZ) là một trung tâm dữ liệu hoặc một nhóm các
trung tâm dữ liệu nằm trong cùng một khu vực vật lý, nhưng được
phân bổ và vận hành hoàn toàn độc lập. Mỗi AZ có thể có các tài
nguyên đám mây như máy chủ ảo, ổ cứng, network, security, các dịch
vụ khác nhau, cùng với các tài nguyên hỗ trợ khác như hệ thống cấp
điện.
- Việc sử dụng nhiều Availability Zone giúp đảm bảo tính khả dụng (HA)
cao cho ứng dụng, tăng tính bảo mật và bảo đảm dữ liệu được lưu trữ
và xử lý an toàn. Nếu một AZ bị sự cố hoặc ngừng hoạt động, các tài
nguyên đám mây được triển khai tại các AZ khác vẫn có thể hoạt động
bình thường, giúp đảm bảo rằng dịch vụ của bạn vẫn hoạt động một
cách liên tục và đáng tin cậy.
- Mỗi region của AWS thường có ít nhất 3 AZs.
- VD: ở region Singapore(ap-southeast) sẽ có các zone:
  - ap-southeast-1a
  - ap-southeast-1b
  - ap-southeast-1c
- Hầu hết các service của AWS đều hỗ trợ triển khai trên Multi-AZ để
đảm bảo nâng cao High Avalibility của hệ thống.

## Edge location là gì
- AWS Edge Location là một mạng lưới các điểm phân phối (Point of
Presense) trên thế giới, nơi các dịch vụ AWS, như Amazon CloudFront
và Amazon Route 53, cung cấp các tính năng xử lý và phân phối nội
dung (CDN) đến người dùng cuối.
- Mỗi Edge Location là một trung tâm dữ liệu nhỏ và được quản lý bởi
AWS, có khả năng đáp ứng các yêu cầu địa phương từ các máy khách
của người dùng cuối. Edge Locations hoạt động như bộ đệm cho nội
dung được phân phối bởi các dịch vụ AWS, giúp giảm thiểu độ trễ và
tăng tốc độ truy cập cho người dùng cuối.