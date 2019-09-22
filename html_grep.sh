#!/bin/bash
output=$output
cd $output/3_html
rg -oPHn "smpt ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "priva ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "addr ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "ip ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "phone ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "id ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "account ..............................................................." *.html|tee -a $output/4_html_grep.t$
rg -oPHn "token ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "manager ..............................................................." *.html|tee -a $output/4_html_grep.t$
rg -oPHn "root ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "admin ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "user ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "secret ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "key ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "pass ..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "pwd ..............................................................." *.html|tee -a $output/4_html_grep.txt

rg -oPHn "smpt:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "priva:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "addr:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "ip:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "phone:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "id:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "account:..............................................................." *.html|tee -a $output/4_html_grep.t$
rg -oPHn "token:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "manager:..............................................................." *.html|tee -a $output/4_html_grep.t$
rg -oPHn "root:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "admin:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "user:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "secret:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "key:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "pass:..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "pwd:..............................................................." *.html|tee -a $output/4_html_grep.txt

rg -oPHn "smpt=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "smpt=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "priva=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "addr=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "ip=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "phone=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "id=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "account=..............................................................." *.html|tee -a $output/4_html_grep.t$
rg -oPHn "token=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "manager=..............................................................." *.html|tee -a $output/4_html_grep.t$
rg -oPHn "root=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "admin=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "user=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "secret=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "key=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "pass=..............................................................." *.html|tee -a $output/4_html_grep.txt
rg -oPHn "pwd=..............................................................." *.html|tee -a $output/4_html_grep.txt


#rg  -l "wp-content" *.html|tee -a   $output/4_html_num.txt
#sed -e "s/\.html//g"  $output/4_html_num.txt >> $output/4_html_grep.txt ; rm $output/4_html_num.txt
#for i in `cat $output/4_html_grep.txt`
#do
#html=`head -$i httprobe.txt |tail -1`
#cat $html >> $output/4_html_wpscan.txt
#done

cd $output
touch $output/4_html_gp.txt ; sort -u $output/4_html_grep.txt|uniq|tee -a $output/4_html_gp.txt ; rm $output/4_html_grep.txt 

cd $output/3_html
rg  -oPHn  "Apache/" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ;b=`head -$a_num /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a|tee -a   $output/4_html_gp.txt ; echo $b|tee -a   $output/4_html_gp.txt; done; rm 1.txt
rg  -oPHn  "Version Information:" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ; b=`head -$a /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a|tee -a   $output/4_html_gp.txt ; echo $b|tee -a   $output/4_html_gp.txt; done; rm 1.txt
rg  -oPHn  "Tomcat/" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ; b=`head -$a_num /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a|tee -a   $output/4_html_gp.txt ; echo $b|tee -a   $output/4_html_gp.txt; done; rm 1.txt
rg  -oPHn  "This is the default welcome page" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ; b=`head -$a_num /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a|tee -a   $output/4_html_gp.txt ; echo $b|tee -a   $output/4_html_gp.txt ; done; rm 1.txt
rg  -oPHn  "PHP Version" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ; b=`head -$a_num /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a|tee -a   $output/4_html_gp.txt ; echo $b|tee -a   $output/4_html_gp.txt; done; rm 1.txt
rg  -oPHn  "This page is used to test the proper operation of the" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ; b=`head -$a_num /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a|tee -a   $output/4_html_gp.txt ; echo $b|tee -a   $output/4_html_gp.txt; done; rm 1.txt

rm -rf $output/3_html
cd /root/script/3_httprobe
