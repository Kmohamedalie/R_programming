#*************************************************************#
#                        Exercise                             #
#*************************************************************#
library(tidyverse)
library(data.table)

employees.data <- read.csv('employee_data.csv')

#view(employees.data)
#glimpse(employees.data)

# employee with max salary
MaxSalary <- employees.data %>% 
                select(emp_no:end_of_contract_date) %>%
                summarize(max_salary = max(salary))
employeeMax <- employees.data %>% 
            filter(salary==as.integer(MaxSalary))
print(employeeMax)


# employee salary between min and max
avgSalary <- employees.data %>% 
  select(emp_no:end_of_contract_date) %>%
  summarize(avg_salary = mean(salary))
employeeAvg <- employees.data %>% 
  filter(salary > as.integer(minSalary) | salary < as.integer(MaxSalary))
print(employeeAvg)


# employee with max salary
minSalary <- employees.data %>% 
  select(emp_no:end_of_contract_date) %>%
  summarize(min_salary = min(salary))
employeeMin <- employees.data %>% 
  filter(salary==as.integer(minSalary))
print(employeeMin)