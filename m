Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9573D3FD066
	for <lists+blinux-list@lfdr.de>; Wed,  1 Sep 2021 02:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630457142;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wvxj0RaJOHDZnRtobhCwTxcvIGSE9XXEqVVC2Z7xUfQ=;
	b=N155W3Zdf0H0SQp/3HZ3GgCULWaGWkjeqUDi4h+n/PUWIpR/LJyR1zuPPymEuEjFZBqDdv
	iYwGNx9RddGmQx30JJY/cVNJeYSb8H6tGxQberJC/1NAEDOEllr6H4kkBwgDfMmvRWk3en
	IuQ+U6aostDjJ15H0jLIfaekLSHo+JI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-471-qflNJQDSMg2nevgmbnl2eQ-1; Tue, 31 Aug 2021 20:45:41 -0400
X-MC-Unique: qflNJQDSMg2nevgmbnl2eQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6EA711F1FB;
	Wed,  1 Sep 2021 00:45:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E46F2AF99;
	Wed,  1 Sep 2021 00:45:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BFA40181A2A5;
	Wed,  1 Sep 2021 00:45:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1810fQSx004298 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 31 Aug 2021 20:41:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E86CC2068FE7; Wed,  1 Sep 2021 00:41:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3C1820316F4
	for <blinux-list@redhat.com>; Wed,  1 Sep 2021 00:41:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4730866DF1
	for <blinux-list@redhat.com>; Wed,  1 Sep 2021 00:41:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-293-Cv2i0-l8NYanNySSp0JTfg-1; Tue, 31 Aug 2021 20:41:20 -0400
X-MC-Unique: Cv2i0-l8NYanNySSp0JTfg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Gzlbz6917z2tVm
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 20:41:19 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Gzlbz5Gd0zcbc; Tue, 31 Aug 2021 20:41:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Gzlbz4s73zcbP
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 20:41:19 -0400 (EDT)
Date: Tue, 31 Aug 2021 20:41:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: blind-arch findings
In-Reply-To: <20210901.003115.052.6@[192.168.1.100]>
Message-ID: <alpine.NEB.2.23.451.2108312040310.22269@panix1.panix.com>
References: <alpine.NEB.2.23.451.2108311320240.4235@panix1.panix.com>
	<601917c3-21b1-b0c3-d375-925260efb669@gmail.com>
	<576ba3b4-c113-0c2e-1931-c8e4eabf4204@gmail.com>
	<20210901.003115.052.6@[192.168.1.100]>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1810fQSx004298
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
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

run lsblk and check its output before running ./install if you want to
know about your drives.


On Tue, 31 Aug 2021, Linux for blind general discussion wrote:

> NVMe will have something like NVM in the /dev tree.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Tue, 31 Aug 2021 20:17:06 -0400
> Subject: Re: blind-arch findings
>
> > How can you tell, for a given drive, whether it is sata or nvme? I just
> listened to the youtube walk-through, and may want to try this on bare
> metal.
>
>
>
> Thanks,
>
>
>
> Dave=A0 H.
>
>
>
>
> Sent from Slint GNU/Linux.  https://slint.fr/doc/HandBook.html for info
>
> On 8/31/21 5:32 PM, Linux for blind general discussion wrote:
> > Hi,
> >
> > Also, by default it uses the lts kirnel and not the latest kernel.=A0 I
> > don't think there is a way to fix this.=A0 I think there should be a wa=
y
> > to chuse which kernel you want, but either way iIt I think it is great
> > for soomeone whoo is getting started, but you can get around this
> > drive size problem by manually creatting your partitions if you know
> > what you are doing, but I think you should bwe able to just use the
> > remaining space by default.
> >
> > Matthew
> >
> >
> >
> > On Tue, 31 Aug 2021, Linux for blind general discussion wrote:
> >
> >> It can't do an install for a command line so it is necessary to choose=
 a
> >> desktop.
> >> Several warnings get thrown by the script but the script continues to
> >> work.
> >> I think if I do this again and pick a desktop the install will work
> >> completely.
> >> Partitions are made small sizes and this is on a disk with 240G of
> >> space.
> >> Maybe that could be improved so more of the disk gets used by
> >> partitions.
> >> No option to create and use a swap file rather than a swap partition i=
s
> >> available yet.
> >> The script could probably install budgie as a desktop choice if worked=
.
> >> When I installed stuff I put xorg on the system along with fonts and
> >> maybe
> >> if I had left desktop and xorg off this might have come up in command
> >> line
> >> mode.=A0 I'll check that out time permitting.
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >
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

