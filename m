Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 991D9162304
	for <lists+blinux-list@lfdr.de>; Tue, 18 Feb 2020 10:08:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582016886;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sEtkcwMS/sT8gmLLeTr8abNu+oSsn0mIOCTI/yaxURw=;
	b=Ypt7Av+wTs2smApthlV1DvLrxbyn3TxZ0gDoEu6vEV7TGh1C1mvh51EAaHkPoBytFpVcKa
	cFzlQ3Kq+rBkSDbChgCgn9ZqjzIoZMQXAxCNhArGmxRDXY0X784cf0kBvRnz7kbXpxsWDI
	29/dVmuPNIAqol4LUdjA52eTQ/9f+F8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-417-K-uXyxyYORWz3rIGY1POow-1; Tue, 18 Feb 2020 04:08:04 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2413189F764;
	Tue, 18 Feb 2020 09:07:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9D0C60BF3;
	Tue, 18 Feb 2020 09:07:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 039D735B09;
	Tue, 18 Feb 2020 09:07:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01I969Jq005710 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Feb 2020 04:06:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 49AB52093CF3; Tue, 18 Feb 2020 09:06:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44EF32093CF9
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 09:06:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 07AD910192B4
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 09:06:07 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-291-ELTRtH0-MFqes3lPX8Io8g-1; Tue, 18 Feb 2020 04:06:04 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48MFMJ22TNz1d4S
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 04:06:04 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48MFMJ0VKczcbc; Tue, 18 Feb 2020 04:06:03 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48MFMH6wdSzcbV
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 04:06:03 -0500 (EST)
Date: Tue, 18 Feb 2020 04:06:03 -0500
To: blinux-list@redhat.com
Subject: early warning I hope
Message-ID: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: ELTRtH0-MFqes3lPX8Io8g-1
X-MC-Unique: K-uXyxyYORWz3rIGY1POow-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01I969Jq005710
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just ran a kernel update a few minutes ago on archlinux and tried
rebooting.
Some uuid cannot be found and I got thrown into an emergency shell.  All
of this of course without screen reader working.
I found this out as a result of talking to a be my eyes volunteer on the
phone after she examined my screen.
I have no idea what caused that and have minimal usb stuff connected to
the computer.  I had disconnected a flash drive from the computer thinking
the flash drive was the cause of the missing uuid but that wasn't the
case.
Fortunately I use solid state drives and have another different system on
one of them or I'd be offline for a while.
The volunteer didn't read me the long number after that uuid error.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

