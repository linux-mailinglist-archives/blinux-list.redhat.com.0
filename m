Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 71E033CC075
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 03:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626484511;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=z0dSbkvX9epgRTUDmTbi0aNXsjQ/HP/I2JcqDIfwYP0=;
	b=LfM71jgtt6Z+jQWkGmA+6wdHGeyyny6tYPfVDIlSLW1hhDMFw1gVick4X5LLx361kuo6uO
	mQgnAWzSOgRae5gPALPhfJ6/FbA/w82MsJEngrkSp/VBuNeZ1HGi/WsWf6uirs8XsO1jk0
	zAByditKn1TNBnfM5wpE+Z3+agc9PiU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-asMVYfSrOxCmD8pvhbA6lA-1; Fri, 16 Jul 2021 21:15:09 -0400
X-MC-Unique: asMVYfSrOxCmD8pvhbA6lA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74DF6804148;
	Sat, 17 Jul 2021 01:15:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29F2A5DA2D;
	Sat, 17 Jul 2021 01:15:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C19634EA2F;
	Sat, 17 Jul 2021 01:15:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16H1Ejhj015801 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 21:14:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E5CA8114D0A; Sat, 17 Jul 2021 01:14:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E046B115DE2
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 01:14:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5FA23801E6D
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 01:14:42 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-173-ykHw8BouN6qJK2mZCgfLVQ-1; Fri, 16 Jul 2021 21:14:40 -0400
X-MC-Unique: ykHw8BouN6qJK2mZCgfLVQ-1
Received: by mail-qk1-f173.google.com with SMTP id 77so10543030qkk.11
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 18:14:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=oxNw7oVASM4rb8hjP2lowJQ567ftGSB01IbXlbONgeU=;
	b=atkFlvLxc4L4OcSH3K9n75JLUwtxhYMkA2QFNtvSqt9FB/f/Txb57jb/LA2Ij8klKC
	jS5IjXK/694Umdgqo8dRteQePBiu4M7oBpR1n4eJ95dCpxFtHNARyNoYOd6A6JxCJEtM
	S5Q2dGYz/FveIfHOOXLxVgBzLC2VHD7X0+Z+sirnW1p5TMgz/lPKMS17m15CKyVQnYe3
	C7CWw2vp7jnYFkwJZvTmra3SBVdzzyzGi2CUd9Keh2mB0AuS48WKBh7g7wQtjsSZ0iUj
	5OmOdBTPFQk+HQ+kMMRw8796FqeLXbniSO7sxMkhwqO2BtY4PUWhmzRZRFBUQ/X9SanU
	nmVw==
X-Gm-Message-State: AOAM530Xh7Lq9vjCwDU+L6L8/j5FfXO0NQt9Cs/OOBs9DvNKQKStIJAl
	0KuawiBLrY2owJ+N4DjfQzzMlTW6hRs=
X-Google-Smtp-Source: ABdhPJwAqh87Jlxecx3L331PLoXoa88FQGhxOM4Y3emkqwtCIwTLSQMQs6JiO99jTcwrYZK69VebWg==
X-Received: by 2002:a37:9b44:: with SMTP id d65mr3828139qke.71.1626484479432; 
	Fri, 16 Jul 2021 18:14:39 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	i21sm3834797qti.45.2021.07.16.18.14.38 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 16 Jul 2021 18:14:39 -0700 (PDT)
Subject: Re: Fedora pros and cons
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
	<CAGJxbF6PEh1_SoHaoUTfgSvOHJZ=+5j3bm1jYGxLPfQKx-QA6A@mail.gmail.com>
	<alpine.NEB.2.23.451.2107161924380.11557@panix1.panix.com>
	<6C5267F8-9939-4327-ABB8-759DC75D37EF@gmail.com>
	<16a5758e-184d-1a83-60df-83e9b75095c1@gmail.com>
	<71fec14a-4782-77b2-7e6c-354065ebf6d1@hubert-humphrey.com>
	<D464B3F2-1585-4785-83D4-73E995D97527@gmail.com>
	<538acdb6-a9d-76a-ebf3-34b16773294e@hubert-humphrey.com>
Message-ID: <eefa3664-8c37-e99b-203b-92119f466772@gmail.com>
Date: Fri, 16 Jul 2021 21:14:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <538acdb6-a9d-76a-ebf3-34b16773294e@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The double voice issue is a problem caused by the alsa front-end plugin 
called dmix. It doesn't seem to start late or anything, but it seems to 
somewhat slow down the audio input before sending it to the output 
device. Well, that's the best way I can describe it, as it starts out 
responsive enough, but if you try to interrupt one sound to play 
another, similar to the way your arrows interrupt speaking the previous 
line to speak the new current line, the new line will talk over the old 
one, because the latency increases the longer the first line speaks. It 
can talk over itself for half a second or more. I have never noticed 
this problem with any other simultaneous stream mixing system, only dmix.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

