Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D40284B29F8
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 17:17:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644596247;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f5i9ZB5afgswv1ymwQctfVdGU9OM0fLiOrs81t9lcGQ=;
	b=WzYga2VnHlOGLQNFVRVcxHI2ZqMmZhBiOYrV5iKSCxCUf/ntcu/+6lldnx0oyYnSgH2zsL
	YECE9Zb5Q0X6CNP+3xHeht4p9L2b9RfKs8kMQeUyeXL42drjK1BLK2S9Rr9Gc2OOMsGrtV
	V6JuHUPCKz8Ry3GeuaAv9kTge2Itff8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-592-erP1gowzMrGM7bx82I7AqQ-1; Fri, 11 Feb 2022 11:17:24 -0500
X-MC-Unique: erP1gowzMrGM7bx82I7AqQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C175190D34E;
	Fri, 11 Feb 2022 16:17:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A01072BE58;
	Fri, 11 Feb 2022 16:17:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2EE834BB7B;
	Fri, 11 Feb 2022 16:17:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BGH120000411 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 11:17:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 264BC1120AB7; Fri, 11 Feb 2022 16:17:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 222DD112131B
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 16:16:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AAACB85A5BC
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 16:16:57 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-647-E9pAMC6QMVaRvmORKeIMMw-1; Fri, 11 Feb 2022 11:16:56 -0500
X-MC-Unique: E9pAMC6QMVaRvmORKeIMMw-1
Received: by mail-qv1-f41.google.com with SMTP id v10so8936389qvk.7
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 08:16:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=XXwZ3BIrksTj4l9nXnfoXyqAmjPttar7iVS8/5cgSVc=;
	b=rnHrQp1Ijl8TtfCMnO7/MB7Fa++Ue+SahtMASIKVuulkS8uJck5K+QZ8K3fxRfu7If
	uDWs+7UrOJ25oiqT+NXUuiA/Xegrpa0byh4gTFXgTE1xTDrCz7D8Ecl24CgvlYir/dKf
	Irc6+mUr+8JosSfcw4c3gts3yFOTtHz237qJboDSn86EFl342IVj6ytKDNI8y40C65Bv
	Vb83FsLJ53BDu/VQxOzD7oTY8FeXwyaa1NUNccyHR5a6TsopDy2eZ0mg/wg/czlryQ7/
	OoN0uvtlWdYh6ri58Buq56wRctO8xZ4lSo/tzWCLAAzJjStbkRxXr2u6etscAUAsNNaO
	rBhg==
X-Gm-Message-State: AOAM533JQGpy2BKLtVmZ0BVG3PRh6VQTpYOgJk1LiVKWOAvbR+YjAhgE
	yyy9dRumi6oRghf4c76qHuz+Gq3H8oNItr286Pk+hyyQ
X-Google-Smtp-Source: ABdhPJxQTG7oLzrA5MR9mqnYzPWNvBRpnmFnh50gqf3UrZ29ULAagRGZmexi2jgs7m/XCXZcctJ1ZOHPeB4rFrsmEVQ=
X-Received: by 2002:a05:6214:519b:: with SMTP id
	kl27mr1617007qvb.72.1644596215448; 
	Fri, 11 Feb 2022 08:16:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:d06:0:0:0:0 with HTTP; Fri, 11 Feb 2022 08:16:54
	-0800 (PST)
In-Reply-To: <Pine.LNX.4.64.2202111007260.688488@server2.shellworld.net>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<alpine.DEB.2.11.2202111433530.1181@debian.work>
	<Pine.LNX.4.64.2202111007260.688488@server2.shellworld.net>
Date: Fri, 11 Feb 2022 16:16:54 +0000
Message-ID: <CAO2sX31a_VCbGYZ5kqF7eGzYqGE9kJgit+2BWj-z1-X0Sz391A@mail.gmail.com>
Subject: Re: Coqui TTS has blew my mind!
To: blinux-list@redhat.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Honestly, I wish I could go into about:config, set javascript:enable
to false and be done with it. Sadly, there are times it feels like
every so called professional doing web design is under the impression
that if they aren't loading the websites they're making with tons of
unneeded JavaScript, they're doing something wrong, and for every
website that works better with JavaScript disabled, there's a website
that's either rendered useless or throws a "Please enable JavaScript"
message and won't even let you try to use it without JavaScript.

I feel like a disturbing number of web designers need an entire
semester of remediation on the KISS principle and should be forced to
do their testing without a mouse in the building... but at the same
time, I feel like the creation of a text-only browser that is fully
modern, has keybindings that aren't completely alien to those who grew
up with graphical browsers, and has Orca-like navigational hotkeys is
long overdue, and I'm not convinced any of the well-known text
browsers hit even one of those... though I'd love to be proven wrong.
A keyboard command to toggle things like JavaScript, Cookies, HTML5,
etc. on the current page/in the current tab and a permissions menu for
more granular control of such and designating exceptions to the global
settings as temporary or permanent would be nice too, but I can live
with something less convenient considering I've never found a Firefox
add-on that improves over setting cookies to "block all third party
cookies" and occasionally cleaning out the junk websites like to set
just for visiting and I never found a usable replacement for NoScript
classic after Firefox went quantum, broke all old extensions and found
the Quantum version of NoScript unusable.

Anyways, perhaps the discussion about how many web designers like to
abuse rich web content and how all the text-only web browsers seem to
be stuck in the past and how unlikely it seems for either to make any
effort to cross the divide should be made a separate thread and we can
get back to talking about the latest developments in TTS.

Anyways, has anyone figured out how to get a pip3 install tts to work
on systems running Python 3.9(the issue I've run into) or 3.10(what a
few others have reported)? or know of a way to install it via Apt
without bothering with Pip? I've been content with espeak/espeak-ng as
my daily runner for both Orca and SBL for the entire time I've been
reliant on a screen reader, but I'm curious to try out new TTS and
hear if anyone has managed to make natural sounding voices that don't
have an uncanny valley quality to them.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

