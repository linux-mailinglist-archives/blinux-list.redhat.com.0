Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 423D43FFCF5
	for <lists+blinux-list@lfdr.de>; Fri,  3 Sep 2021 11:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630660835;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lejS3/E03Lq+hZtU2CaldPypofdhSxNIuFXMNtHgSLc=;
	b=EKCATvlGwrHaahz6ZqQNOCCv3IfMAHrmjoWafZEQDKvk10w2sViKO4zJoaWtqj5mMtwuBW
	LqHRqUu+wqgcRMZGxZBeLGn1S11Rz3bfFHj+dMrFpXvycg6UXlebF5FtCjVgNybg7w8Is+
	IGTCchXtT1VALPWY/ABEkVhJTiDQjgw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-Z8YMyuAbOuKWJam-D4LqCw-1; Fri, 03 Sep 2021 05:20:33 -0400
X-MC-Unique: Z8YMyuAbOuKWJam-D4LqCw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C74BB1883520;
	Fri,  3 Sep 2021 09:20:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA2349D62;
	Fri,  3 Sep 2021 09:20:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 80B63180B44F;
	Fri,  3 Sep 2021 09:20:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1839Ge5G001564 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Sep 2021 05:16:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4092319B778; Fri,  3 Sep 2021 09:16:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C63C1635BA
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 09:16:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5677D858F1C
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 09:16:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-18-_YdUIow0ORer5DHdagjFcA-1; Fri, 03 Sep 2021 05:16:35 -0400
X-MC-Unique: _YdUIow0ORer5DHdagjFcA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4H1BxZ5sp4z3nSB
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 05:16:34 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4H1BxZ52jYzcbc; Fri,  3 Sep 2021 05:16:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4H1BxZ4TpxzcbP
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 05:16:34 -0400 (EDT)
Date: Fri, 3 Sep 2021 05:16:34 -0400
To: blinux-list@redhat.com
Subject: jenux install pointer
Message-ID: <alpine.NEB.2.23.451.2109030505550.29257@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In Jenux when you're told your installation is complete and given the
option to power off use that option. When you boot your machine after the
grub music and the speakers popping, hit enter once and wait and you'll go
into the first boot screen. Choose c to name your computer and do that.
Leave a alone unless you're installing for someone that doesn't want
accessibility. Then n for name and u for username and Then key in your
username and hit enter and then key in password and hit enter.  Wait and
your system should come up. This is the first time I encountered a first
boot screen that was accessible.  There's a bunch of ansi characters
appearing on that screen after each of the entries you make and you key
your password in only once so remember it and type it correct. That 240g
drive that was going to have blind-arch on it now has Jenux gnome on it
and that works.  I did that as proof of concept the machine could actually
install the system since earlier this week we had bad weather and
lightning was attacking the electrical system here and it turned the
computer off once.  Had there been problems with the memory I'd not be
able to get either Jenux or Blind-arch installed. p for password and
finally d for done.  Then wait until you hear music from fenrir.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

