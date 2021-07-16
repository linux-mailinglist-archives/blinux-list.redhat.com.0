Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id EB56D3CBFE7
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 01:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626479897;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p3vxg5jQ1ttssKsCE8/+Qu+n/nAdvKmCBRijnwKVazk=;
	b=TG2mrKHnHdiCB6xiJApXKNSLIkJ/dA23lo4FoL1N+8OLbX9JuQyXNBnsZKDagBa1/ywUOY
	ZLh/86zdS6EfVyXA34/k5a+T999T/ziJULhGqvwcMKsMAIXWvpWkXod2wla7ZKNpUuafY4
	t4cX7bQFrnTbCKrSAw5wiAqwbXzvdRE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-581-vxE0arSmPOq-vu8kw01f-Q-1; Fri, 16 Jul 2021 19:58:15 -0400
X-MC-Unique: vxE0arSmPOq-vu8kw01f-Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 22D5B5120;
	Fri, 16 Jul 2021 23:58:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A0815D6AB;
	Fri, 16 Jul 2021 23:58:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7E52E1809C99;
	Fri, 16 Jul 2021 23:58:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GNveuq009917 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 19:57:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4DBF8202BFAF; Fri, 16 Jul 2021 23:57:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4890B202BFAB
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 23:57:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 914AD100DE6B
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 23:57:36 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
	[209.85.214.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-453-ZGCjmyhQMdaIzXBJaulVNg-1; Fri, 16 Jul 2021 19:57:33 -0400
X-MC-Unique: ZGCjmyhQMdaIzXBJaulVNg-1
Received: by mail-pl1-f177.google.com with SMTP id v14so6079449plg.9
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 16:57:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=VmehwI90c9QpNxorn155qVjJf0WOM0TTW/kXyoOmjJU=;
	b=OSgITGU7cILqJNwqoljNBunpNyxwBMBOO6Rsjg9CofAjMZaXgKw0BfuaBKftXi3+gC
	C9JdPpOjZq6ph8Y7B5kZUGq69Bj1bCtdkiBiHkE78Li6YmsG4EU2Pf8Ph2yIm9I5un3R
	ffvETNqPjIgOEKuaitS8eWllXHuCJFq4LIRYb6ECJTnr5fyW0N2bO6sHmphRPuZmAjKr
	u8GxTKCiYgpv4MewQku879ApdgmTGKhM4TjnMFkv9Q4BV/di7j95jxGH4ZTq8JE3tLU/
	BKMTvHezwaQGh58DYjkRhakUakJtoiddzK8EtqC7gOFPSISnLVex6w/4mn6QFozUjwFj
	0W1A==
X-Gm-Message-State: AOAM531wRBG3OBZetrkAxjGFSCJXm01dPBQeCimmIH9iwy8JOsfmH3TP
	ZFrwmFE9/LKWwJIgST7Rx0kMvDJJFRg=
X-Google-Smtp-Source: ABdhPJzB3hpD5zXnrY1cgaOW9nBeRBf0EgaSKGa7yhYka3BS/nES+VI+VaijqsbXM9jhkdEJ5PlrwA==
X-Received: by 2002:a17:90a:f3c5:: with SMTP id
	ha5mr12325621pjb.67.1626479852618; 
	Fri, 16 Jul 2021 16:57:32 -0700 (PDT)
Received: from smtpclient.apple ([2603:9005:401:e2d3:d07b:41f6:209a:4457])
	by smtp.gmail.com with ESMTPSA id
	a5sm11516695pff.143.2021.07.16.16.57.31 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Jul 2021 16:57:32 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3681.0.2.1.2\))
Subject: Re: Fedora pros and cons
Date: Fri, 16 Jul 2021 18:57:29 -0500
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
	<CAGJxbF6PEh1_SoHaoUTfgSvOHJZ=+5j3bm1jYGxLPfQKx-QA6A@mail.gmail.com>
	<alpine.NEB.2.23.451.2107161924380.11557@panix1.panix.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <alpine.NEB.2.23.451.2107161924380.11557@panix1.panix.com>
Message-Id: <6C5267F8-9939-4327-ABB8-759DC75D37EF@gmail.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlLiBBZnRlciBpbnN0YWxsaW5nIFZveGluLCBhbGwgc3ludGhlc2l6ZXJzIGhhZCBzb21l
IERtaXggaXNzdWUgd2hlcmUgaWYgSSBtb3ZlZCBmb2N1cywgc3BlZWNoIHdvdWxkbuKAmXQgc3Rv
cCBpbiB0aW1lLCBzbyBJIGhlYXJkIHR3byB2b2ljZXMgZm9yIGEgbW9tZW50LgpEZXZpbiBQcmF0
ZXIKci5kLnQucHJhdGVyQGdtYWlsLmNvbQoKSHR0cHM6Ly9kZXZpbnByYXRlci5mbG91bmRlci5v
bmxpbmUKCj4gT24gSnVsIDE2LCAyMDIxLCBhdCA2OjI2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBUaGUg
bGFzdCB0aW1lIEkgZGlkIGFueXRoaW5nIHdpdGggdHJpc3F1ZWwgdGhleSBoYWQgbm8gZHJpdmVy
IGZvciBteSB3aS1maQo+IGNhcmQgYW5kIEkgaGFkIG5vIGFjY2VzcyB0byBhbiBldGhlcm5ldCBj
b25uZWN0aW9uIHNvIEkgZ2F2ZSB1cCBvbiB0aGF0Cj4gb25lIHF1aWNrLiAgTm93IEkgaGF2ZSBh
biBldGhlcm5ldCBjb25uZWN0aW9uIHNvIHRoYXQgc2hvdWxkbid0IGJlIHRvbwo+IG11Y2ggb2Yg
YSBwcm9ibGVtIHRvIGluc3RhbGwuCj4gSGF2ZSB5b3UgaW5zdGFsbGVkIHNsaW50IHlldD8gIFNs
aW50IHRha2VzIHRoZSBBcHBsZSBhcHByb2FjaCByYXRoZXIgdGhhbgo+IHRoZSBNaWNyb3NvZnQg
YXBwcm9hY2ggdG8gYWNjZXNzaWJpbGl0eS4KPiAKPiAKPiBPbiBGcmksIDE2IEp1bCAyMDIxLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IAo+PiBZZWFoLCB0aGV5
IGRpZCwgYW5kIFRyaXNxdWVsIGlzIHRoZSBvbmx5IExpbnV4IGRpc3RybyB3aGljaCBoYXMgZG9u
ZSB0aGlzLgo+PiBJIHNob3VsZCB3cml0ZSB1cCBhIGd1aWRlIGZvciBpbnN0YWxsaW5nIEZlZG9y
YSBNYXRlIHdoaWxlIGl0J3Mgc3RpbGwgZnJlc2guCj4+IERldmluIFByYXRlcgo+PiByLmQudC5w
cmF0ZXJAZ21haWwuY29tCj4+IGdlbWluaTovL3RpbGRlLnBpbmsvfmRldmlucHJhdGVyLwo+PiAK
Pj4gCj4+IAo+PiBPbiBGcmksIEp1bCAxNiwgMjAyMSBhdCAxOjAxIFBNIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
Pj4gCj4+PiBTbyBsb25nIGFzIHlvdSBhbHJlYWR5IGtub3cgaG93IHRvIGRvIGFsbCBvZiB0aGF0
IGFoZWFkIG9mIGluc3RhbGxhdGlvbgo+Pj4geW91J3JlIGdvbGRlbi4gIFNpbWlsYXIgdG8gTWlj
cm9zb2Z0IGFjY2Vzc2liaWxpdHkgYXBwcm9hY2ggZm9yIG15IG1vbmV5Cj4+PiBpbiB0aGF0IHlv
dSBoYXZlIHRvIGtub3cgaG93IHRvIHR1cm4gc2NyZWVuIG5hcnJhdG9yIG9uIGFoZWFkIG9mIHRp
bWUgdG9vLgo+Pj4gRm9yIG15IG1vbmV5IHdoZW4gQXBwbGUgcmVsZWFzZWQgVGlnZXIgMTAuNCBB
cHBsZSBkaWQgaXQgYmV0dGVyLgo+Pj4gCj4+PiAKPj4+IE9uIEZyaSwgMTYgSnVsIDIwMjEsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiAKPj4+PiBXaXRoIEZl
ZG9yYSwgeW91IGF0IGxlYXN0IGtub3cgdGhhdCB0aGUgTWF0ZSBpbnN0YWxsZXIgaXMgYWNjZXNz
aWJsZS4KPj4+IFVidW50dSBNYXRlP3MgaW5zdGFsbGVyIGlzbj90IGFjY2Vzc2libGUsIHdpdGgg
dGhlIGxhdGVzdCAyMC4xMCByZWxlYXNlLgo+Pj4gRmVkb3JhP3MgTWF0ZSBzcGluLCB3aGljaCBJ
IGp1c3QgaW5zdGFsbGVkIHRvZGF5LCAqaXMqIGFjY2Vzc2libGUuIFlvdQo+Pj4gc3RpbGwgaGF2
ZSB0byBlbmFibGUgQXNzaXN0aXZlIFRlY2hub2xvZ3kgc3VwcG9ydCwgYW5kIHR1cm4gb24gT3Jj
YSwgYW5kCj4+PiBzZXQgYSBrZXlib2FyZCBjb21tYW5kIGZvciBPcmNhLCBidXQgdGhhdD9zIG5v
dCB0b28gaGFyZCB0byBkby4KPj4+PiBEZXZpbiBQcmF0ZXIKPj4+PiByLmQudC5wcmF0ZXJAZ21h
aWwuY29tCj4+Pj4gCj4+Pj4gSHR0cHM6Ly9kZXZpbnByYXRlci5mbG91bmRlci5vbmxpbmUKPj4+
PiAKPj4+Pj4gT24gSnVsIDE2LCAyMDIxLCBhdCAxMDoyOSBBTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8Cj4+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+
Pj4gCj4+Pj4+IEhlbGxvLCBJIGFtIGludGVyZXN0ZWQgaW4gYWR2YW50YWdlcyBhbmQgZGlzYWR2
YW50YWdlcyBvZiBGZWRvcmEgdnMKPj4+IFVidW50dS1iYXNlZCBsaW51eC4KPj4+Pj4gCj4+Pj4+
IAo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Pj4+IAo+Pj4+IAo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4gCj4+PiAKPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPj4gCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

