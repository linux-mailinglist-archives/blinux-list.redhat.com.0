Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1695669EE38
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 06:15:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677042914;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=4DMhPE2c2wsVFEWEUrDamMZXZtkaiPzWqNjP9I5hLW0=;
	b=Bw1uXW0YNgpCBJMnbPzJg2O3iGtegyK+rKp6gd5PV/IfOapTRZLjJulht+zYuMIsztk2oD
	d/hGErYqAUAgHFiuZQ0AFbkcSQ9if+JJIRPk1c9TKFDXh7u4vTpTsshKnHIeOkRwjR4EG2
	O6AYvBzybI+ALJw2rFj1wtV8PdFhdnc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-484-m7Qs6d8hPHerOPPAZH_LSA-1; Wed, 22 Feb 2023 00:15:11 -0500
X-MC-Unique: m7Qs6d8hPHerOPPAZH_LSA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B13929AA3B6;
	Wed, 22 Feb 2023 05:15:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 15887404CD84;
	Wed, 22 Feb 2023 05:15:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CB6E819465B1;
	Wed, 22 Feb 2023 05:15:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 00:15:00 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [DECtalk] Report of a successful use of dectalk with graphical
 Linux. (fwd)
MIME-Version: 1.0
Message-ID: <mailman.887.1677042909.686535.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/Mixed; BOUNDARY="===============4907413144404075827=="

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--===============4907413144404075827==
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed

Here you  go Kyle.
Karen



---------- Forwarded message ----------
Date: Tue, 21 Feb 2023 23:27:09 -0500
From: Josh Kennedy <joshknnd1982@gmail.com>
Reply-To: DECtalk <dectalk@bluegrasspals.com>
To: DECtalk <dectalk@bluegrasspals.com>
Subject: Re: [DECtalk] Report of a successful use of dectalk with graphical
     Linux.

Well why not just go on to its GitHub page and remove all the licenses and
just replace them with the general public license?

On Tue, Feb 21, 2023, 23:17 Karen Lewellen <klewellen@shellworld.net> wrote:

> Hi members,
> Sharing this post from the blind Linux users group.  Hope it generates a
> smile.
>
>
>
> ---------- Forwarded message ----------
> Date: Tue, 21 Feb 2023 22:59:35 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: What a find! DECTalk!
>
> I'm happy to be in the fediverse right now. Looking through my timeline, I
> just
> found a link to a Github repository that has DECTalk source code,
> apparently
> released by some of the original DECTalk developers.
>
> https://github.com/dectalk/dectalk
>
> The LICENSE file still has scary words like "proprietary" and
> "confidential"
> and "all rights reserved," but the source builds and works. I have it
> working
> in speech-dispatcher with Orca as I write this.
>
>
> Note that this is the DECTalk software version 4.x, the one that sounds
> just
> like the DECTalk Express from the 1990's, so anyone who needs hardware
> speech
> should feel right at home with this. No, this is not the 5.x DECTalk that
> really sounds like crap. Have fun and enjoy, and I do hope they fix this
> license soon. It would be good to have another truly free speech
> synthesizer to
> play with, and this is definitely a huge step in that direction.
>
> ~ Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Dectalk mailing list
> Dectalk@bluegrasspals.com
> https://bluegrasspals.com/mailman/listinfo/dectalk
>
--===============4907413144404075827==
Content-Type: TEXT/PLAIN; CHARSET=us-ascii
Content-ID: <Pine.LNX.4.64.2302220013431.359629@users.shellworld.net>
Content-Description: 
Content-Disposition: INLINE

_______________________________________________
Dectalk mailing list
Dectalk@bluegrasspals.com
https://bluegrasspals.com/mailman/listinfo/dectalk

--===============4907413144404075827==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--===============4907413144404075827==--

