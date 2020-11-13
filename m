Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 28CE02B1E54
	for <lists+blinux-list@lfdr.de>; Fri, 13 Nov 2020 16:11:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605280270;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=t+t+x6N+6aTClxvDIbHvAyvA7ef973tG32cg8Id/jy0=;
	b=iE9cAhSbi1HAygJng7SFk6UFh9/Wkoa05DnpogoeKshXlPQfS3X+bi4sotzkOdlXtEDTcq
	YBSjDKmyUasZxI4V4eK0fSpw0y+F4GuJhcYofByHzaaA1/0mF8fj49TPXzihvYS/Ofuyel
	uUpZLAQvwpxPx/4thtMZL6awSPHABDk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-403-o2RIZwzWMli1jZb1J5K8rA-1; Fri, 13 Nov 2020 10:11:07 -0500
X-MC-Unique: o2RIZwzWMli1jZb1J5K8rA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B0A5805EFC;
	Fri, 13 Nov 2020 15:11:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C55461002C0C;
	Fri, 13 Nov 2020 15:10:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3AE175810D;
	Fri, 13 Nov 2020 15:10:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0ADFAhsu018295 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Nov 2020 10:10:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A1FA6215688E; Fri, 13 Nov 2020 15:10:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D0FF2156A54
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 15:10:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48EEE811E82
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 15:10:40 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-414-T0kINNlbMlKAACRdgD2hPw-1; Fri, 13 Nov 2020 10:10:37 -0500
X-MC-Unique: T0kINNlbMlKAACRdgD2hPw-1
Received: by mail-qt1-f180.google.com with SMTP id n63so6855497qte.4
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 07:10:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HC/4SMGHD75Zn4mjRE5FsR+ULgFWEqEMW6bm1r+Hr9M=;
	b=uSLAD3pR7IyzMXx5NBRVvKUE63IsdTc5UidBtKYvHMtzBQoLJhma0T8PP13Unlc30z
	umV/2Lr6GPiMVejRpHCvcmHEwQZRJNSdk/A5QVYSafc9Flm3S8Mu4WHCbSRxnuYP2dOQ
	D3YBMydnQF3m6ktUanEHMnZjXyGCQLgAaIa6ZCXKAMUNhpGGxusWDArwdJwSWagBKrap
	JttIQwFNkFLxCosU27WFSdrq/wMDiB3gIjOAkRJq4Qaaqa3yiNjS/MfC+rBDA+2K2EqY
	AIBjlS8SpBybEpdg6FAG6aWFMq8ROnUvF7Zg+IdvECZrsNZy6dKinDegbD7oeyDVI1dP
	Yjiw==
X-Gm-Message-State: AOAM530QAM2Y+fY0ksKtPVNJV0wKclmwBqG5QXwhd4cl2ZFezROYD8mR
	W/ocz7Z30YtffLJiQaj19YJGkf2BE/K5XhF4JrRz8LSr
X-Google-Smtp-Source: ABdhPJy6PBehF4Mb/mL1ol9Kde0SVnQAVT6mL6sUsLDTpyMzOKPvljS+7ZS9LUlX2dQ+Q/j1IWchQ+PaC/mFrHsLrS4=
X-Received: by 2002:ac8:5046:: with SMTP id h6mr2366776qtm.349.1605280235395; 
	Fri, 13 Nov 2020 07:10:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:a889:0:0:0:0:0 with HTTP; Fri, 13 Nov 2020 07:10:34
	-0800 (PST)
Date: Fri, 13 Nov 2020 15:10:34 +0000
Message-ID: <CAO2sX31vKWFMQmjUJqv7jSKqL+hqGB0T45-R8xMT42WiPHx_UA@mail.gmail.com>
Subject: Possibly Off-Topic: Earphone recommendations.
To: Linux for blind general discussion <blinux-list@redhat.com>,
	Orca List <orca-list@gnome.org>, raspberry-vi@freelists.org
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sorry if this qualifies as off-topic for any of the mailing lists I'm
sending it to, but I figure I'm not the only one on any of these lists
who wears earphones almost every waking moment and considers them one
of the most essential pieces of technology they use on a daily basis.

Anyways, as so often happens, frequent plugging and un plugging lead
to the wires on the plug of my Panasonic ear clips to fray to the
point one earpiece  is silent most of the time, and i have no spare
earphones, so I'm in the market for a new pair.

My initial thought is to just order a couple pairs of the same
Panasonic earclips I've been using for years. They're comfortable
enough for all day wear, have no sound quality issues I can detect,
are fairly inexpensive(~$12-15 on Amazon depending on color choice),
and I know what I'm going to get.

On the other hand, the Panasonics I've been using for the last 5 years
or so have always had an annoyingly short wire(I need to hike up my
pants for the wire to reach my portable media player in my pocket and
I more often than not have to use an extension cable with my desktop),
wrapping the wire around my neck when no plugged into anything is kind
of annoying, and they seem to be getting less durable(I've gone
through two pairs since last December, the three previous pairs each
averaged about a year-and-a-half based on my Amazon order history),
and it would be nice to be able to ditch the wire when it isn't
needed.

But it's nearly impossible to find wireless earphones that are ear
clip style, and even expanding to other form factors, it's hard to
find a pair with halfway decent battery life, for under $30, and I've
yet to find a pair that either had the option of using an aux cable
for connecting to devices without Bluetooth or a dongle you could just
plug into a 3.5mm jack, and best I can tell, Bluetooth adaptors aren't
all that affordable either.

So anyone have any recommendations for a good, inexpensive pair of
earphones that either has a long, rugged wire or which is wireless
with good battery life and a good solution for backwards compatibility
with wired-only audio sources? Preferably of the ear clip
style(regular earbuds are too insecure for my liking, earplug style
earbuds irritate my ear canals and leave me prone to ear infections, I
have big ears, so retro earmuff style headphones leave me with sore
cartilage after a few hours, and behind the head earphones sound like
they'd be uncomfortable with how much of my time is spent either
laying down with my head on a pillow, in a recliner with my had on the
headrest, or leaning against a wall.). And for wired solutions,
something with a built-in cord spool or recommendations for a third
part spool that could be added would be appreciated.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

