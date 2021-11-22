Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EF34E459293
	for <lists+blinux-list@lfdr.de>; Mon, 22 Nov 2021 17:01:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637596899;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l3uTaLKVskw1+/iE70SVuf5qlxwwQDjwAZOGp1e6E3o=;
	b=aj8mkbo5ZlqQbcequ0Sm6CuqkDgUH8Hi16CpTDlIjT9Nh3kwvdJQZNYR1WNdak1lV0O07Z
	/+4lNBdU3/CS14/IBLhMu7DpVfqBSYH2DjeodlYy5MDHfSZHN7svH/OGxrjYc+ovMHaISb
	cQQvJbsf3+yy8vfuPkDLiHGFQQIeGGk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-331-1kCzl7ziNRiwoxaCsTPtBQ-1; Mon, 22 Nov 2021 11:01:37 -0500
X-MC-Unique: 1kCzl7ziNRiwoxaCsTPtBQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0AF6B8066EC;
	Mon, 22 Nov 2021 16:01:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6440A1981F;
	Mon, 22 Nov 2021 16:01:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 329EC4EA37;
	Mon, 22 Nov 2021 16:01:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AMG1N6C023008 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Nov 2021 11:01:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4206D2026D69; Mon, 22 Nov 2021 16:01:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D3162026D67
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 16:01:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4EADC1066566
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 16:01:20 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-491-3y7hWfTnMiWyAzuePXa6Bg-1; Mon, 22 Nov 2021 11:01:04 -0500
X-MC-Unique: 3y7hWfTnMiWyAzuePXa6Bg-1
Received: by mail-qk1-f176.google.com with SMTP id b67so5196754qkg.6
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 08:01:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=J5G7+w4e/dv+KR1F2QpNf7VavSsmxinVszLXROGCrLQ=;
	b=cKo5jy2g5rU6b0MbewgIJUkBQnBUhTfq7mem8i1eKf9gDeTv6JZjHE0utGObOip6Qr
	vVMz8jdvv3Cj7hV10RVUrNJqwDDNusyljG7JdSRVmN7xPwIdoSBwMWgUZCwLQaAPUkg3
	rbFsw6ULL/YBkt80L1UmnStHqSBuw7+tAyr3ODjofcLUH3KHoEF50pJq99u5oBMAda5s
	u8C6L2EbzM8ytq+fm6AsKNaCXUA4+A5tFxo/g5v0YfekP9UBMkDz22XYhu/TMGFt7QFb
	HRNNRS7BjdJaS3Ulo33pKELbGsY5t+FAItW0UVLkwbnXy/lnjefb4dvSSFj7kG+5dYJA
	vyOw==
X-Gm-Message-State: AOAM533VB6fspKN+dRXp6j7BOyD99r1HfdUyCsDFe20lJVIhMGWU8lV5
	Pqfc/rbjnD6ke7irqJj+gzVLQ0OcXsJ+1g==
X-Google-Smtp-Source: ABdhPJwagOODEIPPweVEoUkI0gPKLJ718HvZ4V+hXCOFQxJu/UZB4LErMWT9Ezxe7HGEEkkKLQrMXg==
X-Received: by 2002:a05:620a:14a3:: with SMTP id
	x3mr49683284qkj.286.1637596863665; 
	Mon, 22 Nov 2021 08:01:03 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id
	ay36sm4809831qkb.60.2021.11.22.08.01.02 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 22 Nov 2021 08:01:03 -0800 (PST)
Message-ID: <5624e9f4-ea3b-1ff1-6925-d15de76e97f0@gmail.com>
Date: Mon, 22 Nov 2021 11:01:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
In-Reply-To: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSSB0aGluayB5b3UncmUgdXNpbmcgTWF0ZSBkZXNrdG9wP8KgIFRoZXJlIGlzIGFuIGF2
YWlsYWJsZSB3ZWF0aGVyIAphcHBsZXQuwqAgVG8gYWRkIGl0IHRvIHlvdXIgcGFuZWwsIHVzZSAn
Y3RybCtmMTAsIGFueXdoZXJlIG9uIHRoZSBwYW5lbCwgCmFuZCBjaG9vc2UgImFkZCB0byBwYW5l
bCIuwqAgU2VhcmNoIHRoZSBtZW51IGFuZCBzZWxlY3QgV2VhdGhlci7CoCBPbmNlIAp0aGF0J3Mg
dG9uZSwgZG8gYSByaWdodC1jbGljayBvbiB0aGUgcGFuZWwgYXBwbGV0LCBhbmQgc2V0IGl0cyAK
cHJlZmVyZW5jZXMuIENpdHkgaXMgcHJvYmFibHkgdGhlIG9uZSB5b3UncmUgbW9zdCBpbnRlcmVz
dGVkIGluLsKgIElmIHlvdSAKd2FudCB0byB0cmFjayB0aGUgd2VhdGhlciBpbiBtdWx0aXBsZSBj
aXRpZXMsIGp1c3QgYWRkIG1vcmUgd2VhdGhlciAKYXBwbGV0cywgYW5kIHNldCBlYWNoIG9uZSBm
b3IgYSBkaWZmZXJlbnQgY2l0eS4KCgpIVEgsCgoKCkRhdmXCoCBILgoKCgoKT24gMTEvMjIvMjEg
MTA6NTAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gVGhlIHNl
Y29uZCBhcHBsaWNhdGlvbiBJIGFtIGhvcGluZyB0byBmaW5kIGlzIGEgZ29vZCB3ZWF0aGVyIGFw
cC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

