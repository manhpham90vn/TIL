## Selector

1. **Selector Phần Tử (Element Selector):**

   - Chọn tất cả các phần tử `<p>` và đặt màu chữ là đỏ.

   ```css
   p {
     color: red;
   }
   ```

2. **Selector Lớp (Class Selector):**

   - Chọn tất cả các phần tử có lớp là "example" và đặt nền màu là xanh.

   ```css
   .example {
     background-color: blue;
   }
   ```

3. **Selector ID (ID Selector):**

   - Chọn phần tử có ID là "header" và đặt kích thước font là 24px.

   ```css
   #header {
     font-size: 24px;
   }
   ```

4. **Selector Kết Tự (Descendant Selector):**

   - Chọn tất cả các phần tử `<a>` nằm trong các phần tử `<li>` và đặt màu chữ là đen.

   ```css
   li a {
     color: black;
   }
   ```

5. **Selector Con (Child Selector):**

   - Chọn tất cả các phần tử `<span>` là con trực tiếp của các phần tử `<div>` và đặt đường viền là 1px đen.

   ```css
   div > span {
     border: 1px solid black;
   }
   ```

6. **Selector Thuộc Tính (Attribute Selector):**

   - Chọn tất cả các phần tử `<input>` có thuộc tính `type` là "text" và đặt nền màu là vàng.

   ```css
   input[type="text"] {
     background-color: yellow;
   }
   ```

7. **Selector Giả Lập Class (Pseudo-class Selector):**

   - Chọn tất cả các phần tử `<a>` khi đang được di chuột qua và đặt màu chữ là đỏ.

   ```css
   a:hover {
     color: red;
   }
   ```

8. **Selector Giả Lập Phần Tử (Pseudo-element Selector):**

   - Chọn dòng đầu tiên trong mỗi phần tử `<p>` và đặt nền màu là xám.

   ```css
   p::first-line {
     background-color: gray;
   }
   ```

## Position

- Có các giá trị khác nhau cho thuộc tính `position`, và mỗi giá trị sẽ ảnh hưởng đến cách phần tử đó được hiển thị trên trang. Dưới đây là một số giá trị phổ biến của thuộc tính `position`:

1. **Static:**

   - Giá trị mặc định. Các phần tử với `position: static;` sẽ theo luồng bình thường của trang và không bị ảnh hưởng bởi các thuộc tính `top`, `right`, `bottom`, và `left`.

   ```css
   .example {
     position: static;
   }
   ```

2. **Relative:**

   - Phần tử được đặt tương đối với vị trí mà nó nằm trong luồng bình thường, sau đó có thể di chuyển bằng cách sử dụng các thuộc tính `top`, `right`, `bottom`, và `left`.

   ```css
   .example {
     position: relative;
     top: 10px;
     left: 20px;
   }
   ```

3. **Absolute:**

   - Phần tử được đặt tuyệt đối dựa trên vị trí của phần tử cha gần nhất có `position` khác `static`. Nếu không có phần tử cha nào có `position` khác `static`, phần tử sẽ được đặt tuyệt đối dựa trên vị trí của thẻ `<html>`.

   ```css
   .example {
     position: absolute;
     top: 30px;
     left: 50px;
   }
   ```

4. **Fixed:**

   - Phần tử được đặt tuyệt đối dựa trên vị trí của cửa sổ trình duyệt. Nó sẽ giữ vị trí ngay cả khi trang được cuộn.

   ```css
   .example {
     position: fixed;
     top: 10px;
     right: 10px;
   }
   ```

5. **Sticky:**

   - Phần tử được đặt dựa trên vị trí của người dùng cuộn trang. Nó hoạt động như `relative` cho đến khi phần tử nằm trong một khoảng cụ thể trên trang, sau đó nó trở thành `fixed`.

   ```css
   .example {
     position: sticky;
     top: 20px;
   }
   ```

## Display

1. **`display: block;`**

   - Chuyển phần tử thành một khối (block-level element). Nó chiếm hết chiều rộng của container cha và bắt đầu trên một dòng mới. Các phần tử block-level thường được sử dụng cho các phần tử như `<div>`, `<p>`, `<h1>` đến `<h6>`.

   ```css
   div {
     display: block;
   }
   ```

2. **`display: inline;`**

   - Chuyển phần tử thành một phần tử nội dung (inline element). Nó chỉ chiếm bao nhiêu chiều rộng cần thiết để chứa nội dung và không tạo ra một dòng mới sau nó. Các phần tử inline thường được sử dụng cho các phần tử như `<span>`, `<a>`, `<strong>`.

   ```css
   span {
     display: inline;
   }
   ```

3. **`display: inline-block;`**

   - Kết hợp giữa block và inline. Phần tử sẽ chiếm chiều rộng cần thiết nhưng vẫn giữ lại khả năng chồng chéo với các phần tử khác trên cùng một dòng.

   ```css
   img {
     display: inline-block;
   }
   ```

4. **`display: none;`**

   - Ẩn phần tử khỏi trang. Nó không chiếm không gian trên trang và không hiển thị.

   ```css
   .hidden {
     display: none;
   }
   ```

5. **`display: flex;`**

   - Tạo ra một container Flexbox, trong đó các phần tử con có thể được tổ chức theo hàng hoặc cột.

   ```css
   .flex-container {
     display: flex;
   }
   ```

6. **`display: grid;`**

   - Tạo ra một container Grid, cho phép bạn xây dựng bố cục trang web bằng cách sử dụng các hàng và cột.

   ```css
   .grid-container {
     display: grid;
   }
   ```
