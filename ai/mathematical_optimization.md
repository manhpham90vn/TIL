# Mathematical Optimization, hay tối ưu hóa toán học

- là một lĩnh vực trong toán học và khoa học máy tính nghiên cứu về cách tìm giá trị tốt nhất (tối ưu) cho một hàm mục tiêu dưới sự điều kiện của một số ràng buộc. Mục tiêu của tối ưu hóa là tìm ra giải pháp tối ưu, tức là giá trị của hàm mục tiêu là tối đa hoặc tối thiểu.

Các vấn đề tối ưu hóa xuất hiện trong nhiều lĩnh vực khác nhau như kinh tế, kỹ thuật, công nghệ, quản lý chuỗi cung ứng, và nhiều lĩnh vực khác. Các bài toán tối ưu hóa có thể được chia thành hai loại chính:

1. **Tối ưu hóa không ràng buộc (Unconstrained Optimization):** Trong trường hợp này, chúng ta cần tìm giá trị cực đại hoặc cực tiểu của một hàm mục tiêu mà không có ràng buộc nào.

2. **Tối ưu hóa có ràng buộc (Constrained Optimization):** Trong trường hợp này, ngoài việc tối ưu hóa hàm mục tiêu, chúng ta còn phải xem xét các điều kiện ràng buộc. Ràng buộc có thể là những hạn chế về giá trị của các biến hay mối quan hệ giữa chúng.

## Các thể loại

1. **Tối ưu hóa liên tục (Continuous Optimization):** Các biến quyết định trong bài toán có thể nhận giá trị bất kỳ trong một khoảng liên tục. Các ví dụ bao gồm tối ưu hóa hàm số liên tục, tối ưu hóa thiết kế kỹ thuật, và tối ưu hóa trong khoa học dữ liệu.

2. **Tối ưu hóa rời rạc (Discrete Optimization):** Các biến quyết định chỉ có thể nhận giá trị trong một tập hữu hạn hoặc rời rạc. Ví dụ bao gồm bài toán lập lịch, tối ưu hóa đồng thời kích thước lô hàng, và tối ưu hóa mạng lưới.

3. **Tối ưu hóa tuyến tính (Linear Optimization):** Các hàm mục tiêu và ràng buộc là tuyến tính. Phương pháp giải quyết nổi tiếng nhất cho bài toán này là phương pháp Simplex.

4. **Tối ưu hóa phi tuyến tính (Nonlinear Optimization):** Các hàm mục tiêu hoặc ràng buộc có thể là phi tuyến tính. Các phương pháp giải quyết bài toán này bao gồm Gradient Descent, Quasi-Newton methods, và Genetic Algorithms.

5. **Tối ưu hóa lồi (Convex Optimization):** Là một phần quan trọng của tối ưu hóa phi tuyến tính, nơi mà hàm mục tiêu và tất cả các ràng buộc là lồi. Các bài toán lồi thường có thể được giải quyết hiệu quả.

6. **Tối ưu hóa nguyên (Integer Optimization):** Một dạng của tối ưu hóa rời rạc, trong đó các biến quyết định phải nhận giá trị nguyên. Ví dụ bao gồm bài toán nguyên không âm và bài toán nguyên có dấu.

7. **Tối ưu hóa đa mục tiêu (Multi-objective Optimization):** Bài toán có nhiều hơn một hàm mục tiêu, và không có một giải pháp tốt nhất mà có thể đáp ứng tất cả các mục tiêu.

8. **Tối ưu hóa động (Dynamic Optimization):** Các bài toán tối ưu hóa trong thời gian, trong đó quyết định phải được đưa ra tại nhiều thời điểm khác nhau.

## Ứng dụng

1. **Tài Chính và Quản lý Rủi ro:**

   - Tối ưu hóa quản lý danh mục đầu tư để đạt được lợi nhuận mong muốn với rủi ro tối thiểu.
   - Tối ưu hóa chuỗi cung ứng và quản lý rủi ro trong ngành bảo hiểm.

2. **Logistics và Quản lý Chuỗi Cung Ứng:**

   - Tối ưu hóa quy trình đóng gói và vận chuyển để giảm chi phí và thời gian giao hàng.
   - Quy hoạch tối ưu kho để đảm bảo tồn kho hiệu quả và đáp ứng nhanh chóng yêu cầu của khách hàng.

3. **Tổ chức và Quản lý Dự Án:**

   - Lập kế hoạch tối ưu các nguồn lực như nhân sự và thiết bị trong quản lý dự án.
   - Lập kế hoạch phân công công việc để tối ưu hóa hiệu suất và thời gian hoàn thành.

4. **Tối Ưu Hóa Mạng Lưới:**

   - Tối ưu hóa cấu trúc mạng lưới viễn thông để tối ưu hóa hiệu suất và chi phí.
   - Quy hoạch tối ưu mạng lưới điện để đảm bảo cung cấp điện hiệu quả và ổn định.

5. **Quy hoạch Tài Nguyên và Sản Xuất:**

   - Lập kế hoạch sản xuất tối ưu để đạt được sản lượng cao với chi phí thấp.
   - Tối ưu hóa sử dụng nguyên liệu và tài nguyên trong quá trình sản xuất.

6. **Quy hoạch Đường Hầm và Giao Thông:**

   - Tối ưu hóa luồng giao thông để giảm kẹt xe và thời gian di chuyển.
   - Quy hoạch tối ưu hóa các hệ thống đường hầm để cải thiện hiệu suất và an toàn.

7. **Quy hoạch Năng Lượng:**

   - Tối ưu hóa lập kế hoạch và vận hành hệ thống năng lượng tái tạo.
   - Quy hoạch tối ưu hóa việc sử dụng nguồn năng lượng trong hệ thống điện.

8. **Tối Ưu Hóa Mạng Xã Hội và Tiếp Thị:**
   - Tối ưu hóa chiến lược tiếp thị và quảng cáo để đạt được hiệu suất tốt nhất.
   - Tối ưu hóa mô hình mạng xã hội để tối ưu hóa tương tác và tăng cường thương hiệu.

## Library

1. **SciPy Optimization (scipy.optimize):**

   - GitHub: https://github.com/scipy/scipy
   - SciPy là một thư viện khoa học và toán học phổ biến trong Python, và nó cung cấp mô-đun `scipy.optimize` cho các công cụ tối ưu hóa.

2. **PuLP:**

   - GitHub: https://github.com/coin-or/pulp
   - PuLP là một thư viện Python cho tối ưu hóa tuyến tính, sử dụng giải thuật tuyến tính COIN-OR CBC hoặc CPLEX.

3. **CVXPY:**

   - GitHub: https://github.com/cvxpy/cvxpy
   - CVXPY là một thư viện Python dành cho tối ưu hóa lồi (convex optimization). Nó cung cấp một API dễ sử dụng cho việc xây dựng và giải quyết các bài toán tối ưu hóa lồi.

4. **Gurobi Python Interface:**

   - GitHub: https://github.com/Gurobi/gurobi-optimization
   - Gurobi là một bộ giải tối ưu hóa mạnh mẽ và nhanh chóng. Gurobi Python Interface cung cấp tích hợp Python để tương tác với bộ giải Gurobi.

5. **Optuna:**

   - GitHub: https://github.com/optuna/optuna
   - Optuna là một thư viện tối ưu hóa siêu tham số và tìm kiếm siêu tham số tự động trong máy học.

6. **OR-Tools:**

   - GitHub: https://github.com/google/or-tools
   - OR-Tools là một bộ công cụ tối ưu hóa do Google phát triển, cung cấp các công cụ cho nhiều loại bài toán tối ưu hóa.

7. **Pyomo:**

   - GitHub: https://github.com/Pyomo/pyomo
   - Pyomo là một framework Python mạnh mẽ cho mô hình hóa và giải quyết các bài toán tối ưu hóa.

8. **Optimizely (Optuna Fork for Black-Box Optimization):**

   - GitHub: https://github.com/optimizely/Optimizely
   - Optimizely là một bản fork của Optuna, được tối ưu hóa đặc biệt cho các bài toán tối ưu hóa "hộp đen" (black-box optimization).

## Example
### Đề bài
- Một xí nghiệp cần sản xuất 3 loại bánh: bánh đậu xanh, bánh thập cẩm và bánh
dẻo. Lượng nguyên liệu đường, đậu cho một bánh mỗi loại, lượng dự trữ nguyên liệu, tiền
lãi cho một bánh mỗi loại được cho trong bảng sau:

|  Nguyên liệu |  Bánh đậu xanh |  Bánh thập cẩm | Bánh dẻo  |  Lượng dự trữ |
|---|---|---|---|---|
| Đường  | 0,04kg  |  0,06kg | 0,05kg  |  500kg |
|  Đậu |  0,07kg |0kg   | 0,02kg  | 300kg  |
|  Lãi |  3000 |2000   | 2500  |

- Hãy lập mô hình bài toán tìm số lượng mỗi loại bánh cần sản xuất sao cho không bị động
về nguyên liệu mà lãi đạt được cao nhất. 

### Giải
```python
from pulp import LpProblem, LpMaximize, LpVariable

# Khởi tạo bài toán
problem = LpProblem(name="maximize_profit", sense=LpMaximize)

# Định nghĩa biến quyết định
x = LpVariable(name="x", lowBound=0, cat='Integer')  # Số lượng bánh đậu xanh
y = LpVariable(name="y", lowBound=0, cat='Integer')  # Số lượng bánh thập cẩm
z = LpVariable(name="z", lowBound=0, cat='Integer')  # Số lượng bánh dẻo

# Định nghĩa hàm mục tiêu
problem += 3000 * x + 2000 * y + 2500 * z, "Total_Profit"

# Thêm ràng buộc về lượng nguyên liệu
problem += 0.04 * x + 0.06 * y + 0.05 * z <= 500, "Sugar_Constraint"
problem += 0.07 * x + 0.02 * z <= 300, "Bean_Constraint"

# Giải bài toán
problem.solve()

# In kết quả
print("Status:", problem.status)
print("Số lượng bánh đậu xanh:", x.value())
print("Số lượng bánh thập cẩm:", y.value())
print("Số lượng bánh dẻo:", z.value())
print("Tổng lãi tối đa đạt được:", problem.objective.value())
```
### Output
```shell
Welcome to the CBC MILP Solver 
Version: 2.10.3 
Build Date: Dec 15 2019 

command line - /home/manh/Project/lpPro/venv/lib/python3.6/site-packages/pulp/solverdir/cbc/linux/64/cbc /tmp/2b082758156842b196b05f49b4617c61-pulp.mps max timeMode elapsed branch printingOptions all solution /tmp/2b082758156842b196b05f49b4617c61-pulp.sol (default strategy 1)
At line 2 NAME          MODEL
At line 3 ROWS
At line 7 COLUMNS
At line 22 RHS
At line 25 BOUNDS
At line 29 ENDATA
Problem MODEL has 2 rows, 3 columns and 5 elements
Coin0008I MODEL read with 0 errors
Option for timeMode changed from cpu to elapsed
Continuous objective value is 2.68519e+07 - 0.00 seconds
Cgl0004I processed model has 2 rows, 3 columns (3 integer (0 of which binary)) and 5 elements
Cutoff increment increased from 1e-05 to 500
Cbc0012I Integer solution of -26848000 found by DiveCoefficient after 0 iterations and 0 nodes (0.00 seconds)
Cbc0038I Full problem 2 rows 3 columns, reduced to 2 rows 2 columns
Cbc0012I Integer solution of -26851000 found by DiveCoefficient after 1 iterations and 0 nodes (0.00 seconds)
Cbc0031I 1 added rows had average density of 3
Cbc0013I At root node, 1 cuts changed objective from -26851852 to -26851000 in 10 passes
Cbc0014I Cut generator 0 (Probing) - 0 row cuts average 0.0 elements, 20 column cuts (20 active)  in 0.000 seconds - new frequency is 1
Cbc0014I Cut generator 1 (Gomory) - 2 row cuts average 3.0 elements, 0 column cuts (0 active)  in 0.000 seconds - new frequency is 1
Cbc0014I Cut generator 2 (Knapsack) - 0 row cuts average 0.0 elements, 0 column cuts (0 active)  in 0.000 seconds - new frequency is -100
Cbc0014I Cut generator 3 (Clique) - 0 row cuts average 0.0 elements, 0 column cuts (0 active)  in 0.000 seconds - new frequency is -100
Cbc0014I Cut generator 4 (MixedIntegerRounding2) - 0 row cuts average 0.0 elements, 0 column cuts (0 active)  in 0.000 seconds - new frequency is -100
Cbc0014I Cut generator 5 (FlowCover) - 0 row cuts average 0.0 elements, 0 column cuts (0 active)  in 0.000 seconds - new frequency is -100
Cbc0001I Search completed - best objective -26851000, took 1 iterations and 0 nodes (0.00 seconds)
Cbc0035I Maximum depth 0, 0 variables fixed on reduced cost
Cuts at root node changed objective from -2.68519e+07 to -2.6851e+07
Probing was tried 10 times and created 20 cuts of which 0 were active after adding rounds of cuts (0.000 seconds)
Gomory was tried 10 times and created 2 cuts of which 0 were active after adding rounds of cuts (0.000 seconds)
Knapsack was tried 10 times and created 0 cuts of which 0 were active after adding rounds of cuts (0.000 seconds)
Clique was tried 10 times and created 0 cuts of which 0 were active after adding rounds of cuts (0.000 seconds)
MixedIntegerRounding2 was tried 10 times and created 0 cuts of which 0 were active after adding rounds of cuts (0.000 seconds)
FlowCover was tried 10 times and created 0 cuts of which 0 were active after adding rounds of cuts (0.000 seconds)
TwoMirCuts was tried 1 times and created 0 cuts of which 0 were active after adding rounds of cuts (0.000 seconds)
ZeroHalf was tried 1 times and created 0 cuts of which 0 were active after adding rounds of cuts (0.000 seconds)

Result - Optimal solution found

Objective value:                26851000.00000000
Enumerated nodes:               0
Total iterations:               1
Time (CPU seconds):             0.00
Time (Wallclock seconds):       0.00

Option for printingOptions changed from normal to all
Total time (CPU seconds):       0.00   (Wallclock seconds):       0.00

Status: 1
Số lượng bánh đậu xanh: 1852.0
Số lượng bánh thập cẩm: 0.0
Số lượng bánh dẻo: 8518.0
Tổng lãi tối đa đạt được: 26851000.0
```