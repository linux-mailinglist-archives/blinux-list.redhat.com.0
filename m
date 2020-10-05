Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9E69F28375F
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 16:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601907058;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=F1qFeU3mJjS5G8yLmTI04Y4JwIz5itISGrqRws8pjlM=;
	b=dw4M28wOGm7KC0q6meXnePcKTfVwOW0FRdl+ScoGFTlAsv6VlYa1mKHwXXLQjYuJwzZGHb
	ln6LOf5S9vroJt8EjUlnrFFhceLDkDJyF1UcnxXyVreeLHCdVuhU20OLVpmp2UHKjw/FSL
	+22vCFNhDvmFWDiMKF01eD+qrHEeweQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-559-59Qn0th-P8y5qH4u5lvsXA-1; Mon, 05 Oct 2020 10:10:56 -0400
X-MC-Unique: 59Qn0th-P8y5qH4u5lvsXA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26FF918A8220;
	Mon,  5 Oct 2020 14:10:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A79CF78805;
	Mon,  5 Oct 2020 14:10:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3D6AA44A5E;
	Mon,  5 Oct 2020 14:10:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 095EAh2o016109 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Oct 2020 10:10:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 233F42166B28; Mon,  5 Oct 2020 14:10:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E49E2157F25
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 14:10:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C91D804C9D
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 14:10:37 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-592-6lXiGKBhOhSvwDxoZdWJaw-1; Mon, 05 Oct 2020 10:10:35 -0400
X-MC-Unique: 6lXiGKBhOhSvwDxoZdWJaw-1
Received: by mail-qv1-f46.google.com with SMTP id q10so6017064qvs.1
	for <blinux-list@redhat.com>; Mon, 05 Oct 2020 07:10:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=+uenipk+S0xJpNY2acmHgQKTHuzBs9NxKmDuCsLP0Kw=;
	b=aPtohk+V2XCaOBKksPEPbZvznHjoUcfvOtnvMEVdewOYTwKgO4f8nd5rCHtMT20fxn
	K0R3fDxh23j47k2HuzfVB0fGj7is7oXP1ZJO2pAEOAD/XF5se0gfXHYHffnR7GgOnejs
	gU5zgbYaBg/DnxOBP6bGzMiU8Mx5j3qM5no+ozkI5DeCitYUX9up3YNQmrU52XyzRqeI
	Ia3ZYcTtIFzAKCmMdaMXpqBJwNKPu+zj+ud5fpg8TI6Ctn5LM6p8CxySgsag19HLWVqJ
	L8tHydtx6noS6B8poxXIV4IEWQtsPGA5xaQxlEN2B/iqRPz1+DaWCxf4nmQbDyx/czzY
	vBxQ==
X-Gm-Message-State: AOAM5318cRL/B/h8ruT1cXHYVHKLnV3YmnNjMucqsuEbayha367a7d9G
	8DXSp+CowwphW0gfbjXWMmeidujgFLGMUItPiNUTgUmo32w=
X-Google-Smtp-Source: ABdhPJz6PvFMqp4WcUUPsmbpaKVAa1sQAgQXnNzJHAADErN5BPBs8V/27jIi2BHVAmUtT529A9mUsBeom6vip5VfMFw=
X-Received: by 2002:a0c:8406:: with SMTP id l6mr6709862qva.23.1601907034922;
	Mon, 05 Oct 2020 07:10:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:cd91:0:0:0:0:0 with HTTP;
	Mon, 5 Oct 2020 07:10:34 -0700 (PDT)
In-Reply-To: <alpine.NEB.2.23.451.2010050902450.22871@panix1.panix.com>
References: <A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B.ref@yahoo.com>
	<A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B@yahoo.com>
	<001801d69b0a$f4c7ee90$de57cbb0$@gmail.com>
	<alpine.NEB.2.23.451.2010050902450.22871@panix1.panix.com>
Date: Mon, 5 Oct 2020 14:10:34 +0000
Message-ID: <CAO2sX30JVeJvOmNvasyHw_SymZy+aHG51SEurM7G461Fn+0mQw@mail.gmail.com>
Subject: Re: Does anyone have a guide to the E speak screen reader?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Honestly, I can't blame the OP for getting the name wrong, there are
quite a number of packages that work together with rather confusing
names.

That said, he's a break down for the OP:

1. speakup is a kernel module that provides screenreader
functionality, but which is rather useless on its own.
2. espeak is one of several text-to-speech engines available for
Linux. Technically deprecated and superceded by espeak-ng, but not
quite everything that uses it has migrated yet.
3. espeakup serves as a bridge between speakup and espeak, allowing
the former to use the latter to actually synthesize what it's reading.

All three combined form what is probably  the most widely used
accessibility stack on talking, command-line only Linux systems, but
are far from the only option available. Unfortunately, because of
their similar names, people frequently refer to the whole stack by one
of it's components or get the names of different components mixed up
and even I sometimes get confused as to whether a poster is talking
about the stack as a whole, one of its components, or which component
they're talking about.

To add to the confusion, there's also speechd-up, which serves a
similar purpose to espeakup, but bridges speakup to speech-dispatcher,
itself a bridge that provides a consistent interface between screen
readers and speech synths, and there's piespeakup, a fork of espeakup
written for the Raspberry Pi to get around some bugs in the Pi's sound
system.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

