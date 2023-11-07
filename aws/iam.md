## iam là gì
- Viêt tắt của Identity and Access Management
- Nhiệm vụ định danh và phân quyền, quản lý việc ai(who) và cái gì (what) có thể
access như thế nào tới các resources trên AWS, quản lý một cách tập trung các
quyền chi tiết, phân tích truy cập để tinh chỉnh quyền.

## iam policy
- Policy có 2 loại là: Inline Policy và Managed Policy
- Inline policy: được đính trực tiếp lên Role/User/Group và
không thể tái sử dụng ở Role/User/Group khác.
- Managed Policy: Được tạo riêng và có thể gắn vào nhiều
User/Group/Role.
- Managed Policy lại được chia thành 2 loại là AWS
Managed và User Managed.

## iam user
- Đại diện cho 1 profile của 1 người dùng trên AWS account.
- User có thể login vào AWS Console sử dụng username/password.
- User mặc định khi tạo ra sẽ không có quyền gì. Cần cấp quyền cho user thông qua Policy
- User có thể phát hành access-key/secret-key để sử dụng cho CLI hoặc test SDK trong quá trình test code. Cặp access/secret key này cũng sẽ đại diện cho user (thay vì dùng
username/password).

## iam role
- Đại diện cho 1 quyền trên AWS. Không giống như khái niệm Role của 1 user như
trong phân quyền hệ thống, cần lưu ý để tránh nhầm lẫn.
Sử dụng khi muốn cấp quyền cho 1 thực thể có thể tương tác với các resources
khác trên AWS. Thường dùng để gắn vào EC2, Lambda, Container,...
- Có thể sử dụng để cấp quyền cho 1 user nằm ở AWS account khác mà không muốn
tạo ra user profile cho họ trên account AWS của mình. Bằng cách cho phép 1 user
assume-role tới 1 role trên account, user có thể có các quyền tạm thời để thực
hiện thao tác.
- Lưu ý: một resource trên AWS không thể tương tác với resource khác nếu không
được gán Role với các quyền thích hợp. Đây cũng chính là lý do khiến cho việc Role & Permission khiến cho mọi người tốn thời gian trouble shooting nếu không nắm
rõ dịch vụ mà mình đang sử dụng.

## iam group
- Đại diện cho 1 nhóm user trên hệ thống.
- Sử dụng khi muốn phân chia quyền dựa theo vai trò trong dự án, phòng
ban,...
- Nên thiết kế các nhóm user và phân quyền hợp lý, sau đó khi có người mới
chúng ta chỉ cần add user đó vào các nhóm cần thiết giúp tiết kiệm thời gian
và tránh sai sót (cấp dư hoặc thiếu quyền).
- Lưu ý tránh bị chồng chéo quyền (vd 1 group allow action A nhưng group
khác lại deny action A).
- Một group không thể chứa group khác (lồng nhau).
- Một user có thể không thuộc group nào hoặc thuộc nhiều groups.
- Một group có thể không có user nào hoặc có nhiều users.

## iam policy và resource policy
- Một số resouce như S3, SQS, KMS hỗ trợ định nghĩa policy ở cấp độ resource.
- Về cơ bản cấu trúc resource policy tương tự IAM policy nhưng được gán cho một resource cụ thể.
- Quyền của một user (group/role) đối với resource sẽ là kết hợp của IAM Policy & Resource Policy sau khi đã loại trừ Deny.
- Một số resource cần security cao sẽ thường được ưu tiên setting resource policy.
- Lưu ý: IAM Policy nói chung không có tác dụng đối với account root.
=> Nếu lỡ tay setting deny all không thao tác được trên một resource, có thể login = account root để chỉnh lại.

## iam assume role
- Yêu cầu AWS STS cung cấp 1 set temporary security credential để có thể access resource mà thông thường ta không có quyền access.
- Có thể assume tới 1 role trên cùng account hoặc khác account.
- Sử dụng trong các usecase cấp quyền tạm thời mà không muốn tạo nhiều user, quản lý tập trung user thông qua Single-Sign-On thay vì tạo user trên từng account.

## iam switch role
- Khi muốn cấp quyền access cho user X vào account B nhưng không muốn tạo profile, ta có thể cho phép user X switch role sang role Y của account B từ đó có thể thực hiện các thao tác trên account B.
- Sau khi switch role, user sẽ rời bỏ quyền ban đầu của mình và sẽ tương tác với các resource khác với tư cách là role Y.
- Để switch role được, role Y phải thiết lập trust policy trước đó cho phép user X có thể switch role.

## iam trust policy
- Quy định đối tượng nào có thể assume sang role được gắn trust policy này.
- Đối tượng được trust có thể là User/Role/AWS service.