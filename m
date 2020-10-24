Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id B84DD297B4A
	for <lists+blinux-list@lfdr.de>; Sat, 24 Oct 2020 09:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603525790;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=d692TDqZdlK/+oMlyvYqUTFeCToK5oR+fYd7kgJRuXI=;
	b=gRNqf3anwKJ9Bj+nUbMCftH9PLf5VCltlsjOMFMPaRGy9jaBKWLE5ZecJtnN5MiTrwZEt9
	Zu7Ht+9GZDBcHbj/mGaCfKstcR79bse6NCos0s4e8ZvfKQMuzzJy44TW+W3jAURnFIPKYb
	GCGvBqogqowhS8RFi4qlkV2D3bzFGYM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-XbzvEDdGNhuY4OVpAOZ5yg-1; Sat, 24 Oct 2020 03:49:46 -0400
X-MC-Unique: XbzvEDdGNhuY4OVpAOZ5yg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9092E5F9E8;
	Sat, 24 Oct 2020 07:49:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7736E1002C03;
	Sat, 24 Oct 2020 07:49:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 535B75810B;
	Sat, 24 Oct 2020 07:49:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09O7mvk2014530 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Oct 2020 03:48:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AB756110FC08; Sat, 24 Oct 2020 07:48:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A6A4A110FC06
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 07:48:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FB531021E17
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 07:48:53 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-155-Qcf81wdxP7u8KB886sLX2Q-1; Sat, 24 Oct 2020 03:48:49 -0400
X-MC-Unique: Qcf81wdxP7u8KB886sLX2Q-1
X-SimpleLogin-Client-IP: 127.0.0.1
Received: from [172.17.0.5] (localhost [127.0.0.1])
	by mx1.simplelogin.co (Postfix) with ESMTP id A2E9142B69
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 07:48:48 +0000 (UTC)
Date: Sat, 24 Oct 2020 09:48:47 +0200 (CEST)
Subject: resending this hopefully in readable format this time, how do I
	install Voxin on Ubuntu based Distros?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <160352572854.6.5295628029549855877.1428232@slmail.me>
X-SimpleLogin-EmailLog-ID: 1428232
X-SimpleLogin-Type: Reply
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everyone,
I just tried sending this email and it looked fine on my end, but for some reason it sent in a format where some of my words were put together with no spaces. I don't know why that happened as that is not how I wrote it. But its really hard to read, so I am trying to send it again and hopefully the format will come out correctly this time.
I have Linux Mint with MATE GUI using the Orca screenreader on a laptop and I am trying to install the Voxin TTS voices I bought.
This is my first time installing software on Linux.
On the Voxin website they give instructions for installing Voxin on Ubuntu. And Linux Mint is based on Ubuntu so i think the installationcommands should be more or less the same.
They say for Ubuntu type in:
sudo --login
cd voxin-3.3rc1
cd voxin-enu-3.3rc1
./voxin-installer.sh
I don't have any files that are just Voxin-3.3rc1. The files that I downloaded each include the name of the TTS voice within the title.
For example:
voxin-american-english-ava-high-3.3rc1.tgz
So i went to my terminal and tried typing sudo --login and after i log in, then i typed:
cd voxin-american-english-ava-high-3.3rc1.tgz
but it gives me an error message, something like, bash cd no such file o rdirectory.
Could any of you who have installed Voxin for Orca graphical desktop on Ubuntu based systems please let me know how to install it?
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

