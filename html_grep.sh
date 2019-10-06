#!/bin/bash
output=$output
cd $output/3_html
rg -oPHn "smpt ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "priva ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "addr ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "ip ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "phone ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "id ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "account ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "token ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "manager ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "root ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "admin ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "user ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "secret ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "key ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "pass ..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "pwd ..............................................................." *.html >> $output/4_html_grep.txt

rg -oPHn "smpt:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "priva:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "addr:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "ip:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "phone:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "id:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "account:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "token:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "manager:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "root:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "admin:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "user:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "secret:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "key:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "pass:..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "pwd:..............................................................." *.html >> $output/4_html_grep.txt

rg -oPHn "smpt=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "smpt=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "priva=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "addr=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "ip=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "phone=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "id=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "account=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "token=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "manager=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "root=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "admin=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "user=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "secret=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "key=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "pass=..............................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "pwd=..............................................................." *.html >> $output/4_html_grep.txt
sed -e "/\+/d" $output/4_html_grep.txt | sed -e "/\?/d" | sed -e "/\!/d" | sed -e "/\&/d" > 1.txt ; mv 1.txt $output/4_html_grep.txt

#rg  -l "wp-content" *.html >>   $output/4_html_num.txt
#sed -e "s/\.html//g"  $output/4_html_num.txt >> $output/4_html_grep.txt ; rm $output/4_html_num.txt
#for i in `cat $output/4_html_grep.txt`
#do
#html=`head -$i httprobe.txt |tail -1`
#cat $html >> $output/4_html_wpscan.txt
#done

cd $output
touch $output/4_html_gp.txt ; sort -u $output/4_html_grep.txt -o $output/4_html_gp.txt ; rm $output/4_html_grep.txt 

cd $output/3_html
rg  -oPHn  "Apache/" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ;b=`head -$a_num /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a >>   $output/4_html_gp.txt ; echo $b >>   $output/4_html_gp.txt; done; rm 1.txt
rg  -oPHn  "Version Information:" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ; b=`head -$a /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a >>   $output/4_html_gp.txt ; echo $b >>   $output/4_html_gp.txt; done; rm 1.txt
rg  -oPHn  "Tomcat/" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ; b=`head -$a_num /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a >>   $output/4_html_gp.txt ; echo $b >>   $output/4_html_gp.txt; done; rm 1.txt
rg  -oPHn  "This is the default welcome page" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ; b=`head -$a_num /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a >>   $output/4_html_gp.txt ; echo $b >>   $output/4_html_gp.txt ; done; rm 1.txt
rg  -oPHn  "PHP Version" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ; b=`head -$a_num /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a >>   $output/4_html_gp.txt ; echo $b >>   $output/4_html_gp.txt; done; rm 1.txt
rg  -oPHn  "This page is used to test the proper operation of the" *.html >> 1.txt;for a in `cat 1.txt`; do a_num=`echo $a|grep -o -P ".*?(?=\.html)"` ; b=`head -$a_num /root/script/3_httprobe/httprobe.txt |tail -1` ; echo $a >>   $output/4_html_gp.txt ; echo $b >>   $output/4_html_gp.txt; done; rm 1.txt

rm -rf $output/3_html
cd /root/script/3_httprobe
