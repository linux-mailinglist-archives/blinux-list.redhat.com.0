Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 516D32F29C2
	for <lists+blinux-list@lfdr.de>; Tue, 12 Jan 2021 09:11:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610439095;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2zjVQD1/17lxvQFpEajtv24H0t3rkuCBl1OoEcczNmw=;
	b=cWGjw1WfKkhj0q5eKLk/RH+ddWKrWZYmk4YUBo3vvMVBMiF5fnFwcwcQ65lb1MlQMKg2/Q
	eY49L+V2b5FP0btMZi8wP0aiZBY6EpI4XSJRO9sXxEwpLfKy5LtTkxikFg8BhoFMxHGC5i
	Y5iQ5kYulozyvHr2sSnCQGRm2OcIutc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-500-Py8ZzqKQOxmphhEDelh9mw-1; Tue, 12 Jan 2021 03:11:32 -0500
X-MC-Unique: Py8ZzqKQOxmphhEDelh9mw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B1A19CC09;
	Tue, 12 Jan 2021 08:11:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA38010023B5;
	Tue, 12 Jan 2021 08:11:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4E3514BB40;
	Tue, 12 Jan 2021 08:11:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10C8B4bk026926 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Jan 2021 03:11:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CEFD62166B2A; Tue, 12 Jan 2021 08:11:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA2892166B28
	for <blinux-list@redhat.com>; Tue, 12 Jan 2021 08:11:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C0D3101A561
	for <blinux-list@redhat.com>; Tue, 12 Jan 2021 08:11:02 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-574-uYP09L_DPgK_D3JFYF0VcQ-1; Tue, 12 Jan 2021 03:10:57 -0500
X-MC-Unique: uYP09L_DPgK_D3JFYF0VcQ-1
X-SimpleLogin-Client-IP: 2a04:3542:1000:910:8c7a:9cff:fe3c:20ac
Received: from [172.17.0.9] (mx1.simplelogin.co
	[IPv6:2a04:3542:1000:910:8c7a:9cff:fe3c:20ac])
	by mx2.simplelogin.co (Postfix) with ESMTP id 6E9BE5DC8E
	for <blinux-list@redhat.com>; Tue, 12 Jan 2021 08:04:32 +0000 (UTC)
Subject: Is this a glitch with Orca and Libre Office?
MIME-Version: 1.0
To: blinux-list@redhat.com
Message-ID: <161043867227.6.1989062734879827020.2997508@slmail.me>
Date: Tue, 12 Jan 2021 08:04:32 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 2997508
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
Whenever I am reading long documents in Libre Office with the Orca say all command capslock semicolon, after a page or so, without touching anything, it will randomly jump me pages forward in the document, sometimes like half way through the file and then I have to scroll all the way back up to where it glitched.
I used to think that maybe this was an issue with Linux Mint MATE and Libre Office.
But now I also have another laptop running Slint and it does the same thing when using capslock semicolon to read all in a Libre Office document.
So considering that I am experiencing this in two completely different Distros, I am beginning to think it is some sort of interaction with Orca and Libre Office.
Have any of you experienced this? Not being able to read long documents in Libre Office because Orca jumps to some random place in the document?
Is there a way to fix this?
Or do you just use a different word processor? I don't mind downloading something new if thats what it takes.
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

