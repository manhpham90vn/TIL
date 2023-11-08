## EC2 là gì
- là một service cung cấp tài nguyên server ảo theo yêu cầu.
## Một số đặc trưng:
- Đa dạng cấu hình (Ram/CPU/GPU/Network bw/ổ cứng)
- Dễ dàng triển khai, nhanh chóng chỉ với vài cú click chuột.
- Khả năng mở rộng gần như không giới hạn (chỉ cần có $$$).
- Linh hoạt trong việc trả tiền.
## AMI: Amazon Machine Image. 
- Giống như 1 file ISO/Ghost chứa toàn bộ thông tin của hệ điều hành. EC2 được khởi động lên từ 1 AMI tương tự như việc cài Win lần đầu cho PC/Laptop.
## EBS Volume: 
- Ổ cứng ảo được cấp phát bởi Amazon. Chỉ có thể đọc được dữ liệu
khi được gắn vào 1 Instance.
## Snapshot: 
- Ảnh chụp của 1 EBS Volume tại 1 thời điểm. Có thể sử dụng để phục hồi dữ liệu khi có sự cố.
## Instance:
- 1 Máy chủ ảo được cấp phát tài nguyên CPU, RAM, GPU,... tuỳ theo dòng instance mà sẽ có một số giới hạn nhất định.
## Lifecycle
![](../imgs/instance_lifecycle.png)
## Mô hình tính tiền của ec2
- On-Demand: Xài nhiêu trả nhiêu, không cần trả trước. Phù hợp cho đa số mục đích (học tập, môi trường dev,...)
- Reserve Instance or Saving Plan: Mua trước 1-3 năm hoặc commit số tiền sẽ xài hằng tháng để được discount so
với On-Demand (tối đa discount lên tới ~72%). Phù hợp cho môi trường production.
- Spot Instance: Đấu giá để được sd EC2 instance vào các khung giờ thấp điểm. Phù hợp cho các tác vụ xử lý hàng
loạt, cần giá rẻ, xử lý có thể resume lại khi bị dừng đột ngột.
- Dedicated Host: Thuê riêng phần cứng nếu có yêu cầu đặc biệt về compliance.

## Elastic Block Storage (EBS)
- Đặc trưng
  - Là một cơ chế lưu trữ dạng block.
  - Đơn vị quản lý là các EBS Volume.
  - Chỉ có thể access data khi được gắn vào 1 EC2 instance (dùng làm ổ
root, C: hoặc ổ data)
  - Một số loại EBS đặc biệt cho phép gắn vào nhiều hơn 1 EC2 instance
(multi attach).
  - Có thể tăng size một cách dễ dàng ngay cả khi server đang chạy (lưu ý:
không thể giảm size).
- Tính tiền:
  - Dung lượng của volume ($/GB/Month), không xài hết cũng mất tiền
100% trên dung lượng vì đã cấp phát rồi.
  - IOPS: Tốc độ đọc ghi càng cao, càng phát sinh phí.
  - Dung lượng của các bản snapshot của ổ cứng ($/GB/Month) tuy nhiên
giá rẻ hơn lưu trữ.

## User-data, meta-data
- EC2 cung cấp một cơ chế cho phép chạy script tại thời điểm launch gọi là user data.Có thể sử dụng user data để thực thi một số hành động
  - Install software
  - Download source code/artifact
  - Customize settings
- Lưu ý không nên để các thông tin nhạy cảm như DB username/pw vào trong user data.
- Mỗi EC2 có một bộ thông tin được nạp lên sau khi khở động gọi là meta data.Thông tin bao gồm địa chỉ IP public/private, security group, AMI-ID, Role,... phục vụ truy xuất khi cần thiết.Meta data được lưu tại địa chỉ: http://169.254.169.254/latest/meta-data (cố định cho cả windows và linux)