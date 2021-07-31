Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 328C43DC6FA
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 18:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627749543;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XbOukZb0vtKtoxYoNjEDQuhwQfWBUsToQuq/f2hbsuA=;
	b=fwjwjv9klQZ8q8vZQn75skkv4KkQOxWjya9JTWZEeWIvt2uD9jbMxuwDxiJUtw2x2HbDRU
	XAlVZHcYtRMEg4Z/vubgHgyzU8X63XbRWFhhR+pFv7jWiRxQ7lU2C4cw1OWlvKBgAlL8qI
	ac7hQ6dDkjoCeG1SOQZZ9nagLiOlKRM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-3JDCVZZeOUaNHdbMBExlkg-1; Sat, 31 Jul 2021 12:39:00 -0400
X-MC-Unique: 3JDCVZZeOUaNHdbMBExlkg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B92F73639F;
	Sat, 31 Jul 2021 16:38:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B521860C05;
	Sat, 31 Jul 2021 16:38:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7200D4BB7C;
	Sat, 31 Jul 2021 16:38:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16VGWKVk002965 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 12:32:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B650EF5ACE; Sat, 31 Jul 2021 16:32:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B1617F5AF9
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 16:32:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B9A4800260
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 16:32:17 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-97-6hdFEsEdP6afuiNtT5VhRA-1; Sat, 31 Jul 2021 12:32:14 -0400
X-MC-Unique: 6hdFEsEdP6afuiNtT5VhRA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GcVCy27wlz3kyb
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 12:32:14 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GcVCy1XkCzcbc; Sat, 31 Jul 2021 12:32:14 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GcVCy1F8gzcbP
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 12:32:14 -0400 (EDT)
Date: Sat, 31 Jul 2021 12:32:14 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Interesting issue
In-Reply-To: <b5bb7159-46d6-4cc3-9e36-b66ec3b2c195@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107311227460.973@panix1.panix.com>
References: <b5bb7159-46d6-4cc3-9e36-b66ec3b2c195@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

My guess is you didn't set sudo up right.
To do it you need to giv the user account permissions.
The best non-destructive way to do this is as root cd /etc/sudoers.d.
Then make a text file and it doesn't matter what you call it.  I have mine
called base.
In base the one line syntax is:
brent ALL=(ALL) NOPASSWD:ALL
Be sure you got the capital letters correct and I'm assuming your user
account is brent.
Save the file and drop back to user account.
Next test your work by doing sudo -i and see what happens.


On Sat, 31 Jul 2021, Linux for blind general discussion wrote:

> Hi all,
>
>
> I am trying to run an update on my Slint system, but I get the error
> upgradepkg command not found. I am running sudo spi -u && sudo spi -U.
> Everything goes ok untill I get the "upgradepkg command not found" error.
>
>
> What am I doing wrong?
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

