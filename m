Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DB06D9824
	for <lists+blinux-list@lfdr.de>; Thu,  6 Apr 2023 15:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680787624;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c+C/BILWBnqQXEdxMkwKxxcoHpOExA5KHqHL6HYsMpc=;
	b=KYcp+1Pq+i3tW40qrAZnMMJwac9Wy99xqIUYL9Llml7WE12Ya4oFM/97FrijyVLMqhMf9P
	44CiqVrSlmONQ67RIUqg/bvFk7eH18/rllHPkTresKLCvPzgEh9Wd1SIYSQBW7de00RSlk
	2Rs0rugj7PbO2dkHVfClJZPB7sktbg0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-623-5XlqocsFMSKRlwnRjHAuPw-1; Thu, 06 Apr 2023 09:27:01 -0400
X-MC-Unique: 5XlqocsFMSKRlwnRjHAuPw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F638185A7A8;
	Thu,  6 Apr 2023 13:26:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DF3452027063;
	Thu,  6 Apr 2023 13:26:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4495019465A2;
	Thu,  6 Apr 2023 13:26:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 6 Apr 2023 06:26:47 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Debian beginner questions/looking for a good rolling distro
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2210.1680764024.558771.blinux-list@redhat.com>
 <mailman.2174.1680776194.558770.blinux-list@redhat.com>
In-Reply-To: <mailman.2174.1680776194.558770.blinux-list@redhat.com>
Message-ID: <mailman.2208.1680787612.558769.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8KCmNhbiB5b3UgZ2l2ZSBpbnN0cnVjdGlvbnMgb24gaG93IHRvIGdldCBpdCB3b3JraW5n
PwoKSSBjb3VsZCBuZXZlciBnZXQgaXQgdG8gd29yawoKSSBhbSBydW5uaW5nIHdpbmRvd3MxMQoK
dGhhbmtzCgpIYW5rCgoKT24gNC82LzIwMjMgMzoxNiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBJIGtub3cgeW91IGNhbiBpZiB5b3UgYXJlIHJ1bm5pbmcg
V2luZG93cyAxMSBzaW5jZSBJIGRpZCBpdC4gIEnigJltIG5vdCBzdXJlIGFib3V0IFdpbmRvd3Mg
MTAuCj4KPiBSeWFuIE1hbm4KPiBDZXJ0aWZpZWQgQXNzaXN0aXZlIFRlY2hub2xvZ3kgSW5zdHJ1
Y3Rpb25hbCBTcGVjaWFsaXN0Cj4gcm1hbm4wNTgxQGdtYWlsLmNvbQo+IDM4Ni0zODMtNTE3NQo+
Cj4KPj4gT24gQXByIDYsIDIwMjMsIGF0IDI6NTMgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiDvu79IZWxs
byBub3Qgc3VyZSBpZiB5b3UgY2FuIHVzZSBvcmNhIG9uIHdzbDIKPj4KPj4gSGFuawo+Pgo+Pgo+
Pj4gT24gNC81LzIwMjMgMTI6NTIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+PiBIaSwKPj4+Cj4+PiBhbnN3ZXIgaW4gbGluZS4KPj4+Cj4+PiBMZSAwNS8w
NC8yMDIzIMOgIDIwOjU4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0IDoKPj4+IFRoZSBvdGhlciBpc3N1ZSB3aXRoIGFyY2ggaXMgdGhhdCBpdCBkb2VzIG5vdCBz
dXBwb3J0IHNlY3VyZSBib290IGFsbCB0aG91Z2h0IHRvCj4+PiBiZSBmYWlyLCBzbGludCBkb2Vz
buKAmXQgZWl0aGVyLgo+Pj4KPj4+IFRoaXMgaXMgY29ycmVjdC4gQnV0IGlmIHVzaW5nIFdTTDIg
aW4gV2luZG93cyB5b3UgY2FuIGRvd25sb2FkIGFuICh1bm9mZmljaWFsKQo+Pj4gQXJjaCBXU0wg
ZnJvbSB0aGUgTWljcm9zb2Z0IFN0b3JlLgo+Pj4gTGlua3M6Cj4+PiBodHRwczovL3d3dy5taWNy
b3NvZnQuY29tL2VuLXVzL3NlYXJjaC9zaG9wL2FwcHM/cT1saW51eAo+Pj4gaHR0cHM6Ly9hcHBz
Lm1pY3Jvc29mdC5jb20vc3RvcmUvZGV0YWlsL2FyY2gtd3NsLzlNWk5NTktTTTczWD9obD1lbi11
cyZnbD11cwo+Pj4KPj4+IEkgZGlkbid0IHRyeSwgbm90IGhhdmluZyBhIFdpbmRvd3MgaW5zdGFs
bGF0aW9uCj4+PiBBIHdvcmthcm91bmQgaXMgdG8gcnVuIG9uZSBvZiB0aGUgc3lzdGVtIGluIGEg
dmlydHVhbCBtYWNoaW5lLgo+Pj4KPj4+IENoZWVycywKPj4+IERpZGllcgo+Pj4gZGlkaWVyYXRz
bGludGRvdGZyCj4+Pgo+Pj4+IE1hdHRoZXcKPj4+Pgo+Pj4+PiBPbiBBcHIgNSwgMjAyMywgYXQg
MTI6MjQgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0
QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBMZSAwNS8wNC8yMDIzIMOgIDE3OjI5LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+Pj4+IEFzIGZv
ciB3aGF0IEkgdXNlIG9uIGEgZGFpbHkgYmFzaXM/Cj4+Pj4+PiBpMyBmb3IgYSB3bQo+Pj4+Pj4g
RmlyZWZveCBmb3IgYSBicm93c2VyCj4+Pj4+PiBQaWRnaW4gZm9yIElNL0lSQyBhbmQgc28gb24K
Pj4+Pj4+IFRleHQgZWRpdG9ycwo+Pj4+Pj4gS29kaSBmb3IgYSBtZWRpYSBjZW50ZXIKPj4+Pj4+
IG1wdiBmb3IgcGxheWluZyB0aGluZ3MgaW4gdGhlIHRlcm1pbmFsLgo+Pj4+PiBGb3IgeW91ciBp
bmZvcm1hdGlvbiBhbGwgb2YgdGhlbSBhcmUgaW5jbHVkZWQgaW4gU2xpbnQgd2l0aCBvbmUgZXhj
ZXB0aW9uOiBrb2RpCj4+Pj4+Cj4+Pj4+IERpZGllcgo+Pj4+PiBkaWRpZXJhdHNsaW50LmZyCj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IC0t
IAo+PiBUaGlzIGVtYWlsIGhhcyBiZWVuIGNoZWNrZWQgZm9yIHZpcnVzZXMgYnkgQVZHIGFudGl2
aXJ1cyBzb2Z0d2FyZS4KPj4gd3d3LmF2Zy5jb20KPj4KPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

