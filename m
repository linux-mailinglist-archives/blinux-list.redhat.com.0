Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 733D34605A8
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 11:20:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638094852;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cuLZJuYHoCq2qdZVJdLX3m3J6yfXOcRpCg4CouCqQ74=;
	b=EwGUAkJaV8OizRTlm6UNivEA700Tb3t41SNu25lfLfSrKPDxJMe+sHj9ikZrQQPUX5nu+A
	HcBBZV3Xvw/JPqQoRDWpwZZBAA5CcxT5LUp5Z+nD2FPJ8XniXfNFMCkLPDZ13RZNCVs2U6
	iSl3U8zIn/tlVg1PqbsxA/jZe9PHLkk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-362-dTaeuY63MU2TxvqtLU2YRg-1; Sun, 28 Nov 2021 05:20:48 -0500
X-MC-Unique: dTaeuY63MU2TxvqtLU2YRg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42D6F185302D;
	Sun, 28 Nov 2021 10:20:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08C42608BA;
	Sun, 28 Nov 2021 10:20:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A6514BB7C;
	Sun, 28 Nov 2021 10:20:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASAJ007012167 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 05:19:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3E2A3401E57; Sun, 28 Nov 2021 10:19:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38939401E56
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 10:19:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D93180122B
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 10:19:00 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-200-siDuZAByN4eOB8nGlyrFQA-1;
	Sun, 28 Nov 2021 05:18:57 -0500
X-MC-Unique: siDuZAByN4eOB8nGlyrFQA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B573EA008A
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 09:18:15 +0100 (CET)
Message-ID: <1cc9847e-1d03-93ce-1829-c625ecdfc44c@slint.fr>
Date: Sun, 28 Nov 2021 11:18:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: Jumping from Solus/Ubuntu to Slint...how easy is it?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <78e0ef3a-4843-b11a-6ab4-586498b14250@gmail.com>
	<a5db1a21-5c98-f8ca-4f04-c42db4c6fa24@gmail.com>
	<5306ea94-e937-f383-95da-12ea194be198@gmail.com>
	<f0af3b56-8a78-524c-440e-9744985c7556@gmail.com>
In-Reply-To: <f0af3b56-8a78-524c-440e-9744985c7556@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ASAJ007012167
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Li4uIEFuZCBJIHBsYW4gdG8gcHJvdmlkZSBhIGZsYXRwYWsgcGFja2FnZSBmb3IgU2xpbnQgc29v
bi4KCkNoZWVycywKRGlkaWVyCgpMZSAyOC8xMS8yMDIxIMOgIDEwOjQ4LCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gU2t5cGUgY2FuIGJlIGluc3RhbGxl
ZCB1c2luZyBmbGF0cGFrLgo+IAo+IAo+IFdhcm0gcmVnYXJkcywKPiAKPiBCcmFuZHQgU3RlZW5r
YW1wCj4gCj4gU2VudCBmcm9tIHRoZSBGZWRvcmEgbWFjaGluZSwgdXNpbmcgVGh1bmRlcmJpcmQK
PiAKPiBPbiAyMDIxLzExLzI2IDIzOjU3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+PiBZb3Ugc2F5IHlvdSBjYW4ndCBydW4gaXQgaW4gYSBWTSwgSSBnb3QgaXQg
d29ya2luZyBpbiBxdWNrZW11IHdpdGggYSAKPj4gYml0IG9mIHBva2luZyBhdCB0aGUgZXhhbXBs
ZSBmaWxlcy4KPj4KPj4gU28sIHF1ZXN0aW9uLiBJJ20gbWlzc2luZyB0d28gYXBwcyBpbiBteSBW
TSBpbnN0YWxsCj4+Cj4+Cj4+IFB1cnBsZS1za3lwZXdlYiAoUGlkZ2luIHNreXBlIHBsdWdpbikg
YXMgd2VsbCBhcyBTa3lwZQo+Pgo+Pgo+PiBTZWNvbmQgb25lLi4uS29kaQo+Pgo+PiBTbyBjYW4g
SSBnZXQgYm90aCBpbnN0YWxsZWQgaW4gU2xpbnQgb3I/Cj4+Cj4+Cj4+IE9uIDExLzI2LzIxIDIx
OjM4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gU2xpbnQg
aXMgcHJvYmFibHkgdGhlIG1vc3QgcmVsaWFibHkgYWNjZXNzaWJsZSBkaXN0cmlidXRpb24uIFlv
dSAKPj4+IGNhbid0IHJ1biBhIHZpcnR1YWwgc2xpbnQgb24geW91ciBjb21wdXRlciwgaG93ZXZl
ciwgeW91IGNhbiBpbnN0YWxsIAo+Pj4gb24gYW4gU0QgY2FyZCBhbmQgdXNlIGl0IHdpdGhvdXQg
YW55IGFjY2Vzc2liaWxpdHkgaXNzdWVzLiBZb3UgbmVlZCAKPj4+IGF0IGxlYXN0IDMyIEdCIFNE
IGRpc2suwqAgSSBoYXZlIGl0IHJ1bm5pbmcgb24gMTI4IEdCIFNEIGRyaXZlLgo+Pj4KPj4+IENo
ZWVycywKPj4+Cj4+PiBJYnJhaGltCj4+Pgo+Pj4gT24gMTEvMjYvMjEgMzo1OSBQTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBTbyBhcyBpdCBzYXlzLi4u
LmFuZCBnaXZlbiBteSByZWNlbnQgd2hpZmZzIG9uIHFlbXUsIHNvIGZhciAqY3Jvc3NlcyAKPj4+
PiBmaW5nZXJzKiBTbGludCBpcyBzbG93bHkgaW5zdGFsbGluZyBidXQgSSdtIHdhbnRpbmcgdG8g
a25vdy4uLgo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+IEhvdyBlYXN5IGlzIGl0IHRvIGFkYXB0IHRvIFNs
aW50L1NsYWNrd3dhcmUgY29taW5nIGZyb20gVWJ1bnR1IG9yIAo+Pj4+IFNvbHVzIG9yIEZlZG9y
YSBvci4uLgo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

