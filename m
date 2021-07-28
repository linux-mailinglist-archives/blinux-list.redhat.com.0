Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A6B303D924B
	for <lists+blinux-list@lfdr.de>; Wed, 28 Jul 2021 17:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627487137;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yKDvkd1UvT+YRPcQ6qawrsnFro30cnPti+f8654VONQ=;
	b=dPQEsFaM68yN7gTmECkg9cpg6y46uEXZ8QIHq8mB2NtyCaBagYiJVL3+10jOcvsHbNm7WB
	YN8usbZXebEKmKRfX4eZ02BcYkLiupYUQX85tyZBarfzmpdqUHv3BQYbLo3xhpUmRn9fej
	RBaZGfjHeX63fO3kuQQlkIV9WlqVyBM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-oyGmXwutMJ-sR1IxOB3J7A-1; Wed, 28 Jul 2021 11:45:35 -0400
X-MC-Unique: oyGmXwutMJ-sR1IxOB3J7A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB961107BEF6;
	Wed, 28 Jul 2021 15:45:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB2C969320;
	Wed, 28 Jul 2021 15:45:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F3664BB7C;
	Wed, 28 Jul 2021 15:45:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16SFjHOt016074 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 28 Jul 2021 11:45:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E5CAADAF2F; Wed, 28 Jul 2021 15:45:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DEA98DEEEE
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 15:45:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64C4E1066559
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 15:45:14 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-421-nyPXS8cvOpeTPLitFWu8cw-1; Wed, 28 Jul 2021 11:45:12 -0400
X-MC-Unique: nyPXS8cvOpeTPLitFWu8cw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GZdK36mJNzF3b
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 11:45:11 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GZdK36GBWzcbc; Wed, 28 Jul 2021 11:45:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GZdK35wP6zcbP
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 11:45:11 -0400 (EDT)
Date: Wed, 28 Jul 2021 11:45:11 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Open Suse install?
In-Reply-To: <CAD_4ddSaTQ3FGNw8RaizfH4_Tau=zZ2w_UUnSXu2m8bazCa54Q@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107281141570.22533@panix1.panix.com>
References: <b3f2a77d-40b6-1404-33ba-21580c29f6dc@gmail.com>
	<CAD_4ddSaTQ3FGNw8RaizfH4_Tau=zZ2w_UUnSXu2m8bazCa54Q@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When you boot tumbleweed, listen for hard drive action if installing on
real hardware.  When all of this stops, control-alt-s will slowly start
orca up.  Once done turn assistive technology on to avoid doing this
again.  That will allow you to install tumbleweed.  Once tumbleweed is
installed, use super-alt-s to get orca up and then turn on assistive
technology to keep accessibility alive.


On Wed, 28 Jul 2021, Linux for blind general discussion wrote:

> Hello there,
>
> As far as I know, it is not.
> I cannot tell you more however, because I heard it myself from another
> source.
> Best regards.
> Francisco.
>
> On Wed, Jul 28, 2021 at 10:36 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > Hi all,
> >
> >
> > I would like to have a play with Open Suse tumbleweed. I would like to
> > know if the installer is accessible, and if so, how do you get it to talk.
> >
> > --
> > Warm regards,
> >
> > Brandt Steenkamp
> >
> > Sent using Thunderbird from Slint
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

