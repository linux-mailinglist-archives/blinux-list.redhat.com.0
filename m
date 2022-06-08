Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B637F54323F
	for <lists+blinux-list@lfdr.de>; Wed,  8 Jun 2022 16:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654697497;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nbUHl9qlKqAq4vNWAh0CdZlefqAs7IS9CLsuhno9lR0=;
	b=iaGsyRyGgbYkayxZrzwCyngtPgq5jalmZ+Vaxe30UAtbDXoOFaYjhicIxdYAvLLxf4Ja6k
	DWEHspop2mC3ctYt+pWCpftl7vSZbT1I3W+Ce/mSPBwosmQWcrjCAWRQzP/xfKFr9ZxPnm
	2Tyz1cwoyOLdiV4jS9eSplq51k+zu3A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-145-BdG9zNnFOUCDLfd_DmkmVg-1; Wed, 08 Jun 2022 10:11:35 -0400
X-MC-Unique: BdG9zNnFOUCDLfd_DmkmVg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 000F585A584;
	Wed,  8 Jun 2022 14:11:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 35C812166B26;
	Wed,  8 Jun 2022 14:11:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8589F1947055;
	Wed,  8 Jun 2022 14:11:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 8 Jun 2022 15:09:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: nvda2speechd, let Windows programs talk through Speech dispatcher
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.21931.1654440086.111204.blinux-list@redhat.com>
 <mailman.21730.1654451477.111203.blinux-list@redhat.com>
 <mailman.21900.1654458346.111208.blinux-list@redhat.com>
 <mailman.22357.1654606973.111201.blinux-list@redhat.com>
 <mailman.22758.1654693519.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.22758.1654693519.111210.blinux-list@redhat.com>
Message-ID: <mailman.22854.1654697491.111205.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Qm9vdCB0aGUgSVNPIGFuZCBoaXQgZG93biBvbmNlIHRoZW4gZW50ZXIsIGl0IHNob3VsZCBjb21l
IHVwIHRhbGtpbmcKCgpJZiBub3QsIHN5c3RlbWN0bCBlbmFibGUgLS1zdGFydG5vdyBlc3BlYWt1
cAoKCkknbSB0cnlpbmcgdG8gd29yayBvdXQgd2h5IEknbSBnZXR0aW5nIGEgbG90IG9mIHRoaW5n
cyBhYm91dCBTQVBJLCBhbmQgCmlmIEkgbmVlZCB2b2ljZXMgaW5zdGFsbGVkIGJlY2F1c2UgSSBh
bSBnb2luZyBmcm9tIGEgY29tcGxldGVseSBzdGFuZGFyZCAKd2luZSBpbnN0YWxsYXRpb24gb24g
YSA2NGJpdCBtYWNoaW5lLCB5ZXQgaXQncyBmbG9vZGluZyBteSB0ZXJtaW5hbCB3aXRoIAphIHRv
biBvZiB2b2ljZSBsaXN0IHRoaW5ncyBhYm91dCBTQVBJIGhvd2V2ZXIgc28gSSdtIHVuc3VyZS4K
CgpEbyBJIG5lZWQgdG8gaW5zdGFsbCB1bmRlciB3aW5lIHRoZSBzcGVlY2hzZGsgYW5kIHRoaW5n
cyBvciBzaG91bGQgCm52ZGEyc3BlZWNoZCB0YWtlIGNhcmUgb2YgdGhhdC4gSXQncyBlc3RhYmxp
c2hpbmcgYSBjb25uZWN0aW9uLCBidXQuLi5ubyAKbHVjawoKT24gNi84LzIyIDEzOjQ0LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpLAo+Cj4gSSBzYXcgeW91
ciBpc3N1ZSBvbiBHaXRodWIsIHdpbGwgYmUgZ2V0dGluZyB0byBpdCBzb29uLgo+Cj4gUmlnaHQg
bm93LCBJJ20gdHJ5aW5nIHRvIGZpZ3VyZSBvdXQgaG93IHRvIGJvb3QgdXAgQXJjaGxpbnV4IGlu
dG8gdGhlCj4gYWNjZXNzaWJsZSBtb2RlIGluIHF1aWNrZW11LCBzbyBJIGNhbiBnZXQgYXQgbGVh
c3QgYSBzaW1pbGFyIGVudmlyb25tZW50Lgo+Cj4KPiBCZXN0IHJlZ2FyZHMKPgo+Cj4gUmFzdGlz
bGF2Cj4KPgo+IETFiGEgNy4gNi4gMjAyMiBvIDE1OjAyIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4+IEFzIHNhaWQgb24gdGhlIEdpdGh1YiBwYWdlLiBJ
J20gcnVubmluZyB0aGlzIHVuZGVyIEFyY2ggYW5kIGdldCBubwo+PiBvdXRwdXQgYXQgYWxsLgo+
Pgo+PiB3aGF0IEkgZG8KPj4KPj4gMS4gRG93bmxvYWQgV2luZG93cyBleGUgYW5kIGV4dHJhY3Qg
aXQKPj4KPj4gMi4gR3JhYiB0aGUgc2VydmVyL2NsaWVudCBhbmQgcmVuYW1lL3JlcGxhY2UgbnZk
YUNvbnRyb2xsZXJ4eC5kbGwKPj4gd2hlcmUgeHggaXMgMzIgb3IgNjQKPj4KPj4gMy4gc3RhcnQg
dGhlIHNlcnZlciB3aXRoIC4vbnZkYTJzcGVlY2hkIGluIGl0cyBmb2xkZXIKPj4KPj4gNC4gd2lu
ZSB3aW5kb3dzZXhlLmV4ZQo+Pgo+PiBJIGdldCBhIGNvbm5lY3Rpb24gaGFzIGJlZW4gZXN0YWJs
aXNoZWQgb24gdGhlIHRhYiB3aXRoIHRoZQo+PiBudmRhMnNwZWVjaGQgcnVubmluZywgYW5kIG5v
IHNwZWVjaCBmcm9tIHRoZSBwcm9ncmFtIGF0IGFsbCBob3dldmVyLAo+PiBhbmQgYSBib2F0bG9h
ZCBvZiBXSU5FIFNhcGkgZXJyb3JzLCBpdCBzZWVtcyogdG8gbWUgbGlrZSBpdCdzIGxvb2tpbmcK
Pj4gZm9yIHRoZSBTQVBJIHN0dWZmCj4+Cj4+IEFtIEkgbWlzc2luZyBzb21lZXRoaW5nIHN1cGVy
IHN1cGVyIG9idmlvdXMgaGVyZSBvcj8KPj4KPj4gT24gMDUvMDYvMjAyMiwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4+PiBJIGF2b2lkIEdVSSBhcHBzIGluIGdlbmVyYWwgYW5kIEkgdGhpbmsgdGhlIGxhc3QgdGlt
ZSBJIHVzZWQgV2luZQo+Pj4gbWlnaHQgaGF2ZSBiZWVuIHllYXJzIGJlZm9yZSBJIHdlbnQgYmxp
bmQsIGJ1dCB0aGlzIHN0aWxsIHNvdW5kcyBsaWtlCj4+PiBhIHNpZ25pZmljYW50IHN0ZXAgZm9y
d2FyZCBmb3IgdGhlIGFjY2Vzc2liaWxpdHkgb2Ygbm9uLW5hdGl2ZQo+Pj4gc29mdHdhcmUsIGFu
ZCBzdXJwcmlzaW5nbHkgZWxlZ2FudCB0byBib290Lgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo=

