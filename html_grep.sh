#!/bin/bash
output=$output
rg  -oPHn  "pwd..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "pass..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "key..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "secret..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "user..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "admin..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "root..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "manager..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "token..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "account..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "id..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "phone..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "ip..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "addr..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "priva..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "smpt..............................................................." *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "Apache/" *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "Version Information:" *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "Tomcat/" *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "This is the default welcome page" *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "PHP Version" *.html|tee -a   $output/4_html_grep.txt
rg  -oPHn  "This page is used to test the proper operation of the" *.html|tee -a   $output/4_html_grep.txt



#rg  -l "wp-content" *.html|tee -a   $output/4_html_num.txt
#sed -e "s/\.html//g"  $output/4_html_num.txt >> $output/4_html_grep.txt ; rm $output/4_html_num.txt
#for i in `cat $output/4_html_grep.txt`
#do
#html=`head -$i httprobe.txt |tail -1`
#cat $html >> $output/4_html_wpscan.txt
#done




rm $output/4_html_grep.txt
rm -rf $output/4_html
touch $output/4_html_gp.txt ; sort $output/4_html_grep.txt|uniq|tee -a $output/4_html_gp.txt ; rm $output/4_html_grep.txt 
