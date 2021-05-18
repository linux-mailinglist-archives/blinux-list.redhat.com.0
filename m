Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 24670387E7F
	for <lists+blinux-list@lfdr.de>; Tue, 18 May 2021 19:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621359281;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qldUclqyiXEhMI+nhb5K6obNjiD7j6C3SW1pAlf3jl4=;
	b=hlRSPoH0di3mCLZjO7m2nFFvcKp9HOM2FIjizX1YsZfpocQLb/xijTEDzv8wshQyV0oq8i
	hYPPexGlZYMOiNdpcpQGmVcgT2v1qec2ED3H3IIJnaBFjYQIg5SifSnxqJwfF5JhctPgre
	CAqr3mH1v0t2sCA52/9A4W4R2FgZCWs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-216-RdDDShwQNhO121JgUWZCGg-1; Tue, 18 May 2021 13:34:34 -0400
X-MC-Unique: RdDDShwQNhO121JgUWZCGg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 52842107ACC7;
	Tue, 18 May 2021 17:34:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04FE35C1A1;
	Tue, 18 May 2021 17:34:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1C4601801028;
	Tue, 18 May 2021 17:34:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14IHYL4O006762 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 13:34:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DA861202699A; Tue, 18 May 2021 17:34:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D4C192086CFC
	for <blinux-list@redhat.com>; Tue, 18 May 2021 17:34:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 84DA080122D
	for <blinux-list@redhat.com>; Tue, 18 May 2021 17:34:18 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-151-EIH-jMvpNt2fgE4p9s_PMA-1; Tue, 18 May 2021 13:34:16 -0400
X-MC-Unique: EIH-jMvpNt2fgE4p9s_PMA-1
Received: by mail-qk1-f177.google.com with SMTP id f18so10071666qko.7
	for <blinux-list@redhat.com>; Tue, 18 May 2021 10:34:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=CD+Of+RCPq8LzRNmOZ2eR+mzeE/tMYM9e2VSlegIThk=;
	b=KzdZ8uNDRkwZBVREnPH301LJfxYhfptLt4m6EqW726eC3xjH572TWuIKDfXKjSH/sc
	b+jd3t0zjw0uQfWEpiu2YdGn0m+L/d/Kw2UYpHJVEurS2QDmGzoEWQgpN0cp0usLDTEq
	eSYECssNp6DwY2Rx6CNkE2YWarVYw+Nb+zv4ASfTmO90rKwPg830UuCXXfNhfhGB98ji
	rcQ17Bf8sD6JKCjO0HUDMYOdQXwr1ebqyt88lBiuOefrYwWIzYL2+Jxd59M+CD9CyS8U
	QE4Gs0E6z18FLx3h1YNS2JzHl0mOjBUq7KHHlZ//JdwWhkjO3tmsgW5hXJe97qf2iRh1
	AtHA==
X-Gm-Message-State: AOAM532JM7Q9IKGjUWSeU3zw0Eyi9oaZR15XnY4BjIgmIQY/rlE7/Cfs
	k2q97HBEmCZfP8dQSP1YtjsRiHn+XdlYfVYW
X-Google-Smtp-Source: ABdhPJwM8NrwXvZfUKVfBhrg3m7esDYepLOsH7DSFf/ZcMwZfg8osX0mqIyEnpv10+flj1apTPkUFQ==
X-Received: by 2002:a05:620a:941:: with SMTP id
	w1mr3904509qkw.337.1621359255422; 
	Tue, 18 May 2021 10:34:15 -0700 (PDT)
Received: from darkstar.example.slint ([2601:192:4c80:3c00::adea])
	by smtp.gmail.com with ESMTPSA id
	h12sm13205955qkj.52.2021.05.18.10.34.14 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 18 May 2021 10:34:14 -0700 (PDT)
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
Message-ID: <693e6b62-9c98-4814-07ca-6f7ce8ab7d40@gmail.com>
Date: Tue, 18 May 2021 13:34:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBsaWtlIHBpZGdpbiBtZXNzZW5nZXIgZm9yIGlyYy7CoCBPbmNlIHBpZGdpbiBpc8KgIGluc3Rh
bGxlZCwgb3BlbiBpdCBhbmQgCmFkZCBhbiBhY2NvdW50LsKgIFdoZW4gYXNrZWQgZm9yIGFjY291
bnQgdHlwZSwgc2VsZWN0ICdpcmMnLsKgIFlvdSdsbCBiZSAKYXNrZWQgZm9yIHRoZSBhZGRyZXNz
IG9mIGEgc2VydmVyLCBkZXBlbmRpbmcgb24gaG93IHBpZGdpbiBpcyAKY29uZmlndXJlZCwgeW91
J2xsIGhhdmUgJ2lyYy5mcmVlbm9kZS5uZXQnIHByZS1maWxsZWQuwqAgSWYgdGhhdCdzIHdoYXQg
CnlvdSB3YW50LCBnbyBhaGVhZCBhbmQgYWNjZXB0IGl0LiBZb3UnbGwgaGF2ZSBhIG1lc3NhZ2Ug
YWJvdXQgY29ubmVjdGVkIAp0byB0aGUgc2VydmVyLsKgIEluIHlvdXIgYnVkZHkgbGlzdCwgZG8g
J2N0cmwrYycsIHlvdSdsbCBiZSBhc2tlZCB0byBqb2luIAphIGNoYXQuIHR5cGUgdGhlIG5hbWUg
b2YgdGhlIGNoYW5uZWwuwqAgVGhlIGNoYXQgbWVzc2FnZXMgd2l0aCBzdGFydCAKY29taW5nIGlu
IGFuZCBiZWluZyByZWFkIGJ5IG9yY2EuwqAgWW91IGNhbiB1c2UgJ29yY2ErZjEgdGhyb3VnaCBv
cmNhK2Y5IAp0byByZWFkIHByZXZpb3VzLCBuZXh0LXRvIHByZXZpb3VzLCBldGMuLi4KCgoKSFRI
LAoKCgpEYXZlwqAgSC4KCgoKT24gNS8xOC8yMSAyOjU3IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IE15IHF1ZXN0aW9uIG5vdyBpcywgYW5kIHRoaXMnbGwg
YmUgZHVtLCB3aGF0IGFyZSByZWNvbW1lbmRlZCBJUkMgCj4gY2xpZW50cz8gaG93IGRvIEkgZ2V0
IHRoZW0gd29ya2luZz8gd2hhdCBzaG91bGQgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

