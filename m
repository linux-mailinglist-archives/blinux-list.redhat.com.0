Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8C34C5AA3
	for <lists+blinux-list@lfdr.de>; Sun, 27 Feb 2022 12:27:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645961235;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oNR0JgtJAc7m/CXSKjdaXfZXbdBFDNcESGg28J2iyW8=;
	b=OtgJBrY7E4+KeQ/Hxe7TehxGpmkHI6PXdhqSauc2JrbricIaZKTBjTO2BicpwnACdB6cCN
	XskbSZqck2ZNwYl5WMKgBSeEWu7/P/SeL5ObITbCSYA4iqWx86WjsKr0DtUnoQMdKh88dC
	c0KKUJN1AQM4J9SM/8E0t3DGELad6D4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-144-_2Qr7n_iPvGYtRt3B1EXNg-1; Sun, 27 Feb 2022 06:27:12 -0500
X-MC-Unique: _2Qr7n_iPvGYtRt3B1EXNg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3F3C8145F7;
	Sun, 27 Feb 2022 11:27:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0DA87A53B;
	Sun, 27 Feb 2022 11:27:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4C7D4BB40;
	Sun, 27 Feb 2022 11:26:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RBQoRP005570 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 06:26:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EF1942166B25; Sun, 27 Feb 2022 11:26:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB43C2166B2F
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 11:26:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8DB2C3C02186
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 11:26:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-161-lyh_li8vNPmAHBHgYl9A9A-1; Sun, 27 Feb 2022 06:26:44 -0500
X-MC-Unique: lyh_li8vNPmAHBHgYl9A9A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K61S35wspz2vTD
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 06:26:43 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K61S35CXPzcbc; Sun, 27 Feb 2022 06:26:43 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K61S34hCNzcbC
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 06:26:43 -0500 (EST)
Date: Sun, 27 Feb 2022 06:26:43 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Testing Linux distros
In-Reply-To: <8bd3c4a1-d001-3434-ce82-04967ad63c38@gmail.com>
Message-ID: <9688392-e67a-60bc-1c21-e9b3bdf9abb5@panix.com>
References: <6236d693-6b68-d164-9484-30e73574a4cb@gmail.com>
	<9a599fc5-a62-f1ed-94d2-a475ad65bd4d@panix.com>
	<8bd3c4a1-d001-3434-ce82-04967ad63c38@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

What you ought to do if you haven't done it already is buy an external
drive case for that kind of drive and put the drive in that case.
You can use the drive from inside the case connected to your computer and
the drive will have more protection that way.


On Sun, 27 Feb 2022, Linux for blind general discussion wrote:

> I have a 1 tb external USB3 drive which I will use then. Unfortunately it's
> not an SSD, but what can you do?
>
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent using Thunderbird from the Slint machine
>
> On 2022/02/26 23:51, Linux for blind general discussion wrote:
> > A guess, you're not using an extractable ssd on that machine.  If correct,
> > can the machine boot off an external drive in a USB port?  If not, you're
> > left with kemu and the like.  If yes, and you can get a external ssd drive
> > with usb connection put the testing system on that drive and replace it
> > there as needed.  That keeps your main drive separate and you can use that
> > for normal work.  External drive holders for the older type of drives like
> > ide and sasi and scsi are also on the market though you'd need to get an
> > extra drive or two for the holder.
> >
> >
> >
> > On Sat, 26 Feb 2022, Linux for blind general discussion wrote:
> >
> >> Hi all,
> >>
> >>
> >> I am tired of having to reinstall my distro of choice every time I get fed
> >> up
> >> of testing one distro or another.
> >>
> >>
> >> How would you go about testing if, like me, you only have the one Linux
> >> capable machine? Yes, I know you can technically run some distros on the M1
> >> MacBook, but, just, no thanks.
> >>
> >>
> >> I really, for one, don't like the VMware thing, and virtualbox is a pain.
> >>
> >>
> >> I'm thinking qemu with virtManager, but would like some input. This is how
> >> I
> >> run, only when really necessary, mind you, my production Windows.
> >> Unfortunately I need it to do my work, so cannot kill the thing.
> >>
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

