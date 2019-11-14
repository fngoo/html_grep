#!/bin/bash
output=$output
cd $output/3_html
rg  -oPHn  "pwd .................................................." *.html >> $output/4_html_grep.txt
rg  -oPHn  "pwd:.................................................." *.html >> $output/4_html_grep.txt
rg  -oPHn  "pwd=.................................................." *.html >> $output/4_html_grep.txt
rg  -oPHn  "password ................................................." *.html >> $output/4_html_grep.txt
rg  -oPHn  "password:.................................................." *.html >> $output/4_html_grep.txt
rg  -oPHn  "password=.................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "admin .................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "admin:.................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "admin=.................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "manager .................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "manager:.................................................." *.html >> $output/4_html_grep.txt
rg -oPHn "manager=.................................................." *.html >> $output/4_html_grep.txt
rg  -oPHn  "oracle................................................." *.html >> $output/4_html_grep.txt
rg  -oPHn  "mysql..................................................." *.html >> $output/4_html_grep.txt
sed -e '/+/d' $output/4_html_grep.txt | sed -e '/?/d' | sed -e '/!/d' | sed -e '/&/d' > 1.txt ; mv 1.txt $output/4_html_grep.txt

#rg  -l "wp-content" *.html >>   $output/4_html_num.txt
#sed -e "s/\.html//g"  $output/4_html_num.txt >> $output/4_html_grep.txt ; rm $output/4_html_num.txt
#for i in `cat $output/4_html_grep.txt`
#do
#html=`head -$i httprobe.txt |tail -1`
#cat $html >> $output/4_html_wpscan.txt
#done

cd $output
touch $output/4_html_gp.txt ; cat $output/4_html_grep.txt >> $output/4_html_gp.txt ; rm $output/4_html_grep.txt 

cd $output/3_html
echo '' >> $output/4_html_gp.txt
echo '' >> $output/4_html_gp.txt
echo '' >> $output/4_html_gp.txt
echo '' >> $output/4_html_gp.txt
echo '' >> $output/4_html_gp.txt
echo '' >> $output/4_html_gp.txt

rg  -oPHn  "Apache/" *.html >> $output/4_html_gp.txt
rg  -oPHn  "Version Information:" *.html >> $output/4_html_gp.txt
rg  -oPHn  "Tomcat/" *.html >> $output/4_html_gp.txt
rg  -oPHn  "This is the default welcome page" *.html >> $output/4_html_gp.txt
rg  -oPHn  "PHP Version" *.html >> $output/4_html_gp.txt
rg  -oPHn  "This page is used to test the proper operation of the" *.html >> $output/4_html_gp.txt
rg  -oPHn  "XSS Hunter Team" *.html >> $output/4_html_gp.txt
rg  -oPHn  "CRLFheader" *.html >> $output/4_html_gp.txt



cd /root/script/3_httprobe
rm -rf $output/3_html
date "+%Y-%m-%d_%H:%M:%S" >> /root/date.txt ; echo 'html' >> /root/date.txt
