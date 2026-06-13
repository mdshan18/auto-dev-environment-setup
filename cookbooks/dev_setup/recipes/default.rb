# Install Git
package 'git' do
  action :install
end

# Install Python
package 'python3' do
  action :install
end

# Install Java
package 'default-jdk' do
  action :install
end

# Create project folders
directory '/home/shan/projects' do
  recursive true
  action :create
end

directory '/home/shan/projects/python_projects' do
  recursive true
  action :create
end

directory '/home/shan/projects/java_projects' do
  recursive true
  action :create
end

# Create welcome file
file '/home/shan/projects/welcome.txt' do
  content 'Welcome to Auto Developer Environment Setup Tool!'
  action :create
end

# Create system info log
execute 'save_system_info' do
  command 'uname -a > /home/shan/projects/system_info.txt'
  action :run
end