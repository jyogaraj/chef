package 'tomcat'

execute 'get jenkins' do
  command 'wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war -P /root/ ; mv /root/jenkins.war /var/lib/tomcat/webapps' 
end

service 'tomcat' do
	action [:enable, :start]
end
