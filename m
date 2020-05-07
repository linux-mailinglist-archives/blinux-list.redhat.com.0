Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 9F7321C9629
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 18:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588868073;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EOszMfD3jw4bPiy/lSaB1tSso5aqnEf5lUBzdxucZtw=;
	b=aL/UtxdY3UuKpR9++limea8v2ZaaRbuvWH6yBocbv5tQeRctdgmYD8vUYrBjgsUH0hS8wq
	TPmm0U4IGFlioAR+M2lpTHO8iFZ/2tvozb0GwLfk/HjhHlaDe4GeWfS+E/xPwGVhqc1Cex
	qKI41CO54npkXq+6ColH3WfdMe8wQMc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-173-cEo8oeTxNQ224BU_9wWL8Q-1; Thu, 07 May 2020 12:14:05 -0400
X-MC-Unique: cEo8oeTxNQ224BU_9wWL8Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 311018018AC;
	Thu,  7 May 2020 16:14:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A1C505C1BE;
	Thu,  7 May 2020 16:14:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 007E04CAA0;
	Thu,  7 May 2020 16:13:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047GDs0J005352 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 12:13:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 32B4E2157F26; Thu,  7 May 2020 16:13:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F0712157F25
	for <blinux-list@redhat.com>; Thu,  7 May 2020 16:13:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D34BF18A6679
	for <blinux-list@redhat.com>; Thu,  7 May 2020 16:13:50 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-19-nylf_AAlPh6ChsQC0HmQ9Q-1; Thu, 07 May 2020 12:13:47 -0400
X-MC-Unique: nylf_AAlPh6ChsQC0HmQ9Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49Hz6M3yC2zdFq
	for <blinux-list@redhat.com>; Thu,  7 May 2020 12:13:47 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49Hz6M3B8Szcbc; Thu,  7 May 2020 12:13:47 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49Hz6M2mtRzcbV
	for <blinux-list@redhat.com>; Thu,  7 May 2020 12:13:47 -0400 (EDT)
Date: Thu, 7 May 2020 12:13:47 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Anything besides vanilla Arch?
In-Reply-To: <513190A4-A93E-44D6-B032-9F0484D0988C@gmail.com>
Message-ID: <alpine.NEB.2.21.2005071213180.15709@panix1.panix.com>
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
	<alpine.NEB.2.21.2005071040040.20641@panix1.panix.com>
	<513190A4-A93E-44D6-B032-9F0484D0988C@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047GDs0J005352
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Android 9 and android current the way Jenux packages them.

On Thu, 7 May 2020, Linux for blind general discussion wrote:

> Date: Thu, 7 May 2020 11:54:02
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Anything besides vanilla Arch?
>
> What is the android distribution that works on a computer?
>
> > On May 7, 2020, at 9:42 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > I have Jenux installed and you get a choice of gnome mate kde or base
> > type installs with that distribution.  Oh, I forgot there's also a
> > couple android distributions it will do for you too if desired.  The
> > android installs have talkback for a screen reader.
> >
> > wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso.sha512
> > wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso
> > sha512sum -c Jenux-2020.02.03-x86_64.iso.sha512
> > On Thu, 7 May 2020,
> > Linux for blind general discussion wrote:
> >
> >> Date: Thu, 7 May 2020 06:22:56
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: Blinux-list@redhat.com
> >> Subject: Anything besides vanilla Arch?
> >>
> >> Hi there,
> >>
> >>
> >>
> >> I have been running Ubuntu and Ubuntu spins for a while now and am looking
> >> for something else for a change. I have installed vanilla Arch before, but
> >> that was when my system was only running Linux. Due to the work I do, NVDA
> >> certified expert, Training and tech support, et al, I have to have a Windows
> >> instance to boot in to. I am not comfortable installing vanilla Arch on here
> >> at this time.
> >>
> >>
> >>
> >> Are there any Arch based distros we can actually install without sited help?
> >>
> >>
> >>
> >> Warm regards/Groetnis/herzliche Gr??e,
> >>
> >>
> >>
> >> Brandt Steenkamp
> >>
> >>
> >>
> >> Contact/Kontak/Kontakt
> >>
> >>
> >>
> >> Twitter: www.twitter.com/brandtsteenkamp
> >> <http://www.twitter.com/brandtsteenkamp>
> >>
> >>
> >>
> >> Skype: brandt.steenkamp007
> >>
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >
> > --
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

