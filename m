Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6294527CE
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 03:42:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637030541;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eBA09BxLkQzznVQhq8Kl9hhUXMYGieFwyBgNhfBTc04=;
	b=MJFQwrPZopUy1x4nxQa88/jkI9v0d1t66EUY7V0TAKZniz69z/kVyX1ocrs1r7TSVmJsF8
	3fjCnH2cRBwsjb1MzeDHl5cI4egu9sawuxtSkNNsf8yh+2R2UvWUySQ+tvlCglyiFL+1ZQ
	NuR++aQZEVWYoBXKyZ99aQ+9LP4YlfQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-7-Dy13v7tvPQyMWaO6NfWMjw-1; Mon, 15 Nov 2021 21:42:19 -0500
X-MC-Unique: Dy13v7tvPQyMWaO6NfWMjw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 932CF804141;
	Tue, 16 Nov 2021 02:42:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D66691973B;
	Tue, 16 Nov 2021 02:42:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A79B94A703;
	Tue, 16 Nov 2021 02:42:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AG2Zt1k011825 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 21:35:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2E08140CFD10; Tue, 16 Nov 2021 02:35:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2933C40CFD07
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 02:35:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 104B78027FB
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 02:35:55 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-262-dD73tiWcNCuRY_F0_-1AGQ-1; Mon, 15 Nov 2021 21:35:53 -0500
X-MC-Unique: dD73tiWcNCuRY_F0_-1AGQ-1
Received: by mail-qt1-f177.google.com with SMTP id l8so17608912qtk.6
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:35:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=dNlu5BJ24UTqSRP8gVRVSys5uLjo5wBvALxOFTO8W1Y=;
	b=jaYcILctOCCn0TequbSDMY5qxpj3Ykc3YQmrJQivE91LxfJsfAcCFr5twUSG0DvcPR
	CyqOKDQifJV4x1caJ5z4uXODBpYuh18qkauD+kx2iauBA9Tlrw2CxOTR05r+3JVEXpkS
	mYCixp6OgFJyfVph/uapd3FC1Dbs7WoIRIA4Yc167/VaPftW5vBo4kv5hX2VjoWgAfad
	mPhFk+O6nRrlooJyzGUVehpNvdIJyED5igT5kAiB2w63BIdcxOQF8A7D2Np0EgUdnCvK
	JpYoKlJ63LwuSDHDOK62pxPfYMZdCLE7KG6wQZmtxmMJ1QoyQ8ofqo5pAhFEd3ymPNx+
	aSxQ==
X-Gm-Message-State: AOAM532PSJnanBC2oLhuAk7vKKmQHPFej9InbQww3fNPvqs4AESOnl5r
	OOuk9rhBuWjS58QnMTf/607u6tIXTfnYjpCeZtX7lljF
X-Google-Smtp-Source: ABdhPJwXveStmRTSICsc1lgKkg9eqdX3+ZS1zIQyLWGb7wD+7NrUl85JR4kpS8gHCuqb75Vmx7uJXoyq13R+2HeVgp4=
X-Received: by 2002:a05:622a:1043:: with SMTP id
	f3mr3900741qte.233.1637030152391; 
	Mon, 15 Nov 2021 18:35:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Mon, 15 Nov 2021 18:35:52
	-0800 (PST)
In-Reply-To: <c47476b7-2ed-6af8-cb96-74bdec59bf28@hubert-humphrey.com>
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
	<6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
	<66025fed-5adb-a007-f70f-34c710e7e07b@gmail.com>
	<c47476b7-2ed-6af8-cb96-74bdec59bf28@hubert-humphrey.com>
Date: Tue, 16 Nov 2021 02:35:52 +0000
Message-ID: <CAO2sX32cn5X3LF417uoS6iJwek=Eo69o1HpiigAEsagC4sdVZA@mail.gmail.com>
Subject: Re: Gui vs. cli software
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, there is Micro, which is suppose to be nano, but with
desktop-like key bindings... though I confess, despite easily shifting
between editing text files in nano and editing multi-line text boxes
in Firefox, Micro just felt wrong and I uninstalled it within minutes
of first trying it... It would be nice if nano had hold shift and use
arrows/navigation buttons to select text, but I'm otherwise used to
it's peculiarities... and if anything, I wish more applications had
the ability to cut the entire current line from anywhere in the line
and repeated cuts adding to the buffer... and when typing in very wide
text boxes in Firefox, I sometimes instinctively try trl+J to wrap the
current paragraph to 80 character lines as I find overly long lines
slow down review and editing of what I have typed, especially when
listening to long lines I fixed something at the end of or fixing
mistakes in the middle of the line. I'm also annoyed that Firefox
doesn't automatically have a blank line at the bottom of multi-line
text boxes when nano offers such functionality... but again, I've been
using nano as my primary editor for about 9 or 10 years now, and if
I'm honest, even I found some of it's commands odd at first.

As for e-mail and VOIP... to be completely honest, every e-mail client
sounds needlessly complicated compared to just logging into my
e-mail's web interface in a web browser, and every VOIP client sounds
needlessly complicated compared to just making a phone call. Granted,
I was using e-mail for years before I got my first PC that was mine
and mine alone, even the GUI e-mail clients of the late 90s and early
00s probably hadn't streamlined things as much as their modern
counterparts, and when using a computer where the only user account is
shared by the whole family or potentially the rest of your school's
student body, clearing cookies is probably simpler than wiping an
applications config directory, especially in Win9x or WinXP where I
don't think it was nearly as simple as rm -Rf ~/.thunderbird. Plus
e-mail clients are sort of a "why install another app that only does
one thing I can already do with this app that does many things?" in my
mind... Also, I'm not sure I've ever actually used VOIP, so their
might be some non-intuitive advantage over a normal phone call I'm
unaware of.

But to each their own, and whether you're a die hard fan of the
console, a Desktop user who finds a terminal window scary, or use a
mix of the two, I don't think any of us have to worry about our
preferred way of doing things going anywhere anytime soon. The GUI and
the Cli have co-existed in Linux land for more than 20 years and
there's no rational reason to think that will change in the
foreseeable future.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

