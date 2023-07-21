Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F46575D05E
	for <lists+blinux-list@lfdr.de>; Fri, 21 Jul 2023 19:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689959454;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=b5auwP9p8j+Ijm31EUB8f+CsmB7ndHVhGIQggfCR1Us=;
	b=Zve3pjQAV79UsHbcbn8ZDVPDyLTDtzEkWSHHjg37vtUIAdJ7t4z2zkXhAj2I5lWBclp469
	nAPB1EYfOGzp8E4l5SV4qSx9STLdXYKngrC7RGKqf0QTOwBT14rZ05d/l0QFmnSLYRygB3
	mE+ODF25juFuxUx2R9jLGzpeaQaVOz0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-433-lXxSt888N96D0sOfkuT6wA-1; Fri, 21 Jul 2023 13:10:50 -0400
X-MC-Unique: lXxSt888N96D0sOfkuT6wA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFB43101A528;
	Fri, 21 Jul 2023 17:10:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 598EF2166B25;
	Fri, 21 Jul 2023 17:10:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DA7E21946A7A;
	Fri, 21 Jul 2023 17:10:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 21 Jul 2023 13:10:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Mint Installation?
To: blinux-list@redhat.com
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1762.1689875729.687819.blinux-list@redhat.com>
 <mailman.1705.1689884060.687816.blinux-list@redhat.com>
 <mailman.1831.1689948344.687816.blinux-list@redhat.com>
 <mailman.1852.1689953247.687816.blinux-list@redhat.com>
In-Reply-To: <mailman.1852.1689953247.687816.blinux-list@redhat.com>
Message-ID: <mailman.1531.1689959447.687813.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBJIHNhaWQgTGlnaHRkbSBieSBtaXN0YWtlLsKgIFVuZGVyIE1hdGUgdGhlIGRlZmF1
bHQgd2luZG93IG1hbmFnZXIgCnNlZW1zIHRvIGJlIE1hcmNvLsKgIFlvdSBjYW4gY2hhbmdlIHRv
IHRoZSBvbGRlciBvbmUgY2FsbGVkIE1ldGFjaXR5LgoKT24gRGViaWFuIHRoaXMgcHJvY2VkdXJl
IHdvcmtzLCBhbmQgcHJvYmJhYmx5IHdvdWxkIHdvcmsgb24gTWludC4KCmFwdCBpbnN0YWxsIG1l
dGFjaXR5CgogRnJvbSB5b3VyIElEIGF0IHRoZSBjb21tYW5kIHByb21wdC4KCmdzZXR0aW5ncyBz
ZXQgb3JnLm1hdGUuc2Vzc2lvbi5yZXF1aXJlZC1jb21wb25lbnRzIHdpbmRvd21hbmFnZXIgbWV0
YWNpdHkKClRoZW4gcmVib290LgpUbyBnbyBiYWNrIHRvIE1hcmNvCmdzZXR0aW5ncyBzZXQgb3Jn
Lm1hdGUuc2Vzc2lvbi5yZXF1aXJlZC1jb21wb25lbnRzIHdpbmRvd21hbmFnZXIgbWFyY28KClRo
ZW4gcmVib290LgoKWW91IGNvdWxkIHRyeSBpdCBpZiB5b3Uga2VlcCBnZXR0aW5nIGh1bmcgYW5k
IHNlZSBpZiBpdCBtYWtlcyBhIApkaWZmZXJlbmNlLsKgIE1heWJlIHlvdSBoYXZlIGEgZGlmZmVy
ZW50IHByb2JsZW0uCgoKT24gNy8yMS8yMyAxMToyNywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiBHb29kIG1vcm5pbmcsCj4gSWYgSSBkbyBjaGFuZ2UgbXkgV2lu
ZG93IG1hbmFnZXIsIHRoYXQgZG8geW91IHJlY29tbWVuZCBJIHN3aXRjaCB0bz8KPiBSaWdodCBu
b3csIEnigJltIGFjdHVhbGx5IGluIGEgc2l0dWF0aW9uIHdoZXJlIGEgdGV4dC1iYXNlZCBsb2dp
biBwcm9tcHQgY29tZXMgdXAsIHJhdGhlciB0aGFuIHRoZSBvbmUgd2hpY2ggaXMgYWNjZXNzaWJs
ZSB3aXRoIE9yY2EuCj4gVGhpcyBpcyBiZWNhdXNlIHdlIGhhZCBhIGh1Z2Ugc3Rvcm0gY29tZSB0
aHJvdWdoIGxhc3QgbmlnaHQuCj4gVGhhbmtmdWxseSB0aG91Z2gsIHdlIGRpZG7igJl0IGhhdmUg
YW55IHNpZ25pZmljYW50IGRhbWFnZSB0byBvdXIgcHJvcGVydHksIG90aGVyIHRoYW4gYSBmZXcg
dHJlZXMgdGlsdGVkLgo+IEkgbGVmdCBteSBMaW51eCBtYWNoaW5lIG9uIGR1cmluZyB0aGUgc3Rv
cm0gJiBwcm9iYWJseSBzaG91bGRuJ3QgaGF2ZS4KPiBJIGFsc28gZGlkbuKAmXQgaGF2ZSBpdCBw
bHVnZ2VkIGludG8gYSBVUFMuCj4gVGhhbmtzLAo+IEplc3NpY2EgRGFpbAo+ICAgCj4KPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEJsaW51eC1saXN0IDxibGludXgtbGlzdC1i
b3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uCj4gU2VudDogRnJpZGF5LCBKdWx5IDIxLCAyMDIzIDEwOjA2Cj4gVG86IGJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBTdWJqZWN0OiBSZTogTWludCBJbnN0YWxsYXRpb24/Cj4KPiAg
IMKgwqDCoCBJZiB5b3UgYXJlIHJ1bm5pbmcgTWF0ZSwgc29tZXRpbWVzIHRoZSBNYXJjbyBwcm9j
ZXNzIGJlY29tZXMgaHVuZywgd2hpY2ggY2F1c2VzIE9SQ0EgdG8gc2VlbSBodW5nLsKgIElmIHlv
dSBwcmVzcyBPUkNBK3NwYWNlIG9yIHRyeSBtb3ZpbmcgdGhlIG1vdXNlLCBpdCBtYXkgZ2V0IHlv
dSBvdXQgb2YgdGhlIHNpdHVhdGlvbi7CoCBJJ20gbm90IHJ1bm5pbmcgTWludCwgYnV0IGl0IGhh
cHBlbnMgb24gRGViaWFuIGFuZCBVYnVudHUsIGFuZCBNaW50IGlzIGRlcml2ZWQgZnJvbSBVYnVu
dHUuwqAgQSBtb3JlIHBlcm1hbmVudCBmaXggaXMgdG8gY2hhbmdlIHRvIHRoZSBMaWdodGRtIHdp
bmRvdyBtYW5hZ2VyLCBidXQgaXQgaXNuJ3QgYSBnb29kIGxvbmctdGVybSBzb2x1dGlvbi4uCj4K
Pgo+Cj4KPgo+IE9uIDcvMjAvMjMgMTY6MTQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4+IEhpLAo+PiBPY2Nhc2lvbmFsbHksIEnigJlsbCBleHBlcmllbmNlIE9y
Y2EgbG9ja2luZyB1cC4KPj4gV2hlbiB0aGlzIGhhcHBlbnMsIHNvbWV0aW1lcywgaXQncyBvbmx5
IGZvciBhIGZldyBzZWNvbmRzICYgb3RoZXIgdGltZXMsIEkgaGF2ZSB0byB3YWl0IGFzIGxvbmcg
YXMgNSBvciAxMCBtaW51dGVzLgo+PiBUaGlzIGNhbiBoYXBwZW4gd2l0aCBhbnkgYXBwLgo+PiBI
b3cgY2FuIEkgcHJldmVudCB0aGlzPwo+PiBJ4oCZbSB3b3JraW5nIHdpdGggYSBEZWxsIHByZWNp
c2lvbiA0ODAwIHdoaWNoIGhhcyAxNkdCIG9mIHJhbSAmIGEgMVRCIFNTRC4KPj4gU28sIGJhc2Vk
IG9uIHRoYXQsIHdoYXQgZG8geW91IHRoaW5rIHdvdWxkIGNhdXNlIHRoZXNlIGlzc3Vlcz8KPj4K
Pj4KPj4+IE9uIEp1bCAyMCwgMjAyMywgYXQgMTM6NTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4KPj4+IEplc3Np
Y2EsCj4+Pgo+Pj4gSSBqdXN0IHJlY2VudGx5IGluc3RhbGwgbWludCAyMS4yIG9uIGEgbGFwdG9w
IGFuZCBzbyBmYXIgaSBsb3ZlIGl0IGFzIHdlbGwuCj4+Pgo+Pj4gUm9kbmV5Cj4+Pgo+Pj4KPj4+
IE9uIDcvMTkvMjAyMyAwOTo0OCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4+PiBIZWxsbywKPj4+PiBJIGFtIGEgaHVnZSBmYW4gb2YgcG9kY2FzdHMhCj4+Pj4g
SSdkIGxvdmUgdG8gY2hlY2sgb3V0IHRoaXMgcHJvZ3JhbSBidXQgYmVmb3JlIEkgcHJvY2VlZCwg
SSdkIGxpa2UgdG8ga25vdyBpZiBpdCdsbCB3b3JrIG9uIExpbnV4IE1pbj8KPj4+PiBJIGp1c3Qg
dXBncmFkZWQgdG8gTWludCAyMS4yIGxhc3QgbmlnaHQgJiBhbSBsb3ZpbmcgaXQgc28gZmFyLgo+
Pj4+Cj4+Pj4KPj4+PiBUaGFua3MsCj4+Pj4gSmVzc2ljYSBEYWlsCj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

