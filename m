Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 210FAED436
	for <lists+blinux-list@lfdr.de>; Sun,  3 Nov 2019 19:46:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1572806765;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aBkNWQu+ERn+YT0XWUMcP0+MJafVbWYJeAlUF5QnLvQ=;
	b=TWEZT8AYbPs7N0XlJ48cYnLHU8z8p8O5q3dmPhRt1JrwRaPGEwJCl3zRqMlbv43VUan3L7
	hkHpmaEMpy/YzO4ZUSzLcgxwXP3ByYEVBkNByDlaxvCqlT6whB5Xi5gMyrzTCWAS6iLNXe
	y8bAz0TGO28FJ+WoGzssymMkQizpRzY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-xZSHqegYMzCzvZ0BbXsHoQ-1; Sun, 03 Nov 2019 13:46:02 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 022E847A;
	Sun,  3 Nov 2019 18:45:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 03BEF26E6E;
	Sun,  3 Nov 2019 18:45:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8AC8F4BB65;
	Sun,  3 Nov 2019 18:45:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xA3IjQtG021315 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Nov 2019 13:45:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D2E3260C63; Sun,  3 Nov 2019 18:45:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx30.extmail.prod.ext.phx2.redhat.com
	[10.5.110.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC59860C05
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 18:45:24 +0000 (UTC)
Received: from filtteri.svk.fi (79-134-96-138.cust.suomicom.net
	[79.134.96.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id AB2E064272
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 18:45:15 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by filtteri.svk.fi (Postfix) with ESMTP id 475lGx5JHzz1xrg
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 20:45:13 +0200 (EET)
X-Amavis-Modified: Mail body modified (using disclaimer) - filtteri.svk.fi
X-Virus-Scanned: Scrollout F1 at svk.fi
Received: from filtteri.svk.fi ([127.0.0.1])
	by localhost (filtteri.svk.fi [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id nPPxjIOdJr2x for <blinux-list@redhat.com>;
	Sun,  3 Nov 2019 20:44:53 +0200 (EET)
Received: from smtps.svk.fi (unknown [192.168.10.4])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by filtteri.svk.fi (Postfix) with ESMTPS id 475lGY5gb9z1xTg
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 20:44:53 +0200 (EET)
MIME-Version: 1.0
Date: Sun, 03 Nov 2019 20:44:53 +0200
To: blinux-list@redhat.com
Subject: Re: Ubuntu, UEFI and hard disks
In-Reply-To: <9fcc4efe-6f6b-0629-9d3b-5d178f690969@gmail.com>
References: <9fcc4efe-6f6b-0629-9d3b-5d178f690969@gmail.com>
Message-ID: <07efbaf7bb6160fb186d50a201106a80@ijn2.net>
X-Greylist: Sender passed SPF test, ACL 264 matched, not delayed by
	milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.71]);
	Sun, 03 Nov 2019 18:45:23 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.71]);
	Sun, 03 Nov 2019 18:45:23 +0000 (UTC) for IP:'79.134.96.138'
	DOMAIN:'79-134-96-138.cust.suomicom.net' HELO:'filtteri.svk.fi'
	FROM:'immo.niemela@svk.fi' RCPT:''
X-RedHat-Spam-Score: 0.812  (DKIM_INVALID, DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS, RDNS_DYNAMIC, SPF_HELO_NONE,
	SPF_PASS) 79.134.96.138 79-134-96-138.cust.suomicom.net 79.134.96.138
	79-134-96-138.cust.suomicom.net
	<SRS0=aonC=Y3=ijn2.net=immo.niemela@svk.fi>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.71
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: xZSHqegYMzCzvZ0BbXsHoQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hello, Birdie here!

> I posted this over at askubuntu but I figured I'd ask here too. Got my
> laptop to boot into Ubuntu Mate. Problem is...it won't detect the hard
> drive at all. I can do slblk and all it shows is dev/sda (which is the
> USB stick). Installer picks up the stick too and tell me I need 8GB of
> space on the 8GB memory stick.

Most likely your problem is that the storage in your new laptop is
not what we know as a hard disk. It could be that it is a solid state 
disk.
If the storage connection is NVMe (Non volatile memory express) it would
show up as /dev/nvme0*. There are also other possible alternatives
depending on connection and storage type. SSD is not the only 
possibility.

Most likely your Ubuntu distribution doesn't understand your laptops
storage controller.

> I went into Win10's settings and turned off UEFI, then secure boot.
> So. Should I reenable the UEFI firmware but leave secure boot off,
> or...?

By all means you should have left the settings intact. All decent
Linux distributions are able to boot with UEFI and secure boot.

Since we don't know anything about your laptop nor your Ubuntu Linux
distribution all this is only speculation.

If you would like to have a better and more educated answer to
your problem please tell as much as possible about the situation.
If you still have Windows installed on the computer you could go to
About this computer and check what kind of storage you have installed.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

