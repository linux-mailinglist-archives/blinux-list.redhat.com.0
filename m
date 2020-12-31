Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 10A102E822F
	for <lists+blinux-list@lfdr.de>; Thu, 31 Dec 2020 23:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609452847;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LzcMZnSRJ4FFokj+N+1XkP13mO5/bEUXigN5iqsoV3M=;
	b=iaixY4UA1XCpTdIY8lqRuyq0NvVdwJ/o8eHzrSRjflMqboL7nypIy7So0S6gkPFXv82c5v
	q2mKl7pnYziEXYv5lWf6f4tAhlNXd8DVWXLBGsCWDdUTadbLlRKsA34D/NNXHY6ui5G/hm
	upFme3fIYPEMXh4xP0dxzfAI0ii7Oi8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-G_-r6gg1O7uE2YsNodkTPw-1; Thu, 31 Dec 2020 17:14:05 -0500
X-MC-Unique: G_-r6gg1O7uE2YsNodkTPw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A92310054FF;
	Thu, 31 Dec 2020 22:14:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6930E5B692;
	Thu, 31 Dec 2020 22:13:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EF9084BB7B;
	Thu, 31 Dec 2020 22:13:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BVMDWYC025449 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 31 Dec 2020 17:13:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B5B3B1111C76; Thu, 31 Dec 2020 22:13:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B09DC1111C74
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 22:13:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 83EE4811E78
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 22:13:30 +0000 (UTC)
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com
	[192.185.51.36]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-374-KUGwpyZ4N4-BD-WeHD5_AQ-1; Thu, 31 Dec 2020 17:13:27 -0500
X-MC-Unique: KUGwpyZ4N4-BD-WeHD5_AQ-1
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id D6838147D70A
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 15:53:13 -0600 (CST)
Received: from box2167.bluehost.com ([50.87.253.68]) by cmsmtp with SMTP
	id v5sfkLOdKnPrxv5sfkXGAN; Thu, 31 Dec 2020 15:53:13 -0600
X-Authority-Reason: nr=8
Received: from [104.60.194.40] (port=60692 helo=HPNotebook)
	by box2167.bluehost.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <kelly@kellford.com>) id 1kv5sf-001Jhy-7T
	for blinux-list@redhat.com; Thu, 31 Dec 2020 14:53:13 -0700
To: <blinux-list@redhat.com>
Subject: Remote Desktop Under Linux
Date: Thu, 31 Dec 2020 15:53:12 -0600
Message-ID: <2e9e01d6dfbf$56add9f0$04098dd0$@kellford.com>
MIME-Version: 1.0
Thread-Index: AdbfvYPrYTLl9zl1QxeD0WM/Odrgew==
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2167.bluehost.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kellford.com
X-BWhitelist: no
X-Source-IP: 104.60.194.40
X-Source-L: No
X-Exim-ID: 1kv5sf-001Jhy-7T
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (HPNotebook) [104.60.194.40]:60692
X-Source-Auth: kelly@kellford.com
X-Email-Count: 1
X-Source-Cap: a2VsbHlmb3I7a2VsbHlmb3I7Ym94MjE2Ny5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I have my ssh access and local GUI desktop working for my Linux machine
quite well.  I also have ssh access to a Linux machine on the Microsoft
Azure service working.

 

Before I go down the path of trying to get remote desktop access to the GUI,
does this actually work.

 

The article at Linux - Microsoft Azure
<https://portal.azure.com/#@kellykellford.onmicrosoft.com/resource/subscript
ions/968d4c66-18eb-48df-87b5-6d1918a03749/resourceGroups/linux/providers/Mic
rosoft.Compute/virtualMachines/linux/connect>  has details on what you need
to do to connect to the GUI for a machine running on Azure.  I am hoping to
use the Windows RDP client to connect and just get the Gnome audio.  I know
it won't be perfect.

 

If this does actually work, does anyone know the syntax to tell the XRDP
service on the Linux machine to use Gnome as the desktop session?  The
article shows this command but it is for a different desktop.

 

Tell xrdp what desktop environment to use when you start your session.
Configure xrdp to use xfce as your desktop environment as follows:

 

echo xfce4-session >~/.xsession

Restart the xrdp service for the changes to take effect as follows:

sudo service xrdp restart

 

Also, thanks for the answers to my other questions here.  I haven't
contributed much here but will offer one tidbit, on the off chance anyone
here is trying to use Microsoft Teams on Linux.  You have to start the Linux
version of Teams with the additional command line of
-force-renderer-accessibility.  This instructs Chrome and software using
Chromium, to ensure things go through the accessibility API.  If you don't,
Orca won't read anything when Teams loads.  If you do add this, Teams works
fairly similar to how it does on other platforms.

 

I know I do not post here often so in full disclosure, my day job is working
for Microsoft running  a service known as the enterprise Disability Answer
Desk that works to resolve accessibility issues for business, government,
education and other enterprise customers.  I've wanted to understand how our
technology works on Linux, where we have it available.

 

Kelly

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

