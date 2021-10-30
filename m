Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A78440C2E
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 00:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635633779;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZJYoaNh54/5M74nv25ThJOsGZE/c0uSE+ffBSsReUlE=;
	b=GYgNRNikNrKycXxXND3xPvMyLGEQ72C1ND0jZNpvC4smEO4eEjQ8fvzt5GqxbYP+XzNRyg
	GGo7F+/p3maRNkCaGku5ywhgWwLDv+rtuIqRSfYH9GXHwU7tVMTLBWPzmUfbAvqrgfY3E4
	FZjLZlV5o/3WyH6ltpWpl52TGc8jQYM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430--SXLLswsP3SNPYEhgRU__A-1; Sat, 30 Oct 2021 18:42:55 -0400
X-MC-Unique: -SXLLswsP3SNPYEhgRU__A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D2951808319;
	Sat, 30 Oct 2021 22:42:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C78E119741;
	Sat, 30 Oct 2021 22:42:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BE5184A703;
	Sat, 30 Oct 2021 22:42:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UMgkM4031333 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 18:42:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AE35B51DD; Sat, 30 Oct 2021 22:42:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A975751DC
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:42:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3052100B8C8
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:42:42 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-277-y-xuSCmHN1WG1J1yYCygdg-1; Sat, 30 Oct 2021 18:42:41 -0400
X-MC-Unique: y-xuSCmHN1WG1J1yYCygdg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HhZ7N49KSz3xR9
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 18:42:40 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HhZ7N2rsMzcbc; Sat, 30 Oct 2021 18:42:40 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HhZ7N2GfKzcbP
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 18:42:40 -0400 (EDT)
Date: Sat, 30 Oct 2021 18:42:40 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: System image backup?
In-Reply-To: <81796f3a-548f-fc4c-cd9c-c423daaead0b@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2110301837260.21716@panix1.panix.com>
References: <ae005db1-091b-d05d-250c-3b54a71765b9@gmail.com>
	<81796f3a-548f-fc4c-cd9c-c423daaead0b@gmail.com>
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

Another alternative especially when editing configuration files is first
to copy the file to file.orig then do your editing on file and if your
change fails, cp file.orig file and whatever you broke just got fixed.
Sooner or later image backups fail if not on worm media and it would
probably be useful to have a .sha512sum file on separate media with the
sha512sum of the backed up image to check the backed up image every so
often.  This way when it starts to fail you'll know without necessity of
a restore operation.
A backup image check might be a good chron job to run regularly.


On Sun, 31 Oct 2021, Linux for blind general discussion wrote:

> I use timeshift.
>
>
> If you can access shell after messing up, you're just a few steps away from
> restoring your system.
>
> Otherwise you need live CD.
>
>
> https://itsfoss.com/backup-restore-linux-timeshift/
>
>
> HtH
>
> On 10/29/21 4:59 AM, Linux for blind general discussion wrote:
> > Dear List,
> >
> > Is there a easy and accessible way to create a system image?
> >
> > So if I screw up something, I could restore from a inage.
> >
> > Thanks,
> >
> > Rob
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

