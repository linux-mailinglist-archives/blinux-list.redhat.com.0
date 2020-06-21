Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 8B06E202BB6
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jun 2020 19:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592759466;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FEJA7Ov/0gTsP4vzt/40V4ar6T+z0ahqEQCUk2zwJPM=;
	b=B3u+2V14XP8MrV8BS4qkxXG1GqSgd2xpEqP4Ab3Y8TpfxXHX01exKpkN5f5vXsv3eNUF+g
	h6BWFaAoA5on+82oDUdZzaFgwZwOJ69bNwV8rFg2Nhvb1etUw8CT+g+xN1osdAKqs59B2M
	RdSeZ4nXHfhyw8qMZZ8otBeemILDhmk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-134-21R3LIOoOY2VOspKTVwKQA-1; Sun, 21 Jun 2020 13:11:03 -0400
X-MC-Unique: 21R3LIOoOY2VOspKTVwKQA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EF300184D162;
	Sun, 21 Jun 2020 17:10:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E0DB7166C;
	Sun, 21 Jun 2020 17:10:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 21BF4833C8;
	Sun, 21 Jun 2020 17:10:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05LHAevl025508 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jun 2020 13:10:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C4471110F0B5; Sun, 21 Jun 2020 17:10:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF56F110F0B0
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 17:10:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 927C285A5A3
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 17:10:37 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-240-LGhsuFLZNLWRMDmo4N7HPw-1; Sun, 21 Jun 2020 13:10:33 -0400
X-MC-Unique: LGhsuFLZNLWRMDmo4N7HPw-1
Received: by mail-qk1-f177.google.com with SMTP id r22so12076566qke.13
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 10:10:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=OVOCvag3WbCnbguYJ2hrf3u0Y15b3QgGK5qq8ZVq3rQ=;
	b=VzxuCwJZ/Xr1qahRQq9HR4z1lmTWZrECBr7vC0akb1MBdaTHvG4wdLT5cQa9SrR2Bg
	KPAOhBlVHZN2ZzrLwACklDMInTal3ItuqrZ32SeV1KmpLm8EeekQkU/NI5tVeI2wFnGW
	GDWd1+rjmCshTBOYW1ao9V17CqkoI3Jn9o7O3+1AyEtXGpBfgAq0CdVhzOapWNl6z4eC
	PS9ui8vzvI5gik61+hdNjIQLoHWwJgzE99srhYrrI44DZuB3sgOOHJ+OJgl0nSauYE4t
	9ct/39eMT9aO6qa9OObq4Z2m9JLeoGL+vustRPoXcuOYuG8t1r4s/eM+2SV5W/3AFVcJ
	2lig==
X-Gm-Message-State: AOAM5300BtN9c+IFNEA8up7eG91D7Ywni4dC2k6e7PUOPGLi2Gjf6sO6
	I77/3jxigvFLELiQHY0fKH1Be59kQOKbvrWW+9t/rd1J
X-Google-Smtp-Source: ABdhPJy0BFqmJpR8HaVBo++wCvXA66h3wcoa+bGZMTwhGY+Ys5ElzuytzXvCyvt5jlnJRLH/1Mp47l+RV7lVNe9NbOU=
X-Received: by 2002:a05:620a:142a:: with SMTP id
	k10mr12287086qkj.182.1592759432248; 
	Sun, 21 Jun 2020 10:10:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Sun, 21 Jun 2020 10:10:31
	-0700 (PDT)
In-Reply-To: <CABKqQvEyRFTSLg_38LtPaoUXgiz7Y8vsnM_d3No3fmQ2AmFEmw@mail.gmail.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<CABKqQvEyRFTSLg_38LtPaoUXgiz7Y8vsnM_d3No3fmQ2AmFEmw@mail.gmail.com>
Date: Sun, 21 Jun 2020 17:10:31 +0000
Message-ID: <CAO2sX30dXF-K0QJERmggECQwPgzk5i5HNWGxp+KnuPQyKPi=yg@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yeah, I might could live with only 3 USB-A ports and having to use an
external optical drive, but the MeerKat refusing to boot without a
mouse and monitor would be an absolute deal breaker... also, I heard
mention of HDMI when I checked out it's product page at System 76, but
no mention of 3.5mm audio jacks, which sadly one can no longer take
for granted will be found on new machines.

Realistically, I'll probably stick with my 2011 HP until the
motherboard dies and then panic due to lack of funds to replace it,
but even if there's no practical way of making it battery powered, the
MeerKat's size is appealing to me for two reasons:

1. If I had the MeerKat has my primary workstation, it would be
trivial to pack it up and take it with me if I ever have to travel.

2. The room that currently doubles as my bedroom and home office is
quite small, trading out my full-sized desktop for something like the
MeerKat would free up a not insignificant amount of space.

That said, it feels like there really isn't anything out there that
isn't either crippled by high price, restrictive hardware, or the lack
of a internal battery.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

