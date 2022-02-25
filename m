Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 885424C4550
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 14:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645794489;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fRxjcjQV569DO/RmT2Zr8jUjM4CBJez6YGMv+d76BGQ=;
	b=Do5tH7tf8ukivQTRac9E/IjOAsKFRnmj3k1p8Y5V1I5kQRd+tC84VxZgp6aT+HQGmMPRnD
	FjXK8CJ7E3PBC6jAaEaOXCJg2ebx0sEHrIwKiRCfOmGiDJPuUJB94zEHW5g3OrnusiQKqj
	62xoZ3ANhAgNl0MW6mUO1emkbjtplkM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-170-WjSVmyMWPa21B5X0mGp0ng-1; Fri, 25 Feb 2022 08:08:08 -0500
X-MC-Unique: WjSVmyMWPa21B5X0mGp0ng-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 60DB51091DA0;
	Fri, 25 Feb 2022 13:08:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 335B883298;
	Fri, 25 Feb 2022 13:08:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E82201809C98;
	Fri, 25 Feb 2022 13:08:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PD81vT014575 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 08:08:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 55E6B401E55; Fri, 25 Feb 2022 13:08:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 51A51401E4F
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 13:08:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 39341800960
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 13:08:01 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-148-cZoEnCt6P8qpRnwuKKgVqQ-1; Fri, 25 Feb 2022 08:07:59 -0500
X-MC-Unique: cZoEnCt6P8qpRnwuKKgVqQ-1
Received: by mail-oi1-f173.google.com with SMTP id j24so7282396oii.11
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 05:07:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:content-language
	:thread-index;
	bh=9dGMqAGzWJfhVi6kUWnsPx13QSkzIenWCn9dBpWciKs=;
	b=siILeG+M7eVR+MsJcKky/7K/mMFMiSq+VrRkyw0SdmEuDfuzspX+dkEs7JDSUzTToa
	WHiJk1cexinS3eISNhkYXPcTBp+2+Y0VAMVGVsA6eP2sIxj0BfWPQyuE84I9llgp7sjH
	p8wuznYXubQpnEjHYVaHasG1NHTzCTRuM8Rab+GTSY2pu5USl5KEJlcoxK8/J6k7UhxR
	QcJqfh220IiFKeZ9PDpgQqM8TJ8Ac6Af2B+1S6ec5MJ+khXrdXWJQ54+XXWA2Gy5f/N2
	IuEGQfJMzNoQOE4k/dVHCh8VRjfpmfUxt8v0oAMTYvWDQh1oBaOhEa6K6YzQlV8JTLVJ
	2jAA==
X-Gm-Message-State: AOAM531P//4/K+MvGmWEJY8Jmy9LdWhMFHwJUq3C2+mEcN9KtbDI23aj
	1Jh5tv43e2YLMGYCs40KVPqR2FcLHkqS/g==
X-Google-Smtp-Source: ABdhPJwh1MIuK90y/vRbJ3B9K/acpJvaVhhR+agDAyHJ0hG/QR95JRmcHHqDaYitZbkjgcnI/W/o+A==
X-Received: by 2002:a05:6808:1485:b0:2d5:1d96:f059 with SMTP id
	e5-20020a056808148500b002d51d96f059mr1457042oiw.151.1645794478356;
	Fri, 25 Feb 2022 05:07:58 -0800 (PST)
Received: from woodchips
	(2603-8080-1705-f197-41ed-5ecc-2a7e-7eb7.res6.spectrum.com.
	[2603:8080:1705:f197:41ed:5ecc:2a7e:7eb7])
	by smtp.gmail.com with ESMTPSA id
	w15-20020a9d70cf000000b005ad26785e7dsm1047451otj.57.2022.02.25.05.07.57
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 25 Feb 2022 05:07:57 -0800 (PST)
To: <blinux-list@redhat.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
In-Reply-To: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
Subject: RE: Voting: Which game would you like to have on Linux?
Date: Fri, 25 Feb 2022 07:07:57 -0600
Message-ID: <034a01d82a48$b6039690$220ac3b0$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQEt2HNpUbYO9KOrF/NfUKRla3CKXq343/hA
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sudoku is my vote.

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Friday, February 25, 2022 7:04 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Voting: Which game would you like to have on Linux?

Hello list,

right now, I'm developing a version of my RTK library for Linux.

RTK is basically a set of various functions, which should significantly
easen up my future work.

And in order to test it before using it in serious projects, I decided to
build few "minigames", as:

a. I need to get a better grip of packaging for Linux and

b. We currently lack a lot of these.


I already have AudioGo, a blind accessible version of the ancient Chinese
board game, in a pretty finished state.


The question is, what logical minigame would you like to see next?

The choices I'm considering right now are:


* Minishogi

* Arimaa

* Othello

* Connect four

* 2048

* Sudoku

* Minesweeper

* Wordle perhaps? I didn't check yet whether the official version is
accessible or not.


If any of these games already has an open-source accessible Linux native
version, please let me know, I'm not aware of it.


Also, if you have suggestions for other interesting games I might have
forgotten, feel free to suggest.

Just note, that the suggestion should:

a. Be simple to fulfill, these are projects just to test out a library, not
long-term projects. Generally, all I expect of these games is to be able to
launch, start a new game, save a game progress and exit, plus some basic
settings. Nothing more, may be I'll add a game export option to the board
games, but that's all.


b. Should be a logical game. I.E. one where you use your logics to win.
The reason for this is in the first place my personal preference, but also
the fact that Quentin Playroom already covers many card games and similar
stuff, so they don't need an immediate addressing.


Final note, if you don't know some of the games mentioned in the voting
list, please, I would greatly appreciate if you took the time and checked
out at least their basic description and rules.

Linux itself is among the less recognized desktop operating systems compared
to the mainstream, and yet, many of us on this list simply love it.

So, why not to give a chance to a game you might not have known, but that
can turn out to be really interesting?


Thanks!


Best regards


Rastislav




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

