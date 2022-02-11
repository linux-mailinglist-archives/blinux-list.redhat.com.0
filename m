Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD2F4B268F
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 13:58:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644584285;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WXcCtAyWRuDWcln60fNRBz0tFKk7qVwcFwHi9a0kDps=;
	b=V52lMK7gmZQNNJhYBWOGdxETNjvUUjX0wq0BD78yZI3yxXUovrf1dGSFglnyWdYYBfk9Ka
	2RDC3EKrb/ghNxF3T1PfePS62EdovMDeQGOf5/sXUAkArCZ3mn9BQCUoyf8692px3EjNqL
	M7WuPdE0SqojswNJq4JqXskT0Qr2OLM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-608-aOADw3DkPTu1dAToaFgI2g-1; Fri, 11 Feb 2022 07:58:01 -0500
X-MC-Unique: aOADw3DkPTu1dAToaFgI2g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E857F10B744C;
	Fri, 11 Feb 2022 12:57:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 150336FB08;
	Fri, 11 Feb 2022 12:57:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AF9014BB7B;
	Fri, 11 Feb 2022 12:57:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BCtpJE011044 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 07:55:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A55BDC080BD; Fri, 11 Feb 2022 12:55:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A1A47C080BA
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 12:55:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80C1D1C07831
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 12:55:51 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-78-lxMq2-R2NHaOOufR62CwHA-1; Fri, 11 Feb 2022 07:55:49 -0500
X-MC-Unique: lxMq2-R2NHaOOufR62CwHA-1
Received: from [192.168.116.128] (unknown [176.230.59.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 2111D3944129
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 12:55:48 +0000 (UTC)
Date: Fri, 11 Feb 2022 14:55:41 +0200 (IST)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Coqui TTS has blew my mind!
In-Reply-To: <Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
Message-ID: <alpine.DEB.2.11.2202111433530.1181@debian.work>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Thu, 10 Feb 2022, Linux for blind general discussion wrote:

> ..which makes stating that these are accessible incorrect.

Whether we like it or not, anyone who still uses Lynx at all, which 
includes me, has to realise that some things will not work without some 
poking about, and some things can not be made to work at all.

We can no longer *expect* even the most usable of websites to work with 
Lynx, as much as we might want to.  The world has moved on, and anyone who 
continues to use Lynx has to realise that they are using a browser that 
lacks some HTML features and the limits that come with that.

I think a good argument could be mounted for supporting the audio tag in 
Lynx, as it doesn't require any kind of Javascript support.  Someone would 
have to opena feature request for this.

Having said all this, it's pretty trivial to get the URLs for the samples 
from the source of the page, which is what I did.  Here they are:

Basic Samples

https://erogol.github.io/ddc-samples/wavs/s1.wav
https://erogol.github.io/ddc-samples/wavs/s2.wav
https://erogol.github.io/ddc-samples/wavs/s3.wav
https://erogol.github.io/ddc-samples/wavs/s4.wav
https://erogol.github.io/ddc-samples/wavs/s5.wav
https://erogol.github.io/ddc-samples/wavs/s6.wav

Hard Utterances

https://erogol.github.io/ddc-samples/wavs/hs1.wav
https://erogol.github.io/ddc-samples/wavs/hs2.wav
https://erogol.github.io/ddc-samples/wavs/hs3.wav

Long Utterances

https://erogol.github.io/ddc-samples/wavs/ls1.wav
https://erogol.github.io/ddc-samples/wavs/ls2.wav

YouTube link: https://www.youtube.com/embed/ADnBCz0Wd1U

Personally, I don't see the point of the Hard Utterances.  These are 
sentences strung together without any punctuation, the kind of thing that 
you normally wouldn't expect to come across and which one wouldn't expect 
a TTS to deal with gracefully anyway.

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

