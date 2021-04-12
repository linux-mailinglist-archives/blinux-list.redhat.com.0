Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id D1B6135BAC3
	for <lists+blinux-list@lfdr.de>; Mon, 12 Apr 2021 09:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618212237;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=F4X3h45E26b+bRNaxvCOtHKPqlPccfScv4SDwilJO6A=;
	b=e3mZRZunx2QmMOSJHP1Zw1hvfbdURo6B/2OwTGyCOqwoQlqgLWjfEm5txrMcBKITUOKwiR
	P78XGZugn25SmWFmTUsgk1BBtjm36qRCLp2ZWtfZ6Aa9/YYTMxjmpT2OQTgwGzYOielqGH
	CAzCfOnC2wHKCGCHmky+3uRP/dux81Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-496-iUVHYYwzPlmUGEWUqRkezw-1; Mon, 12 Apr 2021 03:23:55 -0400
X-MC-Unique: iUVHYYwzPlmUGEWUqRkezw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0C1BA40C4;
	Mon, 12 Apr 2021 07:23:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACF685DEAD;
	Mon, 12 Apr 2021 07:23:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C0425534C;
	Mon, 12 Apr 2021 07:23:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13C7NaYP013108 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 12 Apr 2021 03:23:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2A6F4345A3; Mon, 12 Apr 2021 07:23:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 243DB2EF87
	for <blinux-list@redhat.com>; Mon, 12 Apr 2021 07:23:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B81DB802816
	for <blinux-list@redhat.com>; Mon, 12 Apr 2021 07:23:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-502-OGH3wxuwNL64JbGVdIRJqw-1; Mon, 12 Apr 2021 03:23:30 -0400
X-MC-Unique: OGH3wxuwNL64JbGVdIRJqw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FJgFZ16X9z24VK
	for <blinux-list@redhat.com>; Mon, 12 Apr 2021 03:23:30 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FJgFZ0MNhzcbc; Mon, 12 Apr 2021 03:23:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FJgFZ03QtzcbW
	for <blinux-list@redhat.com>; Mon, 12 Apr 2021 03:23:29 -0400 (EDT)
Date: Mon, 12 Apr 2021 03:23:29 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: archlinux
In-Reply-To: <alpine.NEB.2.23.451.2104111611150.11836@panix1.panix.com>
Message-ID: <alpine.NEB.2.23.451.2104120320170.20633@panix1.panix.com>
References: <alpine.NEB.2.23.451.2104111019030.6129@panix1.panix.com>
	<018501d72efa$2ddaba90$89902fb0$@gmail.com>
	<alpine.NEB.2.23.451.2104111611150.11836@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

archlinux also uses syslinux to boot msdos systems.  The 
Installation_guide script makes it difficult for screen readers to locate 
a link then open it up if they need information presented as side notes so 
far.  I may need to hack with whatever browser that script uses and see if 
I can enable whatever accessibility settings exist for that browser.


On Sun, 11 Apr 2021, Linux for blind general discussion wrote:

> This is very old hardware, I could try that though these are bios or csm 
> system.
>
>
> On Sun, 11 Apr 2021, Linux for blind general discussion wrote:
>
>>  Hi,
>>
>>  What about systemdboot?  I think it is being used by default on the arch
>>  iso.
>>
>>  Matthew
>> 
>> 
>>
>>  -----Original Message-----
>>  From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
>>  Behalf Of Linux for blind general discussion
>>  Sent: Sunday, April 11, 2021 10:22 AM
>>  To: blinux-list@redhat.com
>>  Subject: archlinux
>>
>>  What replaced grub for efi boot systems?
>>  I ran archinstall and pulled in espeakup and dhcpcd and alsa-utils and
>>  enabled those  and the system wouldn't boot after that.  The only way grub
>>  could run was with --block and that by default is disabled in grub since
>>  it's unreliable.
>>
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@redhat.com
>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>>
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@redhat.com
>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

