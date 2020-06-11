Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 06E881F643A
	for <lists+blinux-list@lfdr.de>; Thu, 11 Jun 2020 11:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591866285;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Bva/De56IphKAbEQ1MxyVR3zhLX6D8T3+tggqAY/nx0=;
	b=Fn3x9ksW9jFC64GyiNnab7l/DzuGFawHsKRboASFQpforivqbfdnp9+IA0TDkSQQhP4YRB
	zw2Z8UU9Ov6M/Ifkh5sg+f4C3UJSSYhaH7BbScuSkLVS4+hyEFacCQB0HFrFTsjUWcmqjS
	RHDRu/QNc0OmJc8cBuZbb1leBKJE0yU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-168-2NGRv-8oP_Kl4MljEepT3A-1; Thu, 11 Jun 2020 05:04:43 -0400
X-MC-Unique: 2NGRv-8oP_Kl4MljEepT3A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E9992464;
	Thu, 11 Jun 2020 09:04:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0479B8FF7F;
	Thu, 11 Jun 2020 09:04:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7286EB34B9;
	Thu, 11 Jun 2020 09:04:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05B94NVp025421 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Jun 2020 05:04:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 162577D29F; Thu, 11 Jun 2020 09:04:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD5FAEE38C
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 09:04:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58936186E3A4
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 09:04:20 +0000 (UTC)
Received: from l2mail1.panix.com (l2mail1.panix.com [166.84.1.75]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-96-H2AaJYENPISZI7JrU-WdPA-1; Thu, 11 Jun 2020 05:04:17 -0400
X-MC-Unique: H2AaJYENPISZI7JrU-WdPA-1
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by l2mail1.panix.com (Postfix) with ESMTPS id 49jHYC57PCzDX2
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 04:47:27 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49jHYB4FZYzWCm
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 04:47:26 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49jHYB3K8mzcbc; Thu, 11 Jun 2020 04:47:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49jHYB2nGfzcbW
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 04:47:26 -0400 (EDT)
Date: Thu, 11 Jun 2020 04:47:26 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: New Mail Sound in Alpine?
In-Reply-To: <alpine.DEB.2.22.394.2006102118150.4085102@chime>
Message-ID: <alpine.NEB.2.21.2006110441490.7157@panix1.panix.com>
References: <alpine.DEB.2.22.394.2006102118150.4085102@chime>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have my sort order set to arrrival.  Yes, message numbering changes
but new messages come in as the lowest numbers.  There is a status beep
setting in alpine though I never researched what that did.  Maybe that
can be adjusted.  Shellworld had lots of spam, I tried helping members
of blind-l with it (ultimately filter by Message-ID and had my account
black listed by some Hungarian on shellworld.net so it couldn't be used
on the internet that one claiming I was an undesireable and that one
wrote about it on the internet.  The record of that one's writing is
likely still on the internet too.  Anyone wants to see it can search
jdashiel@shellworld.net.  That now is water over the dam.

On Wed, 10 Jun 2020, Linux for blind general discussion wrote:

> Date: Thu, 11 Jun 2020 00:30:32
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Blinux Discussion List <blinux-list@redhat.com>
> Subject: New Mail Sound in Alpine?
>
> Hi All: This is quite an anoying mystery. 2Weeks ago I switched my domain away
> from Shellworld infavor of FastMail. Things are going fairly well, not as much
> spam. On Shellworld, especially in pine, whenever new mail would arrive, my
> pc-speaker would beep. Here on my Dbian machine, now running Alpine, I am not
> receiving any beeping. Sure at any prompt my backSpace provides a beep, which
> I changed the frequency with a setterm command.
> So we are useing fetchmail to grab via imap from FastMail. I asked in
> comp.mail.pine and all he says, "its a terminal issue" I looked over the beep
> manual, nothing jumps out at me. Can any1 please inform why I am not getting a
> beep for new mail, or how to fixit? Yes, we have most of the settings similar
> to how they are on Shellworld.
> The hazzard in not hearing a beep or bell, while scrolling an index of
> messages, the numbering changes-and-it would be quite easy to accidently nuke
> a wrong message.
> I would actually prefer running pine verses alpine, but we cannot build 2005
> software. Thanks so much in advance for any-and-all guidance.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

