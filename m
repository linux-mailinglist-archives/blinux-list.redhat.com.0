Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D10D867726A
	for <lists+blinux-list@lfdr.de>; Sun, 22 Jan 2023 21:34:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674419693;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RtqHuo0MGyKs6Ea53mdU5SkwBSfJKbBafjuPT73AdnU=;
	b=aWLtwDry0rDKnFLZ5yiCluJNNxCOJznT7+hPDlcvTY6LjSPmJ66D/j2CtJMzujbX2Gna3W
	x3yP6tdoEG2ANwI6Dvsul0/qjmFRFJ+R5DquFaK1fp2lTGiaKau+odfxzhkPZluSOg6M+Z
	TL9YGrCEzy3U+M83yQfQEfEYnxnfeHA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-37-cb9_f-H1Ok6jQwSCw4F_OA-1; Sun, 22 Jan 2023 15:34:50 -0500
X-MC-Unique: cb9_f-H1Ok6jQwSCw4F_OA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC814802BF5;
	Sun, 22 Jan 2023 20:34:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5E41AC15BAD;
	Sun, 22 Jan 2023 20:34:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E4CEC194658D;
	Sun, 22 Jan 2023 20:34:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 22 Jan 2023 21:34:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: new version of jenux
To: blinux-list@redhat.com
References: <mailman.286.1674235413.8169.blinux-list@redhat.com>
 <mailman.358.1674274777.8176.blinux-list@redhat.com>
 <mailman.397.1674314804.8168.blinux-list@redhat.com>
 <mailman.400.1674322782.8168.blinux-list@redhat.com>
 <mailman.410.1674327069.8170.blinux-list@redhat.com>
 <mailman.504.1674407856.8170.blinux-list@redhat.com>
In-Reply-To: <mailman.504.1674407856.8170.blinux-list@redhat.com>
Message-ID: <mailman.520.1674419686.8174.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpBdCB0aGUgcm9vdCBhdCB0aGUgSVNPIHRoZXJlIGlzIGRpcmVjdG9yeSBhcmNoL2Fh
cmNoNjQgc28sIHNvIHRoZSBhbnN3ZXIgaXMKcHJvYmFibHkgeWVzCgpDaGVlcnMsCkRpZGllcgot
LSAKRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCgpMZSAyMi8wMS8yMDIzIMOgIDE4OjE1
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGVsbG8s
Cj4gCj4gaXMgc29tZSB3YXkgdG8gcnVuIEplbnV4IG9uIFJhc3BiZXJyeSBQaSA0QiBvciA0MDA/
Cj4gCj4gVGhhbmtzLgo+IAo+IEJlc3QgcmVnYXJkcwo+IAo+IFZvanRhLgo+IAo+IERuZSAyMS4g
MDEuIDIzIHYgMTk6NTEgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXBzYWwo
YSk6Cj4+IERhbmllbCBuYXNoIGhhcyBiZWVuIGF3YXJlIG9mIHRoaXMgcHJvYmxlbSBmb3IgYWxs
IGZvdXIgZmFpbGluZyBpc29zLsKgIEhlCj4+IHN1Z2dlc3RlZCBJIHRha2UgYWN0aW9ucyBJIHRo
b3VnaHQgcXVpdGUgcmlza3kgd2l0aCByZWdhcmQgdG8gdWVmaSBvbiB0aGUKPj4gc2luZ2xlIGNv
bXB1dGVyIEkgaGF2ZS7CoCBJIHRvb2sgc29tZSBvZiB0aG9zZSBhY3Rpb25zIGFuZCB0aG9zZSBh
Y3Rpb25zCj4+IGZhaWxlZCB0byBzb2x2ZSB0aGlzIHByb2JsZW0uwqAgTWljcm9zb2Z0IGlzIGJ1
cnJpZWQgZGVlcCBpbiB0aGUgbWlkZGxlIG9mCj4+IHRoaXMgbWVzcyBhcyBvcmlnaW5hdG9yIG9m
IHVlZmkgYW5kIERhbmllbCBOYXNoIGdvdCB0aGUgdWVmaSBjb2RlIGZyb20KPj4gZmVkb3JhLsKg
IEhlIG1heSBoYXZlIGRvbmUgdGhpbmdzIHRvIHRoZSBjb2RlIGFzIGl0IHdlbnQgaW50byBqZW51
eCB0aGF0Cj4+IGJyb2tlIHRoaW5ncyBidXQgSSBjYW4ndCBzYXkgZm9yIHN1cmUgc2luY2UgSSB3
YXNuJ3QgbG9va2luZyBvdmVyIGhpcwo+PiBzaG91bGRlci7CoCBJZiBJIGNhbiBnZXQgYSBiZSBt
eSBleWVzIHZvbHVudGVlciB0byB0ZWxsIG1lIGFueSBlcnJvcgo+PiBtZXNzYWdlcyB0aGF0IGNv
bWUgdXAgYXMgdGhpcyBmYWlsZWQgaXNvIGJvb3RzIEknbGwgZ2V0IHRob3NlIHRvIERhbmllbAo+
PiBOYXNoIGFuZCB0aGVuIHdlIG1heSBoYXZlIGxvY2F0ZWQgb25lIG9mIGhpcyBwcm9ibGVtcy4K
Pj4KPj4KPj4KPj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBm
b3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPj4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+PiDCoCBzb2Fw
LCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+PiAt
RWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPj4KPj4gLgo+Pgo+PiBPbiBTYXQsIDIxIEph
biAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pgo+Pj4g
SGkgSnVkZC7CoCBIYXZlIHlvdSByZXBvcnRlZCB0aGlzIHRvIERhbmllbCBOYXNoP8KgIEkgdGhp
bmsgaGUgaXMgdGhlIGpldXgKPj4+IGRldmVsb3Blci7CoCBZb3UgbWlnaHQgd2FudCB0byBsZXQg
aGltIGtub3cgd2hhdCBpcyBnb2luZyBvbiBzbyBoZSBjYW4gdHJhY2sKPj4+IGl0IGRvd24uwqAg
VGhhbmtzLgo+Pj4KPj4+IE1hdHRoZXcKPj4+Cj4+Pgo+Pj4KPj4+PiBPbiBKYW4gMjEsIDIwMjMs
IGF0IDEwOjI2IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+Pj4gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gWW91IGhhdmUgdG8gaW5zdGFs
bCB0aGUgdmVyc2lvbiB0byBmaW5kIG91dC7CoCBPbiB0aGUgY3VycmVudCBlcXVpcG1lbnQKPj4+
PiB0aGF0J3Mgbm90IHBvc3NpYmxlLsKgIFNvbWV0aW1lIHRoaXMgd2Vla2VuZCBJJ2xsIHNlZSBp
ZiBiZSBteSBleWVzIGNhbgo+Pj4+IGdpdmUgbWUgaW5mb3JtYXRpb24gYWJvdXQgd2hhdCBjb21l
cyB1cCBvbiB0aGUgc2NyZWVuIGJlZm9yZSBqZW51eCBmYWlscwo+Pj4+IHRvIHNwZWFrIGFuZCBy
ZWJvb3RzLsKgIEknbSBjdXJpb3VzIGlmIGFueSBjb21wdXRlciBvdGhlciB0aGFuIHRoZSBhdXRo
b3Incwo+Pj4+IGNhbiBpbnN0YWxsIHRoaXMgb3IgdGhlIGxhc3QgdGhyZWUgdmVyc2lvbnMgb2Yg
amVudXggd2hpY2ggaXMgbXkgcmVhc29uCj4+Pj4gZm9yIHBvc3RpbmcgaGVyZS4KPj4+Pgo+Pj4+
Cj4+Pj4KPj4+PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZv
dXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+Pj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPj4+PiBzb2Fw
LCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+Pj4+
IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+Pj4+Cj4+Pj4gLgo+Pj4+Cj4+Pj4gT24g
RnJpLCAyMCBKYW4gMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPj4+Pgo+Pj4+PiB3aGF0IGlzIG5ldyBpbiB0aGUgbGF0ZXN0IHZlcnNpb24/Cj4+Pj4+Cj4+
Pj4+IE9uIDEvMjAvMjAyMyA5OjIzIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+Pj4+Pj4gTm90IHJlYWR5IGZvciBkb3dubG9hZC7CoCBUaGUgc2hhNTEyc3Vt
IGZpbGUgdXAgb24gdGhlIHdlYnNpdGUgdG8gY2hlY2sgdGhlCj4+Pj4+PiBpc28ncyBpbnRlZ3Jp
dHkgZG9lc24ndCBtYXRjaC7CoCBUaGlzIG9uZSBwcm9iYWJseSB3b24ndCBoYXZlIGFueSBhYmls
aXR5Cj4+Pj4+PiB0byBpbnN0YWxsIG9uIHRoaW5rcGVuZ3VpbiBjb21wdXRlcnMgZWl0aGVyIHNp
bmNlIHRoZSBsYXN0IHRocmVlIGlzb3MgYWxzbwo+Pj4+Pj4gZmFpbGVkIGJ1dCBJJ2xsIGNoZWNr
IGl0IG91dCBqdXN0IHRvIG1ha2Ugc3VyZSB0aGUgbG9vc2luZyBzdHJlYWsgcmVtYWlucwo+Pj4+
Pj4gdW5icm9rZW4uCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4
IGRvdCBjb20+Cj4+Pj4+PiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbiBkZWZl
bnNlIG9mIGxpYmVydHk6Cj4+Pj4+PiDCoCBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQ
bGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+Pj4+Pj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3Is
IDE5NDApCj4+Pj4+Pgo+Pj4+Pj4gLgo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Pgo+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo=

