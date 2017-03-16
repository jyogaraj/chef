package 'unzip'

execute 'unzip a file' do
  command 'unzip -q /root/sources/test.zip -d /opt/; mv /opt/test*.txt /root'
end
