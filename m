Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 86FE235B6DA
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 22:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618172015;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5v8Yqu7WV3euqIAK4Z6ygTc3ues9pZa5iQBXtvqTQgc=;
	b=b8yeXq0pljHlzQAms6joyqCzrNcibGD26qQOmf0vqYS7knVYKloD6TQi4DmtD+m7WFQQ4B
	QnvxCAk46lSt1Tp3ucGdUWHlJBzy7M6hli+sxJMYkg8lF94K0tO1aTWXAERw0RCsRSjbC0
	vlOZ8SvwQmH6opoI5Da9vOqEcEsz3Zo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-hqj-D9o3MY-wR0MQL5bxWA-1; Sun, 11 Apr 2021 16:13:33 -0400
X-MC-Unique: hqj-D9o3MY-wR0MQL5bxWA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ABEC4107ACCD;
	Sun, 11 Apr 2021 20:13:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C117C101E663;
	Sun, 11 Apr 2021 20:13:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C2A7744A5B;
	Sun, 11 Apr 2021 20:13:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BKD9hq024575 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 16:13:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0E67633228; Sun, 11 Apr 2021 20:13:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0682733225
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 20:13:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5FE485A5A8
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 20:13:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-426-QF8Jt4DTNTC8quRqoiY5BA-1; Sun, 11 Apr 2021 16:13:04 -0400
X-MC-Unique: QF8Jt4DTNTC8quRqoiY5BA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FJNN02vVZzZ2v
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 16:13:04 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FJNN01srMzcbc; Sun, 11 Apr 2021 16:13:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FJNN01Rp2zcbW
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 16:13:04 -0400 (EDT)
Date: Sun, 11 Apr 2021 16:13:04 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: archlinux
In-Reply-To: <018501d72efa$2ddaba90$89902fb0$@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2104111611150.11836@panix1.panix.com>
References: <alpine.NEB.2.23.451.2104111019030.6129@panix1.panix.com>
	<018501d72efa$2ddaba90$89902fb0$@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

This is very old hardware, I could try that though these are bios or csm 
system.


On Sun, 11 Apr 2021, Linux for blind general discussion wrote:

> Hi,
>
> What about systemdboot?  I think it is being used by default on the arch
> iso.
>
> Matthew
>
>
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Sunday, April 11, 2021 10:22 AM
> To: blinux-list@redhat.com
> Subject: archlinux
>
> What replaced grub for efi boot systems?
> I ran archinstall and pulled in espeakup and dhcpcd and alsa-utils and
> enabled those  and the system wouldn't boot after that.  The only way grub
> could run was with --block and that by default is disabled in grub since
> it's unreliable.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

