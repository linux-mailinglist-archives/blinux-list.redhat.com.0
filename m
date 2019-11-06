Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 69A96F1AAB
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2019 17:00:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1573056056;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eUasjvxIR7590MnAasVvyACTKEjB5P7iR6Ds1oSe1TQ=;
	b=GfxzwYOBxMnvRroTz7bogs+ttrq2vFOGNdkWqjA4CprRzJBDerjJRLShVO+PayGFCZEmrC
	O/QSToAnKZVFs/IPCBMVD6zO+xo4wlfxr70Fq1DixVcORw31FcQP1fFzthHdZwoOIKQ7fE
	1XLZ2j9abL8IfwbKueEhCaIgFaBVXVA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-334-sCZt3IE0MOezsgG398Mx_w-1; Wed, 06 Nov 2019 11:00:52 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B637D800C72;
	Wed,  6 Nov 2019 16:00:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53A811001DC0;
	Wed,  6 Nov 2019 16:00:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 29BCB1819ACE;
	Wed,  6 Nov 2019 16:00:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xA6G0VIj009178 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 6 Nov 2019 11:00:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0BE8B608AC; Wed,  6 Nov 2019 16:00:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx23.extmail.prod.ext.phx2.redhat.com
	[10.5.110.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 060D160872
	for <blinux-list@redhat.com>; Wed,  6 Nov 2019 16:00:28 +0000 (UTC)
Received: from filtteri.svk.fi (79-134-96-138.cust.suomicom.net
	[79.134.96.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id EE30710C72C4
	for <blinux-list@redhat.com>; Wed,  6 Nov 2019 16:00:22 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by filtteri.svk.fi (Postfix) with ESMTP id 477WTK0nShz1xdk
	for <blinux-list@redhat.com>; Wed,  6 Nov 2019 18:00:21 +0200 (EET)
X-Amavis-Modified: Mail body modified (using disclaimer) - filtteri.svk.fi
X-Virus-Scanned: Scrollout F1 at svk.fi
Received: from filtteri.svk.fi ([127.0.0.1])
	by localhost (filtteri.svk.fi [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id taGOsCHl_lCG for <blinux-list@redhat.com>;
	Wed,  6 Nov 2019 18:00:00 +0200 (EET)
Received: from smtps.svk.fi (unknown [192.168.10.4])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by filtteri.svk.fi (Postfix) with ESMTPS id 477WSw6P6fz1xtq
	for <blinux-list@redhat.com>; Wed,  6 Nov 2019 18:00:00 +0200 (EET)
MIME-Version: 1.0
Date: Wed, 06 Nov 2019 18:00:00 +0200
To: blinux-list@redhat.com
Subject: Re: Ubuntu, UEFI and hard disks
In-Reply-To: <9c96b3bc-9ed8-987e-8212-db1fbd244190@GMAIL.COM>
References: <9fcc4efe-6f6b-0629-9d3b-5d178f690969@gmail.com>
	<07efbaf7bb6160fb186d50a201106a80@ijn2.net>
	<aeecd4b9-4f4b-01b8-5066-65a52900052e@GMAIL.COM>
	<a68ba38593f76546f0ada88d79932c2a@ijn2.net>
	<9c96b3bc-9ed8-987e-8212-db1fbd244190@GMAIL.COM>
Message-ID: <aa4167ae00ea248ef989f6b9a6c457b9@ijn2.net>
X-Greylist: Sender passed SPF test, ACL 264 matched, not delayed by
	milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]);
	Wed, 06 Nov 2019 16:00:27 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]);
	Wed, 06 Nov 2019 16:00:27 +0000 (UTC) for IP:'79.134.96.138'
	DOMAIN:'79-134-96-138.cust.suomicom.net' HELO:'filtteri.svk.fi'
	FROM:'immo.niemela@svk.fi' RCPT:''
X-RedHat-Spam-Score: 0.813  (DKIM_INVALID, DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS, RDNS_DYNAMIC, SPF_HELO_NONE,
	SPF_PASS) 79.134.96.138 79-134-96-138.cust.suomicom.net 79.134.96.138
	79-134-96-138.cust.suomicom.net
	<SRS0=fhf8=Y6=ijn2.net=immo.niemela@svk.fi>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.64
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: sCZt3IE0MOezsgG398Mx_w-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

On 2019-11-04 14:34, Linux for blind general discussion wrote:

> Didier, I would if I could get that far. For some inane reason...my
> Dell Insprion 5482 seems to think anything with secure boot off =
> legacy mode, despite everything being set up with EUFI no matter what.
> 
> Birdie, how exactly would I check what I got in Windows as I got told
> many, many ways to check

One way of checking is starting PowerShell as an administrator.
In PowerShell use Get-PhysicalDisk
Hopefully it tells the connection type too.

Thanks for telling the make and model of your laptop. It helped since
I was able to check the specifications from Dell.

Your laptop has two storage spaces. It could have one 2.5-inch hard 
drive
(or SSD), connection is SATA AHCI 6 Gbps.
The other is M.2 2280 space for solid-state drive. Connection could be
either SATA AHCI 6 Gbps or PCIe NVMe up to 32 Gbps. The connector
provides both types.

If yours were connecting using AHCI it would have worked out of the box.

Since it did not, my educated guess is that you have NVMe.
Apparently your Ubuntu installer doesn't understand your NVMe
controller.

The options are either install an internal AHCI connected SSD or
try some other Linux distribution. Didier could help you there
since to my understanding he maintains one distribution personally.

Regards,
Birdie

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

