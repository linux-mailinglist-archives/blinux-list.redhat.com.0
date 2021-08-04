Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2C4953E00E7
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 14:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628079139;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=B6cMhoWgdsWsX3OqKn2A1BqOcausK7rsAkwdZUqxz84=;
	b=S6R+iIBkEm5LVrHjgHjfbJXA5ZETSsnkiiqocOCQxLz0wlPLPYMAstOOGPa0tZm9pdFTTV
	sNBOJ/2ckfutjPl1h67XGjl99CSkL50jVkmAKVqAiwUuxEvfZVR0jbCD/RnVBPZIaIebvh
	LnevZj+ZQN+RRrgF13guMzV3GAannvo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-149-1XaviJcRPMCrR5dITg_EPQ-1; Wed, 04 Aug 2021 08:12:17 -0400
X-MC-Unique: 1XaviJcRPMCrR5dITg_EPQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4FBFA18C8C01;
	Wed,  4 Aug 2021 12:12:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0FDF2710C5;
	Wed,  4 Aug 2021 12:12:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 10BB8181A3E9;
	Wed,  4 Aug 2021 12:12:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174CBu4m026099 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 08:11:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 33C4D10DCF6C; Wed,  4 Aug 2021 12:11:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FBCB10DCF51
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 12:11:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F02D8CA944
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 12:11:53 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-176-r_MUuidBNtC9HlVbq98vSw-1; Wed, 04 Aug 2021 08:11:51 -0400
X-MC-Unique: r_MUuidBNtC9HlVbq98vSw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GfrFf5Hnqz43mj
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 08:11:50 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GfrFf4lrSzcbc; Wed,  4 Aug 2021 08:11:50 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GfrFf4Q11zcbW
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 08:11:50 -0400 (EDT)
Date: Wed, 4 Aug 2021 08:11:50 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Solus DE observations
In-Reply-To: <229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108040810210.13520@panix1.panix.com>
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

When I installed Linux Mint as soon as orca was turned on it was also
necessary to enable assistive technologies in the menus to keep orca
running.  Then the rest of installation could continue.


On Wed, 4 Aug 2021, Linux for blind general discussion wrote:

> How was linux mint and orca during installing?
>
> > On Aug 3, 2021, at 9:23 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > This message is coming from my Solus Mate installation.  Mate and the applications work as expected, with the exception of speech dispatcher.  All other audio sounds fine, but speech is a little choppy.  Also, I found that some packages aren't in the repos, namely LIOS and Chirp.  I don't know what the build experience is like in Solus, and have those packages in my Slint system. Speaking of Slint, have you considered it?
> >
> >
> > I have used Linux Mint Mate edition, and find that the accessibility works fine in the apps and on the desktop and menus.  I find that I have to use flat review on Mint Mate's bottom panel, and the battery  charge indicator doesn't seem to refresh properly.
> >
> >
> >
> > HTH,
> >
> >
> >
> > Dave  H.
> >
> >
> >
> >
> > Sent with Thunderbird and Solus GNU/Linux.
> >
> > On 8/3/21 10:13 PM, Linux for blind general discussion wrote:
> >> Dave, I have used gnome and mate with ubuntu.
> >> I thought of linux mint, and tried it, but orca would not work.
> >> Had you tried mint?
> >> As to Solus, is that workable?
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
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

