Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF8E447041
	for <lists+blinux-list@lfdr.de>; Sat,  6 Nov 2021 20:51:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636228275;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sq10lDFdn39o7cEFI0hhLoQMDiaMp2WCpFAQigIAVRY=;
	b=YZnyAEn0KFWfoTFd2Q6lhTJpQWHS4NUg7znqOxn/vdFwaIOmBrfNkBxOqbdR3RmPSd1Nvp
	XB5T1duUvqQ/iX5iWAxBI27uyFOhMt/lEc9TIpVVdj0hON01+lo9DBgP0iHpeV/FXRKY1/
	lTCYLtSE7kHhVHJnn6h9t13KK9SHl2k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-MzqbZxU9O_OodUYZ4YxUjA-1; Sat, 06 Nov 2021 15:51:11 -0400
X-MC-Unique: MzqbZxU9O_OodUYZ4YxUjA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7FB08804149;
	Sat,  6 Nov 2021 19:51:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6911417155;
	Sat,  6 Nov 2021 19:51:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E177C181A1D0;
	Sat,  6 Nov 2021 19:51:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A6JlXeI023435 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 6 Nov 2021 15:47:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D9E9251DD; Sat,  6 Nov 2021 19:47:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D479951DC
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 19:47:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3ABB85A5A8
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 19:47:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-504-0Ig903oFP6-xApaClDXTuA-1; Sat, 06 Nov 2021 15:47:29 -0400
X-MC-Unique: 0Ig903oFP6-xApaClDXTuA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hmnw06Jn8z3yR5
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 15:47:28 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Hmnw05sCbzcbc; Sat,  6 Nov 2021 15:47:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Hmnw05WRmzcbW
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 15:47:28 -0400 (EDT)
Date: Sat, 6 Nov 2021 15:47:28 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to get speech in a console session?
In-Reply-To: <CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111061546500.21363@panix1.panix.com>
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
	<CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
	<66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
	<CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Did you check the integrity of your iso?  If not, you could have got a bad
copy.


On Fri, 5 Nov 2021, Linux for blind general discussion wrote:

> I did use speech in the installer, and Orca came up right away, but
> speakup didn't work when I sswitched to a console session.
> I read that wiki page, edited my /etc/modules file, and speakup still
> wouldn't work.
>
> On 11/5/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > Hi,
> >
> > Debian has a detacated accessibility page.  The wiki page is
> > wiki.debian.org/accessibility <http://wiki.debian.org/accessibility>.  This
> > has info on how to get speech both in a text interface and a GUI.  As a side
> > note, if you use speech with the installer, everything will be enabled In
> > the installed system.
> >
> > Matthew
> >
> >
> >
> >> On Nov 5, 2021, at 4:28 PM, Linux for blind general discussion
> >> <blinux-list@redhat.com> wrote:
> >>
> >> I already have espeak and espeakup installed. I tried running fenrir,
> >> but I got the following error:
> >> play WARN alsa: can't encode 0-bit Unknown or not applicable
> >>
> >> On 11/5/21, Linux for blind general discussion <blinux-list@redhat.com>
> >> wrote:
> >>> If you start the install media and press s then enter, you'll have
> >>> speech
> >>> during and after install.
> >>> Devin Prater
> >>> r.d.t.prater@gmail.com
> >>>
> >>>
> >>>
> >>>
> >>> On Fri, Nov 5, 2021 at 12:37 PM Linux for blind general discussion <
> >>> blinux-list@redhat.com> wrote:
> >>>
> >>>> So I'm new to Linux, and I'm going to be trying it out for a period of
> >>>> about a week or two, to see if I could use it as a daily driver.
> >>>> One thing I'm not sure about is how to get Speakup (with either
> >>>> Espeakup or Speechd-Up) working.
> >>>> My distribution of choice is Debian 11, by the way.
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

