Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 0168B1CFBC9
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 19:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589303778;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a3hjLoM9QPzWtXMJz6UXP5MGiQvAQTq7gU3cbCmdWMw=;
	b=RNEt5fA630DYsDUhVbmUfP79zgZlLSQ5T46cUIWSPIvvRDJrnTkzfdgxtV2zEPXXOR7U2m
	DbEOGMB/fNbTtHzNlrQlQMLyr6hd9p5Q6o2eb2SbRUXwnhPq2DHjb/reoN2oOVLx9May+u
	WnMW8Gx+egDSFnbN2oLfTSGuK6aa+u4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-158-zP2KVI9RPDi8LAU08zokNw-1; Tue, 12 May 2020 13:15:51 -0400
X-MC-Unique: zP2KVI9RPDi8LAU08zokNw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 897C3107ACF2;
	Tue, 12 May 2020 17:15:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E99F1001920;
	Tue, 12 May 2020 17:15:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 332311809543;
	Tue, 12 May 2020 17:15:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CHFfSZ001368 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 13:15:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 67E232156A3C; Tue, 12 May 2020 17:15:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 649042166BA4
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:15:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A34CC186E3A6
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:15:38 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-184-8ShOrn1SONC_s7IvIDb12A-1; Tue, 12 May 2020 13:15:35 -0400
X-MC-Unique: 8ShOrn1SONC_s7IvIDb12A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49M4FL5x5hz1YDX
	for <blinux-list@redhat.com>; Tue, 12 May 2020 13:15:34 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49M4FL55Z1zcbc; Tue, 12 May 2020 13:15:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49M4FL4dxVzcbV
	for <blinux-list@redhat.com>; Tue, 12 May 2020 13:15:34 -0400 (EDT)
Date: Tue, 12 May 2020 13:15:34 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Manjaro linux
In-Reply-To: <CAJKfDDEMOM793Q8gxkgzwVZo2-pfhLTWuQ4b5fRw6=u7C86PdA@mail.gmail.com>
Message-ID: <alpine.NEB.2.21.2005121312150.86@panix1.panix.com>
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
	<CAJKfDDEMOM793Q8gxkgzwVZo2-pfhLTWuQ4b5fRw6=u7C86PdA@mail.gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You'll have much more of a direct path to getting a graphical user
interface working on archlinux systems if you leave talkingarch alone
and instead install jenux.  Talkingarch and tarch both lack menu choices
to install graphical user interfaces in fact both talkingarch and tarch
lack installation menus.  To install talkingarch and tarch you'll have
to have familiarity with command line interface since you're going to be
using several different tools to do those installations.

wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso.sha512
wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso
sha512sum -c Jenux-2020.02.03-x86_64.iso.sha512
On Tue, 12 May
2020, Linux for blind general discussion wrote:

> Date: Tue, 12 May 2020 12:57:57
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list <blinux-list@redhat.com>
> Subject: Re: Manjaro linux
>
> Calamares installer is unaccessible, this killed Sonar Linux that moved to
> it as base, the accessibility bug sit unfixed for over 3 years, it's a bit
> why I am not fond of Manjaro since.
>
> There's Talking Arch I think if you want Archlinux.
>
> In my case, I tried to gatter vinux and sonar team to create a new
> accessibility intended distribution with added features that I still keep
> for myself since I aim to stop excessive fragmentation of Linux
> distributions somehow and I need to have some features to grab enough
> people to achieve my goals.
>
> Le mar. 12 mai 2020 10:43, Linux for blind general discussion <
> blinux-list@redhat.com> a ?crit :
>
> > Does Manjaro linux have orca in its installer
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

