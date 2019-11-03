Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id C30B5ED4F7
	for <lists+blinux-list@lfdr.de>; Sun,  3 Nov 2019 21:56:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1572814611;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c3rOl/kgqE/qi7nzOYglDNeNpFKwAhQ0nYkq3qACZDw=;
	b=QCrJWG/x9EZxDCAilHb5rVHJeEAMPjZlrrC+izOLZvexFIkhZO+wDI+O6Uv2z4sQgbVVa8
	YLFOaM4CKp4ikiU5bZtK+dDbVxUmkLtqcEvgz4hbQlrSte3gXlKq8Q0eRIEw8ISl2V0SfK
	fZi0n7CEhbDXvEYlLAFobQ72XNuQmfM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-4QIZ88trPd22kM4sH_Wrng-1; Sun, 03 Nov 2019 15:56:49 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8575B800C72;
	Sun,  3 Nov 2019 20:56:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F25645DA75;
	Sun,  3 Nov 2019 20:56:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5D10F1809567;
	Sun,  3 Nov 2019 20:56:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xA3KubpQ028246 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Nov 2019 15:56:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 842B05D9E5; Sun,  3 Nov 2019 20:56:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EB6B5D9E2
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 20:56:35 +0000 (UTC)
Received: from filtteri.svk.fi (79-134-96-138.cust.suomicom.net
	[79.134.96.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 34A1483F3C
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 20:56:31 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by filtteri.svk.fi (Postfix) with ESMTP id 475pBP2cgGz1xTX
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 22:56:29 +0200 (EET)
X-Amavis-Modified: Mail body modified (using disclaimer) - filtteri.svk.fi
X-Virus-Scanned: Scrollout F1 at svk.fi
Received: from filtteri.svk.fi ([127.0.0.1])
	by localhost (filtteri.svk.fi [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id B8pfW1r_vi83 for <blinux-list@redhat.com>;
	Sun,  3 Nov 2019 22:56:09 +0200 (EET)
Received: from smtps.svk.fi (unknown [192.168.10.4])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by filtteri.svk.fi (Postfix) with ESMTPS id 475pB135PGz1xTM
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 22:56:09 +0200 (EET)
MIME-Version: 1.0
Date: Sun, 03 Nov 2019 22:56:00 +0200
To: blinux-list@redhat.com
Subject: Re: Ubuntu, UEFI and hard disks
In-Reply-To: <aeecd4b9-4f4b-01b8-5066-65a52900052e@GMAIL.COM>
References: <9fcc4efe-6f6b-0629-9d3b-5d178f690969@gmail.com>
	<07efbaf7bb6160fb186d50a201106a80@ijn2.net>
	<aeecd4b9-4f4b-01b8-5066-65a52900052e@GMAIL.COM>
Message-ID: <a68ba38593f76546f0ada88d79932c2a@ijn2.net>
X-Greylist: Sender passed SPF test, ACL 264 matched, not delayed by
	milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Sun, 03 Nov 2019 20:56:34 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Sun, 03 Nov 2019 20:56:34 +0000 (UTC) for IP:'79.134.96.138'
	DOMAIN:'79-134-96-138.cust.suomicom.net' HELO:'filtteri.svk.fi'
	FROM:'immo.niemela@svk.fi' RCPT:''
X-RedHat-Spam-Score: 0.813  (DKIM_INVALID, DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS, RDNS_DYNAMIC, SPF_HELO_NONE,
	SPF_PASS) 79.134.96.138 79-134-96-138.cust.suomicom.net 79.134.96.138
	79-134-96-138.cust.suomicom.net
	<SRS0=aonC=Y3=ijn2.net=immo.niemela@svk.fi>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: 4QIZ88trPd22kM4sH_Wrng-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hello, Birdie here!

On 2019-11-03 21:45, Linux for blind general discussion wrote:
> I do have Windows installed, yes. I'm using Ubuntu 18.04.3 Mate,
> mostly since I've had zero issues installing it on other systems even
> with SSDs in (my desktop has SSDs in it for example). Everything I've
> read and been told by Canonical is to keep UEFI on but remove secure
> boot to avoid problems, so that's what I did. I went through and made
> the bootable USB with Rufus in Windows, and yes it boots. But...

Before NVMe existed SSDs were connected using either SATA or SAS.
Those looked interface wise the same as all other SATA or SAS disks.
If your desktop SSD is connected using SATA it looks essentially
same as whatever SATA drive be it spinning platters or whatnot.

> Having checked it, it's a SSD, 256GB (which is fine for my laptop),
> so....is there anything in particular I need to gett Ubuntu Mate
> 18.04.3 and the Ubiquity installer to detect the SSD and NVME
> connections?

It appears different Ubuntu 18 distributions have had problems with
different NVMe SSD drives.

What is the computer make and model? Please be as specific as possible.
Same models come in different configurations so it's extremely
important to know the exact type. Alternatively you could use the
existing Windows and use it to tell your SSD exact make and model.
They come in different interfaces. You should tell the exact model.
Also your computer processor, chipset, and so on might come in handy.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

