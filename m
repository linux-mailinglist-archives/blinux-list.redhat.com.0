Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C9B44E0D7
	for <lists+blinux-list@lfdr.de>; Fri, 12 Nov 2021 04:33:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636688033;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0+qIpyxbdVeOn+Dojv8MI0zDXkC+zhJgsat5fsRDM6k=;
	b=g87idJuFhpoQ1/8k81fTuJglZ9bRHJY3asFf859q9hNEl/MbZ4CqMeUiyEZP3Msf9J8KlQ
	mC1hCljnFqQ1XjyJwR629ErxpJgodny5rwc+65Ap2t14XLPEZ4Rc7hbSXDRboZEIhYiZGb
	DMlxYmy9yMjlPrHt58ZGa/cQewQIhLQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-286-oP7dv2bDNpiY5ws-KypMJg-1; Thu, 11 Nov 2021 22:33:50 -0500
X-MC-Unique: oP7dv2bDNpiY5ws-KypMJg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0A1D8799EB;
	Fri, 12 Nov 2021 03:33:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55C865C1D0;
	Fri, 12 Nov 2021 03:33:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2795D4E58E;
	Fri, 12 Nov 2021 03:33:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AC3W13j014175 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Nov 2021 22:32:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3C79B1121319; Fri, 12 Nov 2021 03:32:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 37BAB1121318
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 03:31:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 699BC8011A5
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 03:31:58 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
	[209.85.219.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-336-RdTxehkFOryvoKuzKVxKCw-1; Thu, 11 Nov 2021 22:31:56 -0500
X-MC-Unique: RdTxehkFOryvoKuzKVxKCw-1
Received: by mail-qv1-f50.google.com with SMTP id s9so5420623qvk.12
	for <blinux-list@redhat.com>; Thu, 11 Nov 2021 19:31:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=mrB9nvvbns9zgnFZ3ouUlcO1Gq8391PKnu2ITeE8APU=;
	b=I3wS7ZHKEZChNlPiD1e/fNFoumzvnEr5sKiOpzu+TA8wg2AQrJkYZdamexiQ6XzFU5
	+Ym9BvBkhMQUZKVy7ISfBw1zAS15N6ED1YckdNiLp758bAia8E9+DHeKTAhzx8fPMYdg
	kc+BiTz4YTlclZRSmvS08l6ivIPJpSyJjRRl3g7OcoChdhtfdbKNnRIbKJo+kOVI+xVx
	ysWFOfVvQQhVle6LXOiZghjuBWMAPkOcQEYMvqNQXDZ5u9uY8eRngp172rgzNOxke26L
	63siYt25Sb/HuAYIHnOM6tRI5tBAUhx2pVuQS08tuklBsg6caKi6KniB/NhIx+fBKbGF
	4o8g==
X-Gm-Message-State: AOAM532yYewP000+ow2qV6jIM6o0Wh7sRHMFRiEAF/WyA6yayqFhGgoQ
	Nl5UYqPY25Q79xk2BpDhf88E5F/HIaooBg==
X-Google-Smtp-Source: ABdhPJwP1wZUMLuZ0h56kn5KOTEc3Vo6iubOSlV7gtiAqqIb7AIsldEZqndcxqUhc+1mnYuEAR64Pg==
X-Received: by 2002:a05:6214:1cc2:: with SMTP id
	g2mr11313026qvd.56.1636687915661; 
	Thu, 11 Nov 2021 19:31:55 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	c13sm2498037qtx.51.2021.11.11.19.31.54 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 11 Nov 2021 19:31:54 -0800 (PST)
Subject: Re: How do you format a disk using slint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
	<45dfbbc5-04c2-9f49-a595-581537acbafe@gmail.com>
	<8ce70d89-dc7d-f8e9-6b8a-44d48d4ace4c@gmail.com>
	<6c63560f-ca92-f096-5252-9813d408f584@gmail.com>
Message-ID: <3fe73ae9-6b66-c400-6067-70afc6cad92a@gmail.com>
Date: Thu, 11 Nov 2021 22:31:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <6c63560f-ca92-f096-5252-9813d408f584@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIGZvciB5b3VyIGhlbHAgRGF2ZSwKCkkgdHJpZWQgdG8gaW1wbGVtZW50IHRoZSBjb21t
YW5kIGFzIHJvb3Q6CgpzbGFwdC1zcmMgZ25vbWUtZGlzay11dGlsaXR5CgpidXQgSSBnb3Qgbm8g
cmVzcG9uc2UuwqAgV2hlbiBJIGhpdCB0aGUgZW50ZXIga2V5IGl0IGp1c3Qgc2VudCBtZSBiYWNr
IHRvIAp0aGUgdGVybWluYWwgcHJvbXB0LiBJIGdvdCBubyBjb25maXJtYXRpb25zIG9yIGVycm9y
cy4KCgpXaGVuIEkgdHJpZWQgdG8gcnVuIHRoZSBnbm9tZS1kaXNrcyBjb21tYW5kLMKgIEl0IHRv
bGQgbWUgbm8gc3VjaCBmaWxlLgoKQ291bGQgaXQgYmUgdGhhdCB0aGlzIHBhY2thZ2UgZG9lcyBu
b3QgZXhpc3Qgb24gbXkgbWFjaGluZT8gV2hhdCBkbyB5b3UgCnRoaW5rPwoKT24gMTEvMTEvMjEg
OTo1MCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBUaGUg
dXRpbGl0eSBpcyBjYWxsZWQgZ25vbWUtZGlza3MuwqAgWW91IGNhbiB0eXBlIHRoYXQgaW50byB0
aGUgcnVuIAo+IGRpYWxvZ3VlLsKgIEV2ZW4gYmV0dGVyLCB5b3UgY2FuIGFkZCBpdCB0byB0aGUg
bWVudXMgYnkgc3RhcnRpbmcgbW96byAKPiBmcm9tIHRoZSBydW4gZGlhbG9ndWUuwqAgU3VwcG9z
ZSB5b3Ugd2FudCB0byBwdXQgaXQgb24gdGhlIAo+ICdhY2Nlc3NvcmllcycgbWVudS4gWW91IGNv
dWxkIG5hdmlnYXRlIHRvICdhY2Nlc3NvcmllcycsIGFuZCBtYWtlIGEgCj4gbmV3IGl0ZW0uwqAg
VGhlIGNvbW1hbmQgd291bGQgYmUgImdub21lLWRpc2tzIiwgYW5kIHRoZSBzaG9ydGN1dCB3b3Vs
ZCAKPiBiZSB3aGF0ZXZlciB5b3Ugd2FudC4KPgo+Cj4KPiBPbiAxMS8xMS8yMSAyMTozNCwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gVGhhbmtzIERhdmUuCj4+
Cj4+IE5vdywgaWYgSSBpc3N1ZSB0aGlzIGNvbW1hbmQKPj4KPj4gc2xhcHQtc3JjIGdub21lLWRp
c2stdXRpbGl0eQo+Pgo+PiBhcyByb290LCB3b3VsZCB0aGUgc3lzdGVtIGFkZCBhIG5ldyB1dGls
aXR5IHRvIHRoZSBtZW51PyBPciBkbyBJIGhhdmUgCj4+IHRvIGFkZCBpdCBteXNlbGY/wqAgSWYg
c28sIHdoZXJlIGNhbiBJIGZpbmQgdGhpcyB1dGlsaXR5IG9uY2UgSXQgCj4+IGJlY29tZXMgYXZh
aWxhYmxlPwo+Pgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IElicmFoaW0KPj4KPj4gT24gMTEvMTEvMjEg
OTowOCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IHNs
YXB0LXNyYyBnbm9tZS1kaXNrLXV0aWxpdHkgCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

