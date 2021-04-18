Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E0DC53632E6
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 03:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618707836;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PGpV84Ipvt4JRjhI5UL7octYFK9uuyonW5KkfQTMTLA=;
	b=EXjGLwrnq7Le/Ove986Mugz9z9JlrMjN9/cYHa8KWHy3bfbeP5Gw84exFM+p5xPDd+Ad32
	tYBPn9FlAu8VMJhPc1x8HUxlmHphcQTrVuCM0FeR5IDFAoiGgPY0T0z6X604/S6LdOFdQd
	juqOkAG4UsGWxRyFQYZDGD0jzSKePy0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-167-xECInc1qN8G5p6kge00xfw-1; Sat, 17 Apr 2021 21:03:53 -0400
X-MC-Unique: xECInc1qN8G5p6kge00xfw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB7E2107ACE4;
	Sun, 18 Apr 2021 01:03:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4549B60875;
	Sun, 18 Apr 2021 01:03:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 829CB44A5E;
	Sun, 18 Apr 2021 01:03:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I13dD3006332 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 21:03:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 703231111A41; Sun, 18 Apr 2021 01:03:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BDDC1111A40
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 01:03:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D10B1185A7A7
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 01:03:36 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-86-A5leEIhdPsKfBW-hYp6RVQ-1; Sat, 17 Apr 2021 21:03:33 -0400
X-MC-Unique: A5leEIhdPsKfBW-hYp6RVQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4FNBXN0QPMz8tyF
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 01:03:32 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id thZOISufyZNK for <blinux-list@redhat.com>;
	Sun, 18 Apr 2021 01:03:31 +0000 (UTC)
Received: from [0.0.0.0] (184-169-119-73-dynamic.midco.net [184.169.119.73])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4FNBXL6nbvz8tyD
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 01:03:30 +0000 (UTC)
Message-ID: <20210418.010302.720.1@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Re: Formatting - was Would you be interested in having natural
	sounding TTS voices by Readspeaker on Linux? demo link included
Date: Sat, 17 Apr 2021 20:03:02 -0500
MIME-Version: 1.0
In-Reply-To: <CAO2sX33vz_y4yBAAy7JDdv5PWmRoS_QvTXxV+ghoWpyuhuRSig@mail.gmail.com>
References: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
	<161870350119.8.17896736538043458897.5969450@slmail.me>
	<CAO2sX33vz_y4yBAAy7JDdv5PWmRoS_QvTXxV+ghoWpyuhuRSig@mail.gmail.com>
User-Agent: POP Peeper Pro (5.1.1.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13I13dD3006332
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The problem is that all the so called human voices are spliced together syllables and word fragments taped together. So you get emphasis on the wrong parts of the sentences, pauses in the wrong place, and stuff like that. If they would devote more machine learning time into proper text to speech rendering instead of sensorship and other nonsense, we might get somewhere.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sun, 18 Apr 2021 00:42:25 +0000
Subject: Re: Formatting - was Would you be interested in having natural sounding TTS voices by Readspeaker on Linux? demo link included

> Don't get me wrong, more natural sounding TTS with proper inflection
> would be great, and for me, the holy grail would be TTS capable of
> reading a digitized novel in real-time or reading subtitles on foreign
> media in real-time and be indistinguishable from a human cast
> recording a audio dramatization or dubbed vocal track... but unless
> there's been massive improvements in recent years I'm unaware of, the
> natural voices are at that point where they almost sound human but
> fail in a subtle but unsettling way that's hard to qualify, and until
> we get over that hurdle, I'll take the obviously robotic monotone over
> the almost, but not quite, passes for a human reader voices for daily
> work.
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

