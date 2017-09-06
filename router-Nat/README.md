# linux ��֤����
ʹ��linux iptables��nat ���ܣ�ʵ��һ̨�豸��֤�������豸·�ɷ�ʽ�������硣
��HUSTУ԰��Ϊ������һ̨linuxϵͳ��ͨ����ݿͻ�����֤֮�������豸���þ�̬ip������������Ϊlinux�������ip�����ɽ��뻥���������ƵĽ�������У�ˢ����ݵ�·�������Ա����ۡ�

��ǩ��linux iptables NAT ·�� ������
# keyword��linux, iptables, NAT, ·��, ������
---

[TOC]

# 1 linux NAT
�ļ�**408router-singleNIC**�����˽�linux���·����(IPv4)��Ҫ�����
�ļ�ͷ����chkconfig��Ҫ��ǰ׺����centos7�ϲ���ͨ����debianϵע�⡣
## .1 IPת��
```
echo 1 > /proc/sys/net/ipv4/ip_forward
```
## .2 ���iptables����
������Զ��������ע�Ᵽ��
```
service iptables restart
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
```
## .3 ����NAT
����������(��IFNAME֮���)������ϵͳ��package�ᱻ�滻Դ��ַΪIFNAME�ĵ�ַ��Ȼ���IFNAMEת����ȥ����ϸԭ�������в���iptables nat������
```
iptables -t nat -A POSTROUTING -o ${IFNAME} -j MASQUERADE
```
## .4 ������ʵ��
���������Ե�ʱ�������Ӷ����������һ��������֤(WAN)����һ���������վ���������(LAN)������·������WAN��LANһ����
��������������ǿ����ö�����̨ʽ�������router������̨ʽ��ֻ��һ���������ҵ��Ľ���취������������������ʱ���Ϊ���������һ������������ԭ�������в������ϡ�
=-=-=-=-=-=-=-=-=-=-=-=-
ifconfig�ɿ������� IFNAME:1 ���豸����������ͨ���ļ�����������̬IP�ķ�ʽ(ifcfg-enp1s0_1)���� /etc/sysconfig/network-scriptsĿ¼�����ip����
ע���ļ����豸�����Ǵ��зֺŵģ������������ΪLAN�ˣ������豸����ʱ�ֶ�����ip�����ƶ�WAN��IPΪ���ء�
�߼������ݰ��� IFNAME:1 ����linux����NAT���IFNAME:1����linux�������Ͼ��Ǵ��������ٳ�������Internet

**��������������DHCPserver��ԭ��** : ����·������WAN��LAN���ӵ��豸�Ƿִ���ͬ����·������LAN�Ͽ�������DHCPserver�����������Ϊֻ��һ�����������������������������DHCPserver��DHCPserverֱ�ӳ�����WAN��������������˽������磬����Ϊ������

# 2 ����windows
ʹ���ļ�dhcp_staticIP.bat