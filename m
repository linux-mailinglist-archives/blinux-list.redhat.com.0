Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B72464B28DE
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 16:14:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644592459;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=X3c7UseFPDvetw/qo1L69f3/WRQmZDACTCtTH7cG2Sc=;
	b=iuV4+M66DIpLBCCx2DgL1VO29azsxRLiy+CE8MaljV+Ov/plLbLKitwlT0qBNJ32MXhCeH
	rykp7AuJ3c9Wbut9mdHKvuxUz3aHU131l5AKsMtXE/w6gh2CSC1IDcy3otC4V+BuwbrhmV
	g8wefLaMEFq+du+gQqUUJQ/yj3fWWzY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-201-703xPFYdPteIaeDl4RPbUA-1; Fri, 11 Feb 2022 10:14:18 -0500
X-MC-Unique: 703xPFYdPteIaeDl4RPbUA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E894B1091DA0;
	Fri, 11 Feb 2022 15:14:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7586A8379F;
	Fri, 11 Feb 2022 15:14:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A3AF34BB7B;
	Fri, 11 Feb 2022 15:14:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BFCoGq027235 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 10:12:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9E08740FF69F; Fri, 11 Feb 2022 15:12:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 99F2340FF694
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 15:12:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 772053C00111
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 15:12:50 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-610-jMnf5xVLOhOGJiNIM0piNg-1; Fri, 11 Feb 2022 10:12:47 -0500
X-MC-Unique: jMnf5xVLOhOGJiNIM0piNg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 3176A6201A4; Fri, 11 Feb 2022 15:12:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 2DF85620102
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 10:12:45 -0500 (EST)
Date: Fri, 11 Feb 2022 10:12:45 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Coqui TTS has blew my mind!
In-Reply-To: <alpine.DEB.2.11.2202111433530.1181@debian.work>
Message-ID: <Pine.LNX.4.64.2202111007260.688488@server2.shellworld.net>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<alpine.DEB.2.11.2202111433530.1181@debian.work>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

We are Talking about Linux, the ability of both command line users and gui 
ones  to  use the system equally.
Lynx is not the only command line browser,  both Links as in chain, and 
e-links which should be getting update attention provide choices.
That being said, not sure what world you speak of, as  more than a few 
computer magazines speak highly of turning off JavaScript, and the New 
York Times recommends Lynx for individuals who cannot afford, or wish to 
reduce their  data and graphics usage.
I can respect  your choice to decide a tool does not work for you, but do 
not project your choices on to others.



On Fri, 11 Feb 2022, Linux for blind general discussion wrote:

> On Thu, 10 Feb 2022, Linux for blind general discussion wrote:
>
>>  ..which makes stating that these are accessible incorrect.
>
> Whether we like it or not, anyone who still uses Lynx at all, which includes 
> me, has to realise that some things will not work without some poking about, 
> and some things can not be made to work at all.
>
> We can no longer *expect* even the most usable of websites to work with Lynx, 
> as much as we might want to.  The world has moved on, and anyone who 
> continues to use Lynx has to realise that they are using a browser that lacks 
> some HTML features and the limits that come with that.
>
> I think a good argument could be mounted for supporting the audio tag in 
> Lynx, as it doesn't require any kind of Javascript support.  Someone would 
> have to opena feature request for this.
>
> Having said all this, it's pretty trivial to get the URLs for the samples 
> from the source of the page, which is what I did.  Here they are:
>
> Basic Samples
>
> https: //erogol.github.io/ddc-samples/wavs/s1.wav
> https: //erogol.github.io/ddc-samples/wavs/s2.wav
> https: //erogol.github.io/ddc-samples/wavs/s3.wav
> https: //erogol.github.io/ddc-samples/wavs/s4.wav
> https: //erogol.github.io/ddc-samples/wavs/s5.wav
> https: //erogol.github.io/ddc-samples/wavs/s6.wav
>
> Hard Utterances
>
> https: //erogol.github.io/ddc-samples/wavs/hs1.wav
> https: //erogol.github.io/ddc-samples/wavs/hs2.wav
> https: //erogol.github.io/ddc-samples/wavs/hs3.wav
>
> Long Utterances
>
> https: //erogol.github.io/ddc-samples/wavs/ls1.wav
> https: //erogol.github.io/ddc-samples/wavs/ls2.wav
>
> YouTube link: https://www.youtube.com/embed/ADnBCz0Wd1U
>
> Personally, I don't see the point of the Hard Utterances.  These are 
> sentences strung together without any punctuation, the kind of thing that you 
> normally wouldn't expect to come across and which one wouldn't expect a TTS 
> to deal with gracefully anyway.
>
> HTH,
> Geoff.
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

