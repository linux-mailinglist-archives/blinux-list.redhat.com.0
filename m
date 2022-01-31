Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5EB4A4F64
	for <lists+blinux-list@lfdr.de>; Mon, 31 Jan 2022 20:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643657083;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tBz+kzcf2HHPg5JNTPvL0W7R/wZYblZe1/dLzBIla04=;
	b=TaYR3XYKUJWOideJ1q6WvopDbnepsoIAWy8FFxe23PlXkUsaOgn8cqNx+xm9UT/xdpu39n
	N6Hb2qbKN3egIDK6ESo4614zsKTFAjOPyTjxi4CPzyavubLPBbxIStSM3SaGxf3cl7w3TG
	Q+oDnS1w32M86RBqCrJ/iWX8xb3HQtQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-126-gifczzZ-N8-5xGW9XiWIAw-1; Mon, 31 Jan 2022 14:24:39 -0500
X-MC-Unique: gifczzZ-N8-5xGW9XiWIAw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EAA26190A7A0;
	Mon, 31 Jan 2022 19:24:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1587A60BF1;
	Mon, 31 Jan 2022 19:24:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6AF0018095C9;
	Mon, 31 Jan 2022 19:24:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20VJOIWY027043 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 31 Jan 2022 14:24:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 79065401E3B; Mon, 31 Jan 2022 19:24:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7553A401E36
	for <blinux-list@redhat.com>; Mon, 31 Jan 2022 19:24:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5C6A5811E76
	for <blinux-list@redhat.com>; Mon, 31 Jan 2022 19:24:18 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-464-i3zJK2pyPlmdKJL4tPNEVQ-1; Mon, 31 Jan 2022 14:24:16 -0500
X-MC-Unique: i3zJK2pyPlmdKJL4tPNEVQ-1
Received: by mail-qk1-f171.google.com with SMTP id o12so13050777qke.5
	for <blinux-list@redhat.com>; Mon, 31 Jan 2022 11:24:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=wDXrVNjqCkBdbkEHgkkTN7Amre2enx/i9FdX/hd0w6c=;
	b=xFU0WhDaiQREhKpHeTdJaVfFGUkyNh06Weo7oBBcOTYOh1gPZjdMwIB5EyxzW74zqD
	fNhOEzkC4o6NJDpW2SgM48GzeiLhQti69jKvSFYXDE+6gO0mRkZSit3THBnNNgaLTPMO
	glXtClMvYMZRndZGtmNiw6jWqh9yBtTF2AwB6k8nPHubDTCJYYJhlYxf1dGURBAVFe6Y
	ruxhn2hJXiZUOWjYDOSmsPsDnnZ0URNEBDRRfrIEK5oj7vNwCXsymyLoSyIQJcVUqU7a
	WM/nG5WOGGrv+BWJmLuPiEwQnyenfkWLwOGM2dDjn7RD/bqFlxhHfPUInc0RwziLd6M6
	LDjw==
X-Gm-Message-State: AOAM532bRRmSLCox7D/d03X0qqNFl2+DzKKyxWzBAs/gETvjA+ZgEB2j
	0tp+hbs/85xy+bdHA/unvTr8lDTA1IA=
X-Google-Smtp-Source: ABdhPJwPR8kaXhyXLepRJPwQLztCHH34fEwve+21M5oFTHip+sS7nkTR3cGTR0TkfTgthU3EpFcP8g==
X-Received: by 2002:a05:620a:c4d:: with SMTP id
	u13mr14365000qki.29.1643657055785; 
	Mon, 31 Jan 2022 11:24:15 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420:f018:e9bc:4386:2a8a?
	([2601:192:4c80:1420:f018:e9bc:4386:2a8a])
	by smtp.gmail.com with ESMTPSA id
	i13sm9743896qko.91.2022.01.31.11.24.15 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 31 Jan 2022 11:24:15 -0800 (PST)
Message-ID: <a72b9aea-29ee-bfe5-f6cf-05bd96c45ecb@gmail.com>
Date: Mon, 31 Jan 2022 14:24:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Icedove/91.5.0
Subject: Re: Alpine and speakup
To: blinux-list@redhat.com
References: <cb563c0d-ddb1-b617-72ee-4ca580878cd8@gmail.com>
In-Reply-To: <cb563c0d-ddb1-b617-72ee-4ca580878cd8@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgoKSW4gQWxwaW5lJ3MgY29uZmlndXJhdGlvbiB0b29sLCB0aGVyZSBpcyBhbiBvcHRpb24g
Y2FsbGVkCidzaG93LWN1cnNvcicuwqAgT25jZSB0aGlzIG9wdGlvbiBpcyBzZWxlY3RlZCwgQWxw
aW5lIHdpbGwgcHV0IGEgY3Vyc29yCmluIHRoYXQgc3BlYWt1cCBjYW4gdHJhY2suwqAgU2luY2Ug
eW91IHdvbid0IGJlIGFibGUgdG8gbmF2aWdhdGUgdGhlCmNvbmZpZ3VyYXRvciB3aXRob3V0IGN1
cnNvciBiZWluZyBvbiwgeW91IGNhbiBnbyBhbmQgZG8gJ2N0cmwrdycsIGFuZApsb29rIGZvciAn
Y3Vyc29yJy7CoAoKCgpIVEgsCgoKCkRhdmUKCgoKCk9uIDEvMzEvMjIgMTI6MjksIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSSBvcGVuZWQgdGhlIHRoaW5nLCBh
bmQgY2Fubm90IHNlZW0gdG8gbmF2aWdhdGUgdGhyZXcgaXQgd2l0aCBzcGVha3VwLgo+IEkga25v
dyBzcGVha3VwIGNhbiBkbyBpdCwgSSd2ZSBzcG9rZW4gdG8gb3RoZXJzIHRoYXQgZG8gaXQsIGhv
dyB0aG91Z2guCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

