Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 20AA129804D
	for <lists+blinux-list@lfdr.de>; Sun, 25 Oct 2020 06:31:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603603887;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=76KpWbHvFPGahNetKCKO7AV2Wq0BAzQQ1YV3wsMOSwg=;
	b=IO9JoIqxAlIkSwlhPNNhavMTptYVw461vbUt5ssw4fQb+BZM+B6CPDe8GsLcKCgq9Hd/TN
	AFc342idL4KgN8qOP35K9sVShgcbX+AKGo736JJqofN2ys24TwMnJRlDgr/LIRF6Nc3CpC
	fAq35FeTjdWjZJCConETAkerqR2jM1A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-478-Zk1J0qclPQmlpCWhzwxZYw-1; Sun, 25 Oct 2020 01:31:24 -0400
X-MC-Unique: Zk1J0qclPQmlpCWhzwxZYw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 108D8804B6A;
	Sun, 25 Oct 2020 05:31:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1767786B21;
	Sun, 25 Oct 2020 05:31:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E8B40180B658;
	Sun, 25 Oct 2020 05:31:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09P5V2kH002634 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Oct 2020 01:31:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CE93A2166BD9; Sun, 25 Oct 2020 05:31:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C1AB62166BA0
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 05:30:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B44B1021E15
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 05:30:59 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-299-ux4le9X7MaqhYirNjWr20w-1; Sun, 25 Oct 2020 01:30:55 -0400
X-MC-Unique: ux4le9X7MaqhYirNjWr20w-1
X-SimpleLogin-Client-IP: 2a04:3542:1000:910:8c7a:9cff:fe3c:20ac
Received: from [172.17.0.4] (mx1.simplelogin.co
	[IPv6:2a04:3542:1000:910:8c7a:9cff:fe3c:20ac])
	by mx2.simplelogin.co (Postfix) with ESMTP id 7ED9E5DAA8
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 05:22:31 +0000 (UTC)
Date: Sun, 25 Oct 2020 06:22:29 +0100 (CET)
In-Reply-To: <160355389674.6.9713551340879186352.1432620@simplelogin.co>
References: <160352425235.6.1944557228384903424.1427650@slmail.me>
	<20201024.073231.148.6@[192.168.1.130]>
	<160355389674.6.9713551340879186352.1432620@simplelogin.co>
Subject: Re: How do I install Voxin on an Ubuntu based Distro?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <160360335129.6.5638435422909367922.1438135@slmail.me>
X-SimpleLogin-EmailLog-ID: 1438135
X-SimpleLogin-Type: Reply
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
Ok, I tried the tar -xf suggestion and still getting an error message, but first I'll respond to the poster who asked about Mint and Orca.
I'm totally new so I'm not entirely familiar with the names of Linux screenreaders, I just assumed that Orca is the screenreader for graphical desktops. I think its Orca because I use it with the MATE graphical desktop, I can toggle the speech on or off using the Windows key, Alt, and s, and I use Orca shortkeys with it. When I go to the screenreader preferences menu it says the speech system is Speech Dispatcher.
Anyways, I know there are a few different versions of Mint out there. I specifically got the iso for the version of Linux Mint that has MATE for the graphical desktop.
It did not automatically speak during install.
But what I did was have a sighted person help me get from the Bios and into the live desktop environment. Once they confirmed that it was in the live desktop, then I pressed the Windows key, Alt, and s, and that turned on the speech.
>From there it gave me a list of things on the desktop and i chose the one that says Install Linux Mint MATE and the screenreader spoke the installation prompts to me.
 I don't know if it would work with installing it in other ways. But turning on the screenreader worked for me once it was in the live desktop and then choose install.
I did get stuck on the "Who Are You" section for a while, the one that asks for your name, username etc because it would not show me the continue button after filling out the forms. I had my sighted helper check and the continue button was also dimmed for them. So i did some online research and found out that other beginners had that same issue, and it turns out it was just a matter of it not allowing spaces in the username or computer name etc. So once i got rid of the spaces, the continue button became available to me and i completed the install.
I'm a beginner and I've only been using Mint with MATE for a few days, but so far I really like it.
Regarding installing Voxin, I went to my downloads folder where the file is located, opened a terminal and typed:
tar -xf voxin-american-english-ava-high-3.3rc1.tgz
But I'm still getting an error message that says, cannot open, no such file or directory, tar error is not recoverable.
Any ideas why I am getting that message?
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

