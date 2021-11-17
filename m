Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA53F453DE6
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 02:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637113883;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JuAygkjSZzMxJRLzHUy/9sEd8h+Yh8O5EFrMfA9RxeU=;
	b=Kz35qNVg+2hh0M1f4AqiBKJangUapzcBsuObyiLu+hmXs4Fg1VS7veGpo4TdwS0LVDtsbv
	ACeYLxSlhYneO6WKTbUljBPKgdymKTvRBGi1lH2sSGiYVzXzIKJhQ5lgr26yQaJwveWTaQ
	LVIs3LD31uQr+mhUx3M2w0MIKgeqPEQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-424-fXayXv6IPB6x26KQICCK9w-1; Tue, 16 Nov 2021 20:51:19 -0500
X-MC-Unique: fXayXv6IPB6x26KQICCK9w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0080D804149;
	Wed, 17 Nov 2021 01:51:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCA3560BF1;
	Wed, 17 Nov 2021 01:51:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5E0F54A703;
	Wed, 17 Nov 2021 01:51:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AH1p9Bl032734 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 20:51:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 71173404727A; Wed, 17 Nov 2021 01:51:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CE2D4047272
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 01:51:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5502A18162C1
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 01:51:09 +0000 (UTC)
Received: from st43p00im-ztbu10063601.me.com (st43p00im-ztbu10063601.me.com
	[17.58.63.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-84-Cyx0chrXPx2awjkPnVYqhw-1; Tue, 16 Nov 2021 20:51:07 -0500
X-MC-Unique: Cyx0chrXPx2awjkPnVYqhw-1
Received: from [192.168.184.131] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztbu10063601.me.com (Postfix) with ESMTPSA id 86AEF700400
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 01:51:06 +0000 (UTC)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
Message-ID: <aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
Date: Tue, 16 Nov 2021 20:51:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
	definitions=2021-11-16_07:2021-11-16,
	2021-11-16 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-2009150000 definitions=main-2111170006
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AH1p9Bl032734
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgpJIGhhdmUgYmVlbiB1c2luZyBBY2Nlc3NpYmxlIENvY29udXQgZm9yIGFib3V0IGEgbW9u
dGguCgpPcmNhIGNhbiBzdGFydCBhdCBib290LgoKVGhhbmtzLAoKUm9iCgoKT24gMTEvMTYvMjEg
ODo0NiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiDCoMKg
wqAgR29vZCBhZnRlcm5vb24gb3IgZ29vZCBldmVuaW5nIG9yIHdoYXRldmVyIHRpbWUgaXQgaXMg
d2hlcmV2ZXIgeW91IAo+IGFyZSByZWFkaW5nIHRoaXMuIE15IHN1YmplY3QgbGluZSBwcmV0dHkg
bXVjaCBzYXlzIGV2ZXJ5dGhpbmcgdGhlcmUgaXMgCj4gdG8gdGhpcyBtZXNzYWdlLiBJIGFtIGxv
b2tpbmcgZm9yIGluYXBwcm9wcmlhdGUgTGVubml4IGRpc3RyaWJ1dGlvbiB0byAKPiBydW4gaW4g
YSB2aXJ0dWFsIGVudmlyb25tZW50LiBGcm9tIGV2ZXJ5dGhpbmcgSSB0aGluayBJIGtub3csIEkn
bSAKPiB0aGlua2luZyB0aGUgYmVzdCBzb2x1dGlvbiBpcyBzb21ldGhpbmcgdGhhdCBjYW4gYmUg
aW5zdGFsbGVkIGVhc2lseSwgCj4gYW5kIGFsbG93IG1lIHRvIGluc3RhbGwgb3JjYSByZWFsbHkg
cXVpY2tseSBpZiBub3QgZG8gaXQgaW4gdGhlIHNhbWUgCj4gaW5zdGFsbC4gQW55IGdvb2Qgc3Vn
Z2VzdGlvbnM/IEkgZG8gaGF2ZSBhY2Nlc3MgdG8gYSBGZWRvcmEgY29yZSBJU08gCj4gaW1hZ2Ug
YnV0IEknbSBqdXN0IHdvbmRlcmluZyBpZiB0aGVyZSdzIHNvbWV0aGluZyBiZXR0ZXIgb3Igd2ls
bCB0aGlzIAo+IGJlIHN1ZmZpY2llbnQ/IExvb2tpbmcgZm9yd2FyZCB0byByZWFkaWcgcmVzcG9u
c2Ugd2FrZSB1cCB0byBteSBxdWVzdGlvbi4KPgo+Cj4gUGxlYXNlIGJlIGF3YXJlIHRoYXQgSSBh
bSBkaWN0YXRpbmcgdGhpcyB0byB0aGUgY29tcHV0ZXIgYW5kIFdpbmRvd3MuIAo+IEkgYW0gdXNp
bmcgZGljdGF0aW9uIHNvZnR3YXJlIGJlY2F1c2Ugb2YgYW4gYWRkaXRpb25hbCBkaXNhYmlsaXR5
LiBJZiAKPiB0aGVyZSdzIHNvbWV0aGluZyB0aGF0IEkndmUgd3JpdHRlbiBhYm91dCB0aGF0IHlv
dSB0cnVseSBkbyBub3QgCj4gdW5kZXJzdGFuZCwgcGxlYXNlIHdyaXRlIG1lIGFuZCBhc2tlZCBt
ZSB3aGF0IEkgbWF5IGhhdmUgbWVhbnQuIEkgCj4gdGhhbmsgeW91IGtpbmRseSBpbiBhZHZhbmNl
IGZvciByZWFkaW5nIHRoaXMuCj4KPgo+Cj4gT24gMTEvMTYvMjAyMSAzOjA2IFBNLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBUaGFuayB5b3UgRGlkaWVyLWFu
ZC1LeWxlLiBJIHdpbGwgY2VydGFpbmx5IHJ1biB5b3VyIGNvbW1hbmQsIGJ1dCBkbyAKPj4gSSBu
ZWVkIHRvIHVuIG1vdW50IGFueXRoaW5nPyBJIHdvdWxkIGFsc28gZmlndXJlIEkgd291bGQgYmUg
c2l0dGluZyAKPj4gb3V0c2lkZSBvZiB0aGF0IG1kZWlhIGRpcmVjdG9yeT8gTy1hbmQteWVzLCBE
aWRpZXIsIGl0IGlzIHZmYXQuCj4+IENoaW1lCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

