Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B635501D6C
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 23:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649971686;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GqpkOecgUV1g49FllvQ27d4JB/zevGL6h1vRHADgeyo=;
	b=VSo5xGnW5v6rgHic5gRO0BfhsQHGNsmm0fhlk6uphcupTwVuWFBcpPx4L0sabjmLJisyQt
	N69u7Omd3f8IeZOt9tIjvXWXfNuQblFkEwOqaLZvOfGJQc4aF91nCdt9oVUaXJh1WfpfV4
	rUIxNRquVf6ymCJwUFgPJU5527gNbg0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-550-rfqu0e3PNPiwaqJu-1xCrQ-1; Thu, 14 Apr 2022 17:28:02 -0400
X-MC-Unique: rfqu0e3PNPiwaqJu-1xCrQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6FBD185A7B2;
	Thu, 14 Apr 2022 21:28:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A4D002167D64;
	Thu, 14 Apr 2022 21:28:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 39B97194034E;
	Thu, 14 Apr 2022 21:28:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8444.1649918366.111208.blinux-list@redhat.com>
 <mailman.8643.1649948214.111206.blinux-list@redhat.com>
 <mailman.8358.1649952886.111205.blinux-list@redhat.com>
 <mailman.8367.1649955905.111205.blinux-list@redhat.com>
 <mailman.8521.1649966212.111207.blinux-list@redhat.com>
 <mailman.8401.1649971499.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.8401.1649971499.111205.blinux-list@redhat.com>
Date: Thu, 14 Apr 2022 16:27:43 -0500
Subject: Re: FYI - Command Line Programs for the Blind
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.8402.1649971679.111205.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBjb3VsZC4gSSdsbCBwcm9iYWJseSB0cnkgdGhhdCBhdCBzb21lIHBvaW50IGFnYWluLCBzaW5j
ZSBJIGtub3cgSSdtIG5vdApnb2luZyB0byB3YW50IHRvIGJlIGluc3RhbGxpbmcgYW5kIHVuaW5z
dGFsbGluZyBkZXNrdG9zIGFuZCBzdWNoLCBwcmV0dHkKbXVjaCBzZXR0bGVkIG9uIE1hdGUuIEJ1
dCBGZWRvcmEgc2hvdWxkbid0IGJlICp0aGF0KiBiYWQuCkRldmluIFByYXRlcgpyLmQudC5wcmF0
ZXJAZ21haWwuY29tCgoKCgpPbiBUaHUsIEFwciAxNCwgMjAyMiBhdCA0OjI1IFBNIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPApibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90
ZToKCj4gV2VsbCBEZXZpbiwgRmVkb3JhIGJlaW5nIGEgd2F5IGZvciBSSCB0byB0ZXN0IG5ldyB2
ZXJzaW9ucyBvZiBzb2Z0d2FyZQo+IGJlZm9yZQo+IHRoZXkgaW5jbHVkZSB0aGVtIGluIFJIIGFu
ZCBwcm92aWRlIG5ldyByZWxlYXNlIG9mdGVuLCBubyB3b25kZXIgaWYgeW91Cj4gZmluZAo+IHNv
bWUgaXNzdWVzLgo+Cj4gTWF5YmUgeW91IGNvdWxkIHRyeSBEZWJpYW4/Cj4KPiBEaWRpZXIKPgo+
IExlIDE0LzA0LzIwMjIgw6AgMjE6NTYsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gYSDDqWNyaXQgOgo+ID4gQmVjYXVzZSBGZWRvcmEgd2FzIG11Y2ggbGVzcyBzdGFibGUgb24g
Km15KiBzeXN0ZW0sIGEgYnJhbmQgbmV3IEhQIGxhcHRvcAo+ID4gd2l0aCBhIG5ldyBBTUQgY2hp
cC4gSSBtZWFuIEknbSBnbGFkIGl0IHdvcmtzIGZvciB5J2FsbCwgYnV0IGl0IGRvZXNuJ3QKPiBu
b3cKPiA+IGZvciBtZS4gSSBpbnN0YWxsZWQgRmVkb3JhLCB0d2ljZSwgd2l0aCB0aGUgc2FtZSBy
ZXN1bHRzLiBBbHNvIFdpbmRvd3MKPiBqdXN0Cj4gPiB3b3Jrcy4gTm90aGluZyBqdXN0IGNyYXNo
ZXMgb3V0IG9mIG5vd2hlcmUsIGFsbCB0aGF0LiBQbHVzIGl0IGhhcyBhCj4gPiBzdWJzeXN0ZW0g
Zm9yIEFuZHJvaWQgbm93IHNvIEkgY2FuIHJ1biBBbmRyb2lkIGFwcHMgbGlrZSBQb2NrZXRjYXN0
LiBPZgo+ID4gY291cnNlLCBpZiBMaW51eCB3b3JrZWQgZm9yIG1lIEkgY291bGQganVzdCB1c2Ug
R1BvZGRlci4gQWggd2VsbC4KPiA+IERldmluIFByYXRlcgo+ID4gci5kLnQucHJhdGVyQGdtYWls
LmNvbQo+ID4KPiA+Cj4gPgo+ID4KPiA+IE9uIFRodSwgQXByIDE0LCAyMDIyIGF0IDEyOjA1IFBN
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+ID4gYmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4+IEt5bGUgYW5kIEkgZ2V0IGdvb2QsIHN0YWJsZSBMaW51
eCBzeXN0ZW1zIGhvd2V2ZXIgdGhvdWdoIERldmluLiBXaGF0Cj4gPj4gaGFwcGVuZWQgdG8geW91
IGJlaW5nIHRoZSB2b2ljZSBmb3Igb2gganVzdCBpbnN0YWxsIEZlZG9yYSwgYW5kIHVzZQo+IGVt
YWNzLgo+ID4+IFdoeSB0aGUgc3VkZGVuIHNoaWZ0IHRvIE1TJ3Mgc2lkZSBvZiB0aGluZ3MgdGhl
bj8KPiA+Pgo+ID4+IE9uIFRodSwgQXByIDE0LCAyMDIyIGF0IDExOjE0OjI5QU0gLTA1MDAsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsCj4gPj4gZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4gU2lyLCB5
b3Ugc2hvdWxkIGNsZWFyIHRoZSByZWQgZnJvbSB5b3VyIHZpc2lvbi4gU3VjaCByaGV0b3JpYyBp
cwo+ID4+IGltcHJvcGVyLgo+ID4+PiBMb2wgYW5kIHlvdSB0aG91Z2h0IHRoZSBzdHVmZiBjb21p
bmcgZnJvbSB0aGUgWWdnZHJhc2lsIHNjcmVlbiByZWFkZXIKPiA+PiBwYWdlCj4gPj4+IHdhcyBj
b25mcm9udGF0aW9uYWwuIEFueXdheXMsIEkgZG9uJ3QgbmVlZCB0byBjb252ZW5jZSB5b3UuIEkg
d2Fzbid0Cj4gPj4gdHJ5aW5nCj4gPj4+IHRvIGNvbnZlbmNlIHlvdS4gWW91IGFsd2F5cyB0aGlu
ayBwZW9wbGUgYXJlIG91dCB0byB0cnkgYW5kIGdldCB5b3UgdG8KPiA+Pj4gY2hhbmdlIGZyb20g
d2hhdGV2ZXIgaXQgaXMgeW91J3JlIHVzaW5nLiBMaWtlIHdoZW4gSSB0YWxrZWQgYWJvdXQKPiBH
ZW1pbmkKPiA+Pj4gYW5kIHN1Y2guIEFsc28gSSBkb24ndCAqbG92ZSogTWljcm9zb2Z0LiBJIGdl
dCBmcm9tIHRoZW0gYSBnb29kLCBzdGFibGUKPiA+Pj4gc3lzdGVtIHdpdGggY29tbXVuaXR5IHN1
cHBvcnQgYnkgYmxpbmQgdXNlcnMgYW5kIGRldmVsb3BlcnMuIEFuZCBpbgo+ID4+IHJldHVybiwK
PiA+Pj4gdGhleSBnZXQgd2hhdGV2ZXIgZGF0YSB0aGV5IGNhbiBvdXQgb2YgbXkgY29tcHV0ZXIg
dXNlLiBQZXJzb25hbGx5LCBpZgo+ID4+IHRoZXkKPiA+Pj4gdGhpbmsgSSdtICp0aGF0KiBpbnRl
cmVzdGluZywgSSB3ZWxjb21lIHRoZSBhdHRlbnRpb24uCj4gPj4+IERldmluIFByYXRlcgo+ID4+
PiByLmQudC5wcmF0ZXJAZ21haWwuY29tCj4gPj4+Cj4gPj4+Cj4gPj4+Cj4gPj4+Cj4gPj4+IE9u
IFRodSwgQXByIDE0LCAyMDIyIGF0IDk6NTYgQU0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiA8Cj4gPj4+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+
Pj4gT0sgZW5vdWdoIHdpdGggdGhlIE1pY3Jvc29mdCBjb21tZXJjaWFscy4gV2UgYXJlIHBhc3Qg
dGlyZWQgb2YgdGhlbSBieQo+ID4+Pj4gbm93LiBXZSBzZWUgbW9yZSB0aGFuIGVub3VnaCBvZiB0
aGVtIG9uIFRWLiBXaGF0IGhhcHBlbmVkIHRvIHlvdXIKPiA+Pj4+IGJlbG92ZWQgRU1BQ1M/IFlv
dSB3aWxsIG5vdCBjb252aW5jZSBhbnlvbmUgaGVyZSB0aGF0IHlvdXIgbmV3LWZvdW5kCj4gPj4+
PiBsb3ZlIG9mIE1pY3Jvc29mdCBpcyBhbnkgZ29vZCBmb3IgYW55b25lLiBHbyBjcmF3bCBiYWNr
IGludG8geW91cgo+ID4+Pj4gbWljcm9zb2Z0IGhvbGUgYW5kIGxlYXZlIHRoZSBMaW51eCBsaXN0
IGFsb25lLiBUaGlzIGlzIG5vdCB0aGUgcGxhY2UKPiA+PiBmb3IKPiA+Pj4+IE1pY3Jvc29mdCBz
cGFtLgo+ID4+Pj4KPiA+Pj4+IH5LeWxlCj4gPj4+Pgo+ID4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+ID4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4KPiA+Pj4+Cj4g
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiA+Pj4KPiA+Pgo+ID4+IC0tCj4gPj4gSmFjZSdzIHdvcmRzIGFyZSB1cCB0aGVyZS4gUXVv
dGVkIGFuZCBvbGQgbWVzc2FnZXMgYmVsb3cgdGhpcyBwb2ludAo+ID4+Cj4gPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Cj4gPj4KPiA+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

