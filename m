Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B338B3E972B
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 19:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628704646;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IFADpDzvcIydK3JE59RkmMsMEi/E5mHFX6PTaoG8nqw=;
	b=b/VlsiLUrtRBJhu3Ablp9h4AM2BJEl/1b2j3lXhXLcJAjJD5Ap1q5+QBmnnHS+EFqvQOnE
	f0PRnfsI64VmuSJQxiRkxskqj3Xv1b8gjCvr4Kd5bSYcWIB8H/jCSOguqVXH9TZQt/watx
	YWe4cJ/ItQuuRl1OE0e7rVNmTVkksdM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-100-bmYyW6MbMIyIqtb7uIc2Fw-1; Wed, 11 Aug 2021 13:57:24 -0400
X-MC-Unique: bmYyW6MbMIyIqtb7uIc2Fw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 465A81853028;
	Wed, 11 Aug 2021 17:57:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A8251036D35;
	Wed, 11 Aug 2021 17:57:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7D1C44BB7C;
	Wed, 11 Aug 2021 17:57:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17BHsxZL024576 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 11 Aug 2021 13:55:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D79B5103CCD; Wed, 11 Aug 2021 17:54:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2796103CD7
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 17:54:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B8738CA942
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 17:54:56 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-493-UaE7DUEXPP6satb9cpPI3g-1; Wed, 11 Aug 2021 13:54:54 -0400
X-MC-Unique: UaE7DUEXPP6satb9cpPI3g-1
Received: by mail-ot1-f50.google.com with SMTP id
	r19-20020a0568301353b029050aa53c3801so4367878otq.2
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 10:54:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=usVA55uj3rqFiNg9wD2GolWLI3ARdaVdvATXPiW7X8A=;
	b=YHT4GEhEFf3QIzxpYBkuzm4pPrDlJNuveMrO83i9AQq0PHtYP4mq3iE9lyZIEiZH/m
	Ai8Q4ZZc5uBUia9z6NsNqIzMM1xwGlP8bfukXYSibFO1DFiGajbEZHmyQIJlOfYjpgks
	GGo2mgDNJc64+u5d314OFgOsja8dD3psGY7ir0dwp4T+izs42vOCleKXs/3cMUUhFAk5
	m9u8LDMPv+XHxf4rz8nhGu/bCILqJPADN9P0ubFjOcqNuqqurmqjs7uNJPuZWKn+IPxN
	zETivF56+VKGYse7hVDPkjmRkarOXwb1QV7dNS+8ArWHkXtFJ4+5XiGe3fNBJ+OKJCPa
	5yKA==
X-Gm-Message-State: AOAM533mwgxvJTGhCjjERFJob9Z9RvksZrJExENbRnMRQ7e1FkxndjLm
	b1rXUMOwSBA0Gg4grC7zTyWVuYgpQiE=
X-Google-Smtp-Source: ABdhPJzgQQ1/2hNZWGNOeIgacyCXNIMpMslHVYSUCxesH9g+MqzJmQ45oxfqfDMPa8kml02ICSTuew==
X-Received: by 2002:a9d:24e8:: with SMTP id z95mr133038ota.181.1628704493582; 
	Wed, 11 Aug 2021 10:54:53 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:7478:6bb6:acf:90df])
	by smtp.gmail.com with ESMTPSA id
	w16sm2362236oih.19.2021.08.11.10.54.52 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Aug 2021 10:54:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Help, I need a Windows VM for my work
Date: Wed, 11 Aug 2021 12:54:52 -0500
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<913e9c46-c83a-39bd-c013-772d31851af5@protonmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <913e9c46-c83a-39bd-c013-772d31851af5@protonmail.com>
Message-Id: <2F8F9344-FCC0-4B2D-9399-6319394247A9@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17BHsxZL024576
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIHVidW50dSBtYXRlIDIwLjA0LCBJIGNvdWxkIG5vdCBnZXQgdGhlIGluc3RhbGxlciB0byB3
b3JrIHdpdGggb3JjYS4KSG93IGRpZCB5b3UgZG8gdGhhdD8KCj4gT24gQXVnIDEwLCAyMDIxLCBh
dCA0OjMzIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlz
dEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBIZXkgdGhlcmUsCj4gCj4gcGVyc29uYWxseSBJIHVz
ZSBWaXJ0dWFsQm94IG9uIFVidW50dSBtYXRlIDIwLjA0IGFuZCBpdCB3b3JrcyB3aXRob3V0Cj4g
YW55IGlzc3VlcywgdGhvdWdoIHRoZSBpbnRlcmZhY2UgaXMgc29tZXRpbWVzIG5vdCBlbnRpcmVs
eSBjb29wZXJhdGluZwo+IGFuZCBPQ1JEZXNrdG9wIGlzIHJlcXVpcmVkIHRvIGltcHJvdmUgdGhl
IGFjY3VyYWN5IG9mIE9yY2EgY2xpY2tzLgo+IAo+IEJ1dCBpdCdzIGRlZmluaXRlbHkgZG9hYmxl
Lgo+IAo+IAo+IFRoZSB1c2FnZSBpcyBxdWl0ZSBzaW1wbGUsIHlvdSBqdXN0IGNyZWF0ZSBhIG5l
dyBWaXJ0dWFsIG1hY2hpbmUgZnJvbQo+IHRoZSBtYWNoaW5lIG1lbnUsIHNldHRpbmcgdXAgcGFy
YW1ldGVycyBsaWtlIFJBTSBhbmQgZGlzayBzcGFjZS4KPiAKPiBUaGVuLCB3aGVuIHRoZSBtYWNo
aW5lIGlzIGNyZWF0ZWQsIHlvdSBhdHRhY2ggdGhlIGluc3RhbGxhdGlvbiBJU08gdG8KPiBpdHMg
dmlydHVhbCBDRC9EVkQgcm9tLCB5b3UgY2FuIGRvIHRoaXMgaW4gdGhlIG1hY2hpbmUgc2V0dGlu
Z3MsIFN0b3JhZ2UKPiB0YWIsIElERSBjb250cm9sbGVyIChpZiB5b3UgZG9uJ3Qgc2VlIGl0IGlu
IHRoZSBsaXN0LCBpbmNyZWFzZSB0aGUKPiBudW1iZXIgb2Ygc2F0YSBwb3J0cyB0byAyKS4KPiAK
PiAKPiBBZnRlciBzdGFydGluZyB0aGUgbWFjaGluZSB3aXRoIHRoZSBpc28gYXR0YWNoZWQsIGl0
IHNob3VsZCBib290Cj4gYXV0b21hdGljYWxseSBhbmQgc3RhcnQgdGhlIGluc3RhbGxhdGlvbi4K
PiAKPiAKPiBXaGVuIHlvdSdyZSBkb25lLCB5b3UgY2FuIHJlbW92ZSB0aGUgaW5zdGFsbGF0aW9u
IGRpc2sgZnJvbSB0aGUgZHJpdmUsCj4gaW4gZmFjdCB0aGlzIGlzIHNvbWV0aW1lcyBkb25lIGF1
dG9tYXRpY2FsbHksIGJ1dCBJIHNhdyBjYXNlcyB3aGVyZSBpdAo+IHN0YWllZCB0aGVyZSwgc28g
SSBhbHdheXMgY2hlY2sgaXQuCj4gCj4gCj4gVGhlbiwgeW91IGNhbiBzdGFydCB0aGUgVk0gZWl0
aGVyIGZyb20gdGhlIFZpcnR1YWxCb3ggbWFuYWdlciwgb3IgZnJvbQo+IGl0cyAudmJveCBzaG9y
dGN1dC4KPiAKPiAKPiBBIGZpbmFsIG5vdGUsIHdoZW4gcnVubmluZyB0aGUgbWFjaGluZSwga2V5
Ym9hcmQgaXMgZ3JhYmJlZCBieQo+IFZpcnR1YWxCb3ggZm9yIGl0LiBJZiB5b3UgbmVlZCB0byBz
ZW5kIGtleXMgdG8geW91ciBob3N0IHN5c3RlbSwgcHJlc3MKPiB0aGUgcmlnaHQgY3RybCBvbiB5
b3VyIGtleWJvYXJkLCBpdCB3b3JrcyBpbiB0aGUgc2FtZSB3YXkgYXMKPiBPcmNhK0JhY2tzcGFj
ZSBjb21iaW5hdGlvbiBmb3IgT3JjYSwgd2l0aCB0aGUgZXhjZXB0aW9uIHRoYXQgdGhlCj4ga2V5
Ym9hcmQgd2lsbCBiZSBncmFiYmVkIGFnYWluIG9ubHkgd2hlbiB5b3UgcmVlbnRlciB0aGUgd2lu
ZG93IG9mIHRoZQo+IG1hY2hpbmUsIHNvIHlvdSBjYW4gd29yayBpbiB5b3VyIGhvc3Qgc3lzdGVt
IHdpdGhvdXQgYW55IGlzc3Vlcy4KPiAKPiAKPiBCZXN0IHJlZ2FyZHMKPiAKPiAKPiBSYXN0aXNs
YXYKPiAKPiAKPiBExYhhIDEwLiA4LiAyMDIxIG8gMTI6NTUgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChhKToKPj4gSGkgYWxsLAo+PiAKPj4gCj4+IEFzIEkgc3Rh
dGVkIGJlZm9yZSwgSSBhbSBydW5uaW5nIFNsaW50IG9uIHRoZSBiYXJlIG1ldGFsLCBob3dldmVy
IG15Cj4+IHdvcmsgZW50YWlscyB0ZWFjaGluZyBOVkRBIHRvIGNsaWVudHMsIG9idmlvdXNseSBy
dW5uaW5nIFdpbmRvd3MuCj4+IAo+PiAKPj4gVGhlcmVmb3IgSSBkZXNwZXJhdGVseSBuZWVkIGEg
V2luZG93cyBWTSwgc28gSSBjYW4gbWFrZSBhIGxpdmluZy4gSQo+PiBjYW5ub3QgZmlndXJlIHFl
bXUsIHZpcnR1YWwtYm94LCBJIGhhdmUgbm8gaWRlYSwgYW5kIFZNV2FyZSBXb3Jrc3RhdGlvbgo+
PiBQbGF5ZXIgZG9lc24ndCB3YW50IHRvIGluc3RhbGwgdW5kZXIgU2xpbnQuCj4+IAo+PiAKPj4g
Q291bGQgc29tZW9uZSBwbGVhc2UsIHBsZWFzZSwgZ2l2ZSBtZSBjb25jaXNlIGluc3RydWN0aW9u
cyBmb3Igc2V0dGluZwo+PiB1cCBhIFZNIHVzaW5nIHFlbXUgaW4gU2xpbnQ/Cj4+IAo+PiAKPj4g
V2FybSByZWdhcmRzLAo+PiAKPj4gCj4+IEJyYW5kdCBTdGVlbmthbXAKPj4gCj4+IAo+PiBTZW50
IGZyb20gbXkgZ2FzcyBwb3dlcmVkIFNsaW50IGhhaXIgZHJ5ZXIuCj4+IAo+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+IAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

