Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C58AD45AEE3
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 23:13:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637705631;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dbHg/ZQNOk/Eb7O+UhX+tJtgXYKFRs9ggqf3A45pxEI=;
	b=hYLHARjB6DIE9eVzi+H9DqvuSHp4Z9yb/JWtyBhL0mgl9BYhUDwtaKoqEzHMYQxhazXn/9
	F6wgMvsJoyZ86jgrWxaO4bg2Gb8TiCBWqxkHAcW53eCgoKusZUS2bhsZCHD9rj5lyM1YnY
	8+Dw65CV2DTPVcHBV3yAmXHCxmM7eec=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-110-AYIEnBToM-2MmrTZSapyJw-1; Tue, 23 Nov 2021 17:13:48 -0500
X-MC-Unique: AYIEnBToM-2MmrTZSapyJw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E52D10168C0;
	Tue, 23 Nov 2021 22:13:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 598EA418E;
	Tue, 23 Nov 2021 22:13:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B80C61832E7F;
	Tue, 23 Nov 2021 22:13:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANMDa6g022108 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 17:13:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 806ED4010FE4; Tue, 23 Nov 2021 22:13:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B5A040CFD0D
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:13:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 61C6B801212
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:13:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-419-MAZIZLTqNTeV6I4D5nD0UA-1; Tue, 23 Nov 2021 17:13:34 -0500
X-MC-Unique: MAZIZLTqNTeV6I4D5nD0UA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HzJLk1F7GzP9V
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:13:34 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HzJLk0dmDzcbc; Tue, 23 Nov 2021 17:13:34 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HzJLk0CqWzcbP
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:13:33 -0500 (EST)
Date: Tue, 23 Nov 2021 17:13:33 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Ok, Jenux finally installed for me!
In-Reply-To: <d8ac620c-ce23-8ff7-d20f-4057682390bd@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111231710460.3928@panix1.panix.com>
References: <B5680B56-6FCB-4768-9404-664C2D069970@gmail.com>
	<alpine.NEB.2.23.451.2111231630150.11512@panix1.panix.com>
	<d8ac620c-ce23-8ff7-d20f-4057682390bd@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

Have you tried hitting alt-start-s?  That start key is between control and
alt on left side.  If that doesn't work, try it again but after hitting
the f4 key once.  The f4 key in mate toggles accessibility on and off but
why Jenux ever got to you without accessibility already toggled on is a
mystery to me here.


On Wed, 24 Nov 2021, Linux for blind general discussion wrote:

> It's Mate and no, alt+F2 "orca" did nothing.
>
>
> I decided after a few hours to not bother, and installed Fedora Mate-Compiz
> 35, which does talk just fine.
>
>
> I may give Jenux another go some time, when I have eyeballs nearby to
> troubleshoot.
>
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from my Fedora Install using Thunderbird
>
> On 2021/11/23 23:35, Linux for blind general discussion wrote:
> > This should be a one-time procedure.  key in alt-f2 then key in orca
> > --setup.
> > Does orca start talking?
> > I don't know what desktop choice you made mate is a good one and kde last
> > time I knew didn't have orca in it so orca would have to be downloaded and
> > installed with all dependencies in kde and even kde-accessibility list
> > can't provide any guideance for use with orca since that hasn't been
> > researched on that list.  If you chose a base install, you have no desktop
> > and you also have no orca on your system.
> >   On Tue, 23 Nov 2021, Linux for blind general discussion wrote:
> >
> >> Hi all,
> >>
> >> I finally had success installing Jenux, however,, now that I have it on the
> >> desktop, I cannot get Orca to talk. If anyone knows how to get it going,
> >> I'd be happy to keep the system for the time being.
> >>
> >> Warm regards,
> >>
> >> Brandt Steenkamp
> >>
> >> Sent from my MacBook Air
> >>
> >> Contact:
> >>
> >> Phone: +27 (0)60 525 9181 <tel://+27605259181>
> >>
> >> Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>
> >>
> >> Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>
> >>
> >>
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
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

