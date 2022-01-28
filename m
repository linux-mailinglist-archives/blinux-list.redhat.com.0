Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A71E14A00A2
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 20:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643396854;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+H/wvHZ+8cRvTHUc8j+ytXohfvAgf3S+iNRg2sG4dic=;
	b=EN5vR72BM4FJVoEFJoQDbB8/XknzGkhn0MpDvIgcjyoG9h1KfITpG8Gwvm+r4v2MwlYifl
	NofyHzPjpJfRZrQ9bmcSO9zfTkU8C1I0ad+K5qK80iKO+DT1AMkh5BvG6SsO6wTfKrdB3y
	BSPRiavTn55CklZSeUJi1O1pdhsfMF8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-595-NS1K6hxUPrmX9CRgCUTfkA-1; Fri, 28 Jan 2022 14:07:31 -0500
X-MC-Unique: NS1K6hxUPrmX9CRgCUTfkA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBFDD51084;
	Fri, 28 Jan 2022 19:07:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 576085F4E0;
	Fri, 28 Jan 2022 19:07:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BFD8A4BB7C;
	Fri, 28 Jan 2022 19:07:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20SJ7JXI007388 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Jan 2022 14:07:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AF3504021BB; Fri, 28 Jan 2022 19:07:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABA484021B8
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 19:07:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F0793C12BE9
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 19:07:19 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-538-vrjxCguzO52zc97teG02uw-1; Fri, 28 Jan 2022 14:07:17 -0500
X-MC-Unique: vrjxCguzO52zc97teG02uw-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx104
	[212.227.17.174]) with ESMTPSA (Nemesis) id 1MGQnF-1n1dKi3ztF-00GqFQ
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 20:02:14 +0100
Message-ID: <20220128.190302.486.6@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: Converting text to mp3
Date: Fri, 28 Jan 2022 13:03:02 -0600
MIME-Version: 1.0
In-Reply-To: <3e8211d3-4699-6948-93d9-559a36927ed7@googlemail.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<3e8211d3-4699-6948-93d9-559a36927ed7@googlemail.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Provags-ID: V03:K1:GvcOau3RCetcNjRf2vvkIrx0n89Zl6RCuvt21QUVWFDgzFi9kzE
	RgjB/wWUHVzyPgmAovQH6n8IW6nEdpPG6GcAftLazW7ZRBxcDVxui/1T+iBOZbBADUtYGJh
	GGLdIcJ7QRUDU0DeTEByrB0XsJ9Qx6tNVot6PFZRXXpCbkP6pWijNSrtBbMav9p9rJclAnF
	DFQvU6I4mZdXldyeAZMXw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:M4uvXaDDzY8=:lTrIxfo6WliChMW7d7Oxn2
	7gd+xTUJFrFoOGXJmVdk6g7RO0NX1UjDecgp0bf4NPkKBagpuCzVceEbcmLWnOfnKIO0Qk84T
	4C21WsEZ4cK3V+lZKZfSqGdEOK42RnXxN5I8i2QfCZ81UgP8LYz2rUdusXWxUzgDyKJ6JcW+3
	JYLVtFed9C0wDX1xYf+I40/RNtVdbCJfDRH59sWjO5cksawefjSiTJdY24Q2n5hwL7YFUIcIj
	jUAiYeUvt8i2QKkRYC3Ctw3W3RzoKhi1KpcFuDED8h6mycbKIx0xAAM5MWHf5I4/c0gdZ7bOw
	8fkBNHX6OOQROgmrqacMDkzpftj0K2ngelTwammsp+FKDMiLqHcgEpLWSK+22AdJzn509YAgq
	tqDzbRHPxlSdfU4fPn1xQrODt0upBj1PWo+qy+/vYON8lIyyptCa3tlhDapp+NtthO0lUi84F
	ltTJxtV1F+CFd4732yAsMorvJa6Y0Hh5zNYHboKhLcEe0lOUM/OlnOlhBp47Pj23VAw3PXz6O
	NxNx0HLng/yuEjnabm7RY1L//byXMNSUuBkK4FpYm/Nzd9K9m0sFip2XgQvlYKCjpGxQACNHC
	vOnOi1osScTax0el9b9DrnYH73XYRepCY9pCw2Ex6B87NtLp8tcjVtPxgz1alPeJTpxwfcahF
	ffk7wH5AoRVtYWH5prR9tQlyX3YfuARxUvamiYV4qDwiElBhlMrYFDuONdt47sLzhCrYr6pxI
	UUUW5e3PX9RjDAV/AfcX7BaYeBiseQE7UUNrVgCxg4w5UY5pD5BZGSnjJNYUVTCtE5Pph0D8L
	tZa+8JwXeXix9oRxe56CKlocqMCraUUqcx/7BABapK/F+KwUjjJmpKa/vTDXQdDJ/WOYOFNqe
	bnv3qCxeRdQWWXHAtX8DY5eJoVEtKFwOmyW5ldho41Q8rGJIrxzn0HBtO2Z4RL0bTAZYVrUHK
	VOuFHeQ/K7DDAxP8PrjAlC+yyIlCMLqZbqKEgzI/ETar0QmVkbbzgc35HbnXwzn720Ym+g6v7
	zJ0eLhbbmy1V5YdK/htuVGJJbrdHtvwzGFJYfuM5ZSPoAfxCEX9yD8fa6i5fpHlD+LLiANKKX
	WrGhtqxMLNlI0s=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20SJ7JXI007388
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

the say command in the voxin package has a wave option.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Fri, 28 Jan 2022 19:39:09 +0100
Subject: Re: Converting text to mp3

> Hello,
> is there a way to use Voxin for that, too?
> Greetings,
> Wolfram
>
> Am 26.01.22 um 18:21 schrieb Linux for blind general discussion:
> > # convert text file to wave
> > espeak -f file.txt -w file.wav
> > #then convert wave file to mp3
> > lame -m s file.wav -o file.mp3
> >
> > On Wed, Jan 26, 2022 at 05:49:18PM +0100, Linux for blind general discussion wrote:
> >> Hello,
> >>
> >> is some way to convert text file to mp3 files and option length of them? In
> >> Vinux I had Audiobook-converter. But it's not in repositories of Ubuntu.
> >>
> >> Thanks a lot and take care.
> >>
> >> Best regards
> >>
> >> Vojta.
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
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

