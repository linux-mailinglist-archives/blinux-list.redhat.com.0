Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 086856B5FC3
	for <lists+blinux-list@lfdr.de>; Sat, 11 Mar 2023 19:27:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678559229;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eLqirl/WL7WQC1MsYStQ5t2luuxG4Ar9nO0PSFDyUtE=;
	b=UaW+ZAH7RjuqqM0YW6TeaydCEkJDH7lKbkuwwGfOtlnsbugJD+tzTiivHnUCe+H3NzDo4v
	TGjreLsHM74ZPv8u3qdVppfPFJaIwt7syVfRh8jbjongTxO8MZkU5ie1lLk/TP8KZVdhCh
	dqCk2nVw+7nCWD2DZWg7AMKXJMZQFIo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-265-IY1euGwYOU6cXbTE54snUQ-1; Sat, 11 Mar 2023 13:27:05 -0500
X-MC-Unique: IY1euGwYOU6cXbTE54snUQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8AFC38041E1;
	Sat, 11 Mar 2023 18:27:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 257A41121315;
	Sat, 11 Mar 2023 18:27:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6BB4B1946A69;
	Sat, 11 Mar 2023 18:27:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 11 Mar 2023 18:26:51 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: XFCE a11Y specific tweaks?
To: blinux-list@redhat.com
References: <mailman.2253.1678436282.1521160.blinux-list@redhat.com>
 <mailman.2232.1678451795.1521165.blinux-list@redhat.com>
 <mailman.2342.1678458650.1521161.blinux-list@redhat.com>
 <mailman.2251.1678458737.1521165.blinux-list@redhat.com>
 <mailman.2412.1678465672.1521167.blinux-list@redhat.com>
 <mailman.2361.1678466488.1521166.blinux-list@redhat.com>
 <mailman.414.1678557191.3486291.blinux-list@redhat.com>
In-Reply-To: <mailman.414.1678557191.3486291.blinux-list@redhat.com>
Message-ID: <mailman.324.1678559219.3486285.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VG8gYSBwb2ludC4KVGhlcmUncyB0aGUgR1RLMiBMWERFIGFuZCBHVEszIExYREUgb3V0IHRoZXJl
LiBZb3UnZCBuZWVkIHRvIHllcywgc2V0IHVwIAprZXlzIGZvciBzb21lIHRoaW5ncyBob3dldmVy
LCBidXQgZm9yIGEgbGlnaHR3ZWlnaHQgREUgd2l0aCBjYXZlYXRzLCBpJ2QgCnNheSBpdCdzIHBy
ZXR0eSBuaWNlLiBJdCdzIGxpa2UgYSB3YXkgbW9yZSBtaW5pbWFsIE1hdGUsIHRob3VnaCBJSVJD
IHRoZSAKdGFzayBzd2l0Y2hlciBhbmQgdGhlIHBhbmVsIGRvbid0IHJlYWQgd2VsbCB3aXRoIE9y
Y2EgZnJvbSB3aGF0IEkgcmVjYWxsZAoKT24gMy8xMS8yMyAxNzo1MywgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBpcyBseGRlIHVzZWFibGUgd2l0aCBvcmNhPwo+
Cj4gT24gMy8xMC8yMDIzIDg6NDEgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+IFllcywgaXQncyBseGRlLgo+Pgo+Pgo+Pgo+PiBKdWRlIDxqZGFzaGllbCBh
dCBwYW5peCBkb3QgY29tPgo+PiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbiBk
ZWZlbnNlIG9mIGxpYmVydHk6Cj4+IMKgIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBs
ZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4+IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQw
KQo+Pgo+PiAuCj4+Cj4+IE9uIEZyaSwgMTAgTWFyIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Cj4+PiBNYXRlIGlzIGEgZGVza3RvcCBmb3IgbG93IHJl
c291cmNlcywgY29tcGFyZWQgdG8gZ25vbWUuCj4+PiBJIG91Z2h0IHRvIHJlYWQgYWJvdXQgeCBm
IGMgZS4KPj4+IFRoZXJlIGlzIHlldCBhbm90aGVyIGRlc2t0b3Agd2l0aCBhIG5hbWUgbGlrZSB0
aGF0Lgo+Pj4KPj4+PiBPbiBNYXIgMTAsIDIwMjMsIGF0IDA4OjMyLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIAo+Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
Pj4+Pgo+Pj4+IEl0IGRvZXMsIGFzIGEgcGxlYXNhbnQgc3VycHJpc2UuCj4+Pj4KPj4+Pgo+Pj4+
IE5vdyBpZiBpdCdkIHF1aXQgcmFuZG9tbHkgc2F2aW5nIG15IHNlc3Npb25zLCB0aGF0J2QgaGVs
cC4gSSd2ZSBhIAo+Pj4+IG1pbmQgdG8ganVzdCBzdGFydCBicnV0ZSBmb3JjaW5nIHRoYXQgb25l
LiBJIGxpa2Ugd2hhdCBYRkNFIGlzIAo+Pj4+IGdvaW5nIGZvciwgaXQncyBhYnNvbHV0ZWx5IGxp
Z2h0IGFuZCBnb29kIGZvciBteSBsb3cgcG93ZXIgbWFjaGluZQo+Pj4+Cj4+Pj4gT24gMy8xMC8y
MyAxNDozMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4g
eWVzIGFuZCBoYXMgZm9yIHNvbWUgdGltZSBieSBub3cuwqAgSSB1c2VkIGl0IGEgY291cGxlIHll
YXJzIGFnby4KPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXgg
ZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPj4+Pj4gZGVmZW5z
ZSBvZiBsaWJlcnR5Ogo+Pj4+PiDCoCBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVh
c2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+Pj4+PiAtRWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0
MCkKPj4+Pj4KPj4+Pj4gLgo+Pj4+Pgo+Pj4+PiBPbiBGcmksIDEwIE1hciAyMDIzLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pgo+Pj4+Pj4gRG9lcyBvcmNh
IHdvcmsgd2l0aCB4IGYgYyBlIG5vdz8KPj4+Pj4+Cj4+Pj4+Pj4gT24gTWFyIDEwLCAyMDIzLCBh
dCAwMjoxNywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiAKPj4+Pj4+PiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+PiBRdWljayBxdWVzdGlv
bi4gSSd2ZSBwdXQgWEZDRcKgIG9uIGFuIEFyY2ggaW5zdGFsbCBvbiBhbiBvbGQgCj4+Pj4+Pj4g
bGFwdG9wLCBzaW5jZSBpdCdzIG9uZSB0aGF0IHRha2VzIHVwIHRoZSBsZWFzdCBzcGFjZSBvdXQg
b2YgYWxsIAo+Pj4+Pj4+IGRlc2t0b3BzIGFuZCBpcyBsaWdodHdlaWdodC4KPj4+Pj4+Pgo+Pj4+
Pj4+Cj4+Pj4+Pj4gU28gd2hhdCBhcmUgc29tZSBzdWdnZXN0ZWQgdGhpbmdzIEkgc2hvdWxkIGRv
IGZyb20gYW4gQTExWSAKPj4+Pj4+PiBzdGFuZHBvaW50PyBJJ20gc2V0dGluZyB1cCBzaG9ydGN1
dHMgZm9yIHRoaW5ncyBsaWtlIEZpcmVmb3ggb3IgCj4+Pj4+Pj4gVGh1bmRlcmJpcmQsIGFuIHNv
IG9uLiBJJ3ZlIGNoZWNrZWQgdGhlIGJveCBmb3IgYXNzaXN0aXZlIHRlY2gsIAo+Pj4+Pj4+IEkn
dmUgc2V0IG15IC5iYXNocmMgdXAgY29ycmVjdGx5Lgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBT
byB3aGF0IFhGQ0Ugc3BlY2lmaWMgdGhpbmdzIGRvIHBlb3BsZSBzdWdnZXN0PyBJJ20gc3RhcnRp
bmcgdG8gCj4+Pj4+Pj4gbGlrZSBYRkNFIG5vdyBJJ3ZlIGdvdCB0aGUgaGFuZyBvZiBpdCBhIGxp
dHRsZSwganVzdCB3b25kZXJpbmcgCj4+Pj4+Pj4gd2hhdCBBMTFZIHRoaW5ncyBJIG5lZWQgdG8g
ZG8gaW4gb3JkZXIgdG8gZ2V0IHRoZSBsYXN0IGZldyBraW5rcyAKPj4+Pj4+PiBvdXQgb2YgaXQK
Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4+
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

