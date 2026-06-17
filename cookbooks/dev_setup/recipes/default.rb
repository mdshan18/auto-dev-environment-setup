#
# Cookbook:: dev_setup
# Recipe:: default
#
# Auto Developer Environment Setup Recipe
# This recipe installs essential development tools
# and creates project directory structure
#
# Author: MD Shan
# Date: June 2026
# Version: 1.0.0
#

# ============================================
# Install Essential Development Tools
# ============================================

# Install Git for version control
package 'git' do
  action :install
end

# Install Python for scripting tasks
package 'python3' do
  action :install
end

# Install Java (OpenJDK) for development
package 'openjdk-11-jdk' do
  action :install
end

# ============================================
# Create Project Directory Structure
# ============================================

# Create main projects directory
directory '/home/user/my-projects' do
  action :create
end

# Create welcome file
file '/home/user/my-projects/welcome.txt' do
  content "Welcome to your development environment!\n\nThis environment has been automatically provisioned using Chef.\n\nInstalled Tools:\n- Git (Version Control)\n- Python 3 (Scripting)\n- OpenJDK 11 (Java Development)\n\nHappy Coding!\n"
  action :create
end

# ============================================
# Capture System Information
# ============================================

# Execute command to capture system info
execute 'capture_system_info' do
  command 'uname -a > /home/user/my-projects/system_info.txt'
  action :run
end

log 'Setup Complete' do
  message '✅ Development environment setup completed successfully!'
  level :info
end
