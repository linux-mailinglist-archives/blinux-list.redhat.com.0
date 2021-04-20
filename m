Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8A5B736566A
	for <lists+blinux-list@lfdr.de>; Tue, 20 Apr 2021 12:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618915343;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i0s/mgiqMcFkqn7S9DbruoLFP3g/eXP/u9zxaIWAqCg=;
	b=GhcgtyS76Rnx83pJhJBD0Q7LxHqg4cnHDCFjt9SCeMz2M1K/xts+WSBAmYE4Gh5yf2hL1c
	k4rYkt/Zojr01XPy92aHRDtlQ1eX3OxSWvgk2cDts/NnkgJXQiRxg3MxI9s6K0eOf/2e38
	8drrQUl031/CRoSu46bGqlpKDnHmNl8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-CFrCECVSNw-0wbYz1jF7eQ-1; Tue, 20 Apr 2021 06:42:21 -0400
X-MC-Unique: CFrCECVSNw-0wbYz1jF7eQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 464101006C81;
	Tue, 20 Apr 2021 10:42:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24C64107D5C4;
	Tue, 20 Apr 2021 10:42:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 387951C98;
	Tue, 20 Apr 2021 10:42:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13KAfv5k014420 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Apr 2021 06:41:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6BD8521C710C; Tue, 20 Apr 2021 10:41:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6590821C711E
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 10:41:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2163E85A5BD
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 10:41:55 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
	[209.85.218.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-159-ZWAkkrKgN9uX-2dutrCeEw-1; Tue, 20 Apr 2021 06:41:53 -0400
X-MC-Unique: ZWAkkrKgN9uX-2dutrCeEw-1
Received: by mail-ej1-f52.google.com with SMTP id v6so56244157ejo.6
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 03:41:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6PtgvEHtj/j1JB5UXAuNdJLHxfnvaW+31n2oSTgpUZU=;
	b=bGCEz9Xzc/NemrOCgOvGguBDC5x6N0LVSwedRj8IkAaJyTwKpjk3xNUqmeCwkFRSKL
	mhQSDfCEAzhaD+f1xQUOBKqvRDddDG+pMbRciI/RkvIH0BomSoe2a1adfaDJvm//TIF6
	X7MYEzFxLLKf1FWYZ00n/3bG2aVuMSpbeeqHMZMN3F3W8xYjRZ3Df4p/B7C1g7pZ/Hy1
	ZACTkCoUHz6HaZXVY300au4QFJd/wNJuM7TJ586Y1Gx5DPpE6kj0UHl9q1yvxwMAEjV4
	Q4z6k1LFlSrcopZYX5QyAxuBglsdWcoKRDS34kwB2LImhyFTXYKbh/aHluoYvZn51PGH
	7Dkw==
X-Gm-Message-State: AOAM530DuK+toMtBt81zRJwwrWQ/4o28ni76Dlra3w6RBCdoJYmgugL3
	T/qzrXktk4ZRTTdQXyl8GGevS1QoX8/avg==
X-Google-Smtp-Source: ABdhPJz+QxnSxj96LkmcXbUXKbodBxKa1VQOiUlor5mLF2y9swUAw9M+93l/TOlj5DoZ75VXlqBcsw==
X-Received: by 2002:a17:906:70c4:: with SMTP id
	g4mr14412340ejk.443.1618915311496; 
	Tue, 20 Apr 2021 03:41:51 -0700 (PDT)
Received: from [192.168.1.6] (net-188-153-130-61.cust.vodafonedsl.it.
	[188.153.130.61]) by smtp.gmail.com with ESMTPSA id
	s20sm15379742edu.93.2021.04.20.03.41.50 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 20 Apr 2021 03:41:51 -0700 (PDT)
Subject: Re: How to navigate - how to flat review
To: blinux-list@redhat.com
References: <9229A40C-ECEB-4115-A86B-072313A6C0A6.ref@yahoo.com>
	<9229A40C-ECEB-4115-A86B-072313A6C0A6@yahoo.com>
Message-ID: <739c7f2c-1088-e093-f663-f7a83ed192ed@gmail.com>
Date: Tue, 20 Apr 2021 12:41:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <9229A40C-ECEB-4115-A86B-072313A6C0A6@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKSSBiZWxpZXZlCgpodHRwczovL2hlbHAuZ25vbWUub3JnL3VzZXJzL29y
Y2Evc3RhYmxlL2NvbW1hbmRzX2ZsYXRfcmV2aWV3Lmh0bWwuZW4KCnNob3VsZCBnaXZlIHlvdSBh
bGwgdGhlIGluZm8geW91IG5lZWQuCgpGb3IgZnVydGhlciBoZWxwIGFuZCBjb21tYW5kcywgcmVh
ZAoKaHR0cHM6Ly9oZWxwLmdub21lLm9yZy91c2Vycy9vcmNhL3N0YWJsZQoKdGhhdCdzIE9yY2En
cyB1c2VyIGd1aWRlLCB3aGljaCBhbHNvIGNhbiBiZSBhY2Nlc3NlZCBieSBkb2luZyBvcmNhLSto
LCBmMS4KCkhvcGUgdGhpcyBoZWxwcy4KCkJlc3QgcmVnYXJkcy4KCkZyYW5jaXNjby4KCk9uIDQv
MjAvMjEgMjoxOSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
PiBIaSwKPgo+IDEuIElzIHRoZXJlIGEgY29tbWFuZCB0byBoYXZlIG9yY2EgcmVwZWF0IHRoZSBs
YXN0IGxpbmUgdGhhdCBpdCBzYWlkIGFsbG93ZWQ/Cj4gMi4gSG93IGNhbiBJIGVhc2lseSBuYXZp
Z2F0ZSB0aGUgb3V0cHV0IGZyb20gdGVybWluYWwgd2l0aCBvcmNhPwo+Cj4g4oCcCj4gMy4gU2lt
aWxhciB0byBhYm92ZSwgYnV0IHNheSB0aGF0IHlvdSBhcmVTaW1pbGFyIHRvIGFib3ZlLCBidXQg
c2F5IHRoYXQgeW91IGFyZSBuYXZpZ2F0aW5nIGp1c3Qgc29tZXdoZXJlIGluIHNldHRpbmdzIGZv
ciBleGFtcGxlLiBJcyBpdCBwb3NzaWJsZSB0byBuYXZpZ2F0ZSAgbW9yZSBncmFudWxhciBhbmQg
Z28gdGhyb3VnaCBhIGxpbmUgb3IgcGFyYWdyYXBoIGJ5IGVhY2ggd29yZCBvciBsaW5lIGluc3Rl
YWQgb2YganVzdCBkb2luZyBzaGlmdCB0YWIgdG8gZ28gYmFjayBhbmQgdGFiIHRvIGdvIGZvcndh
cmQgYWdhaW4gdG8gcmVhZCBjdXJyZW50IGxpbmU/Cj4KPgo+IOKAnCBOZXZlciBiZW5kIHlvdXIg
aGVhZC4gQWx3YXlzIGhvbGQgaXQgaGlnaC4gTG9vayB0aGUgd29ybGQgc3RyYWlnaHQgaW4gdGhl
IGV5ZS7igJ0KPiB+IEhlbGVuIEtlbGxlcgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

