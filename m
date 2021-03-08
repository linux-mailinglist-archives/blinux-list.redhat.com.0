Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 68D193306D0
	for <lists+blinux-list@lfdr.de>; Mon,  8 Mar 2021 05:20:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615177206;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4Yj6b3Vcy3/Ted8bRAaAU6Wq+idwHZP+JXr7XsmvsJc=;
	b=dIVjvn175TAp8oh+Zt/kvVIYavb/1HRr6PQq7zvo0DvK/4wxMAXqlwwNLjo1skvA7rC/yL
	jEAKGeQGPiyktn4K6RTG06Ge2YSm5g0dQo1un1AugkE2x+N/t56BvI7hS0pEn+B3nCwqlA
	YPLbEXUa2knFl/9KBNFVBt/4pev2E2o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-546-b8_lrA8EO0a5WqRdVW2_Wg-1; Sun, 07 Mar 2021 23:20:01 -0500
X-MC-Unique: b8_lrA8EO0a5WqRdVW2_Wg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BECCA1084D69;
	Mon,  8 Mar 2021 04:19:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D4AB196E3;
	Mon,  8 Mar 2021 04:19:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 850351809C86;
	Mon,  8 Mar 2021 04:19:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1284JqaY007497 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 23:19:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 15391110DBA9; Mon,  8 Mar 2021 04:19:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10D24110DBA5
	for <blinux-list@redhat.com>; Mon,  8 Mar 2021 04:19:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 627308219BA
	for <blinux-list@redhat.com>; Mon,  8 Mar 2021 04:19:47 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-416-fSw105QJMNOeTRAZBnZhvQ-1; Sun, 07 Mar 2021 23:19:44 -0500
X-MC-Unique: fSw105QJMNOeTRAZBnZhvQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Dv4qg5WYPzWG1
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 23:19:43 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Dv4qg4fZdzcbc; Sun,  7 Mar 2021 23:19:43 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Dv4qg4HQ7zcbW
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 23:19:43 -0500 (EST)
Date: Sun, 7 Mar 2021 23:19:43 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: New laptop, alt F1 is not bringing up the menus
In-Reply-To: <161517600216.7.8525648975641765810.4519676@slmail.me>
Message-ID: <alpine.NEB.2.23.451.2103072314510.17385@panix1.panix.com>
References: <161517600216.7.8525648975641765810.4519676@slmail.me>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

What does the start key do by itself?
In that situation, I'd also try shift-f10.
What I found with mint-cinnamon was alt-start-s at login brought up orca 
long enough to login.
Then orca died until I keyed in alt-f2 followed by orca after the chime 
letting me know I was logged in.
Normally with mate, the f4 key by itself toggles accessibility on and off.
You may have to go into menus and enable assistive technology and then 
enable orca under that though.



On Mon, 8 Mar 2021, Linux for blind general discussion wrote:

> Hi,
> I just got a new Lenovo Ideapad and installed Linux Mint MATE on it which works just fine on my HP.
> But on this Lenovo, alt F1 is not pulling up my menus.
> On my HP with Linux Mint, all I have to do is press alt F1 and it brings up my menus in GUI so i can get to systems or internet etc.
> On this Lenovo, when I press alt F1, it just mutes the speech.
> So then I have to press F1 again to unmute the speech.
> Its like the laptop completely ignores the input of alt and it only acknowledges F1 and mutes it.
> To be fair, even with the copy of Windows10 that it came with, even with Windows it would not acknowledge the alt F4 to close a window.
> Its like the F keys on this laptop are not doing what they are traditionally assigned to do. So now in Linux alt F1 is not pulling up my menus so I can't navigate my GUI.
> I bought the laptop locally, so if this cannot be solved, then I will return it and get a different one instead.
> Do any of you have issues with Lenovo Ideapads and the F keys?
> Any other ways to bring up the menus in GUI?
> Otherwise I'll have to return it and replace it.
> Thanks,
> SL
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

