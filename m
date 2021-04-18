Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id ACC6F363758
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 21:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618774807;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f/v9R4zkYvox30pfElHcw/fQGoMwm1O0O5nLhgBM5oA=;
	b=TAKl5WKM7RvN+uyynbcLvQ0sU/DGE5LuQm4NmHfpIAp80Smu0Pb1NwwB1XzbKaQml07i2c
	hGqDm9LuClgtV5Y7MxSq2+MWJb5NeptLXIswrwDSiSzod6kZ9xErC8jU/MFRxxoUpAoOuo
	WXaFZmNJBB6FiKEnJQ0okfEVE3x2Tgg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-315-obwP6tT_MmqL4BzSxBDXFw-1; Sun, 18 Apr 2021 15:40:05 -0400
X-MC-Unique: obwP6tT_MmqL4BzSxBDXFw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6EB9C87A826;
	Sun, 18 Apr 2021 19:40:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 510615D9CD;
	Sun, 18 Apr 2021 19:39:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C190D1806D17;
	Sun, 18 Apr 2021 19:39:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13IJddur025227 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Apr 2021 15:39:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0F9E3206354F; Sun, 18 Apr 2021 19:39:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A41A206354E
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 19:39:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 40EEE185A7A5
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 19:39:36 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-64-m70v-0scM8OzDNMMlPWKIg-1; Sun, 18 Apr 2021 15:39:33 -0400
X-MC-Unique: m70v-0scM8OzDNMMlPWKIg-1
Received: by mail-qt1-f178.google.com with SMTP id 18so11254510qtz.6
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 12:39:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=ujRLDsBPcJfuhG0d9Dpjg3umc8bRAPbvv1KkORDWL94=;
	b=CMss2JAky6sdxCoGgZ3S7rLxUVcVeM+Pp6+K69XYSTJVilhmMra+5ATLNFRTrj1HqP
	zaO89xgzmqn+hS06MI6ESADyl7rBCSHf2tJbyBX7Oe/c9MsnIK5uYAGZ7sulmqzNgC8z
	yhhtm6RtWXBEl1dnABT/8JcdaZD0JKiOye9L2tJalSRwRMIOZRJ0KW/D9TN71CWyFbWq
	dM35WqFvQW7cqGQqSaAAit0uHnn92QkpURa7iGaDS22Pwy/cP21Kp9apIz5mmT5oLsFa
	ReyOq144CDMB1cFRguXVjJHtlZn6MXOmXIeVIHwlRrzawAr/WwQpJXrxqynpDpmRTY81
	kOvw==
X-Gm-Message-State: AOAM533n/s1P39y8GOsIw0LeLaA2Mbx0uJ3BSQKtElEcmDzuEFrwgzBO
	OdYAg0US3KJOebfbfFNOIvqPmuB0OLhppx2KZfI3BM2psa4=
X-Google-Smtp-Source: ABdhPJxeb/Tru+r03CdUAw9Jxz6AH+J5rJ5dZlqJ1HRFcIYD1VcnqNgc+UqWfZ2/xYH0UBXSXoA5k/bTpqPfy7CMnLs=
X-Received: by 2002:ac8:730a:: with SMTP id x10mr7569864qto.136.1618774773275; 
	Sun, 18 Apr 2021 12:39:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:eb4e:0:0:0:0:0 with HTTP; Sun, 18 Apr 2021 12:39:32
	-0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.2104181405130.2670718@server2.shellworld.net>
References: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
	<161870350119.8.17896736538043458897.5969450@slmail.me>
	<CAO2sX33vz_y4yBAAy7JDdv5PWmRoS_QvTXxV+ghoWpyuhuRSig@mail.gmail.com>
	<20210418.010302.720.1@0.0.0.0>
	<Pine.LNX.4.64.2104180111320.2518410@server2.shellworld.net>
	<alpine.NEB.2.23.451.2104180158400.20962@panix1.panix.com>
	<Pine.LNX.4.64.2104181405130.2670718@server2.shellworld.net>
Date: Sun, 18 Apr 2021 19:39:32 +0000
Message-ID: <CAO2sX33i4FtA2dRQeyPzPSgnwoJukix0pExPj2kRVBG1ztuKMA@mail.gmail.com>
Subject: Re: Formatting - was Would you be interested in having natural
	sounding TTS voices by Readspeaker on Linux? demo link included
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I had always assumed early speech synthesizers where obviously
non-human because the technology simply didn't exist to make more
human sounding voices viable...

As for responsiveness, I think there are two different things being
conflated here. It is indeed erroneous to equate TTS with the frontend
tool using it, whether that frontend is a screen reader, a mechanical
voicebox for the mute, or what have you, and yes, the screen reader,
if that's what's using the TTS should be controlling most of what the
TTS is doing, but it's important that the TTS be able to render speech
quickly enough that the screen reader can actually use it.

A TTS that can take an eBook as input and spit out an audiobook
indistinguishable from one recorded by a professional reader in a
sound booth would be great for generating audiobooks even if it took
twice as long to render the audio as to play it back, but it would be
kind of lousy to use with a screen reader if it took 5 seconds to
speak everytime Orca sent it a sentence to speak. I could be wrong,
but I suspect this is the kind of thing whoever originally asked about
responsiveness was talking about.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

