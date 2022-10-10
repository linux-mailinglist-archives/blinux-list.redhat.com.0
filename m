Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE845FA32F
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 20:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665425456;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UNWX9fbi4ix52htHN+T9lcN0L2GonIGbvmMgVWjP2aQ=;
	b=MMHjTmP4WXSq8fMhPBjnamtDvRjpxY1HZgP0swO5EKgzECJZ2hIjVxImZDQ6idgSD5RqQ9
	0g83aZQNK/FdCdxeolmoNJ1ahX2rjMr3QF9qzlTKxgFIqGozy9chUx+bxJWWAvDWK2TNJz
	T6CxHthTUxZaWzV9t4tze8c88fRvV90=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-42-0-9dmwe2P8y0016zYElJxw-1; Mon, 10 Oct 2022 14:10:52 -0400
X-MC-Unique: 0-9dmwe2P8y0016zYElJxw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 45E19185A79C;
	Mon, 10 Oct 2022 18:10:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5F69F49BB62;
	Mon, 10 Oct 2022 18:10:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0779A1946A48;
	Mon, 10 Oct 2022 18:10:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 14:10:44 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: TDSR?
In-Reply-To: <mailman.6853.1665423932.6082.blinux-list@redhat.com>
References: <mailman.6579.1665417367.6077.blinux-list@redhat.com>
 <mailman.6597.1665417915.6081.blinux-list@redhat.com>
 <mailman.6601.1665418715.6081.blinux-list@redhat.com>
 <mailman.7185.1665419482.6076.blinux-list@redhat.com>
 <mailman.6853.1665423932.6082.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.6257.1665425449.6074.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IGZvcmdvdCBmZW5yaXIuCgoKCkp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+CiJU
aGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluIGRlZmVuc2Ugb2YgbGliZXJ0eToKIHNv
YXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCi1F
ZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQoKLgoKT24gTW9uLCAxMCBPY3QgMjAyMiwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gU28gbmVpdGhlciB0ZHNy
IG5vciB5YXNyIHdpbGwgbGFuZCBpbiBTbGludCAxNS4wLi4uCj4KPiAuLi4gd2hpY2ggYWxyZWFk
eSBpbmNsdWRlcyBzcGVlY2gtZGlzcGF0Y2hlciwgZXNwZWFrdXAsIHNwZWVjaGQtdXAsIHNwZWVj
aGQtZWwsCj4gZW1hY3NwZWFrLCBicmx0dHksIGFuZCBvZiBjb3Vyc2Ugb3JjYSBzbyBjYW4gYmUg
dXNlZCBvbiB0aGUgY29uc29sZSBhcyBpbgo+IGdyYXBoaWNhbCBlbnZpcm9ubWVudHMgKG1haW4g
aW5jbHVkZWQgYXJlIE1BVEUgYW5kIExYUXQpIGFuZCBzd2l0Y2ggYmFjayBhbmQKPiBmb3J0aCBi
ZXR3ZWVuIGNvbnNvbGUgYW5kIGdyYXBoaWNhbCB3aXRob3V0IGxvc2luZyBzcGVlY2guCj4KPiBJ
IHdvdWxkIGJlIGdsYWQgdG8gYW55b25lIHRlc3RpbmcgdGhlIHNsaW50LTE1LjAgcmVsZWFzZSBj
YW5kaWRhdGUgMiwgSVNPCj4gYXZhaWxhYmxlIGhlcmU6Cj4gaHR0cHM6Ly9zbGFja3dhcmUudWsv
c2xpbnQveDg2XzY0L3NsaW50LTE1LjAvaXNvLwo+IFBsZWFzZSByZWFkIGZpcnN0Ogo+IGh0dHBz
Oi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82NC9zbGludC0xNS4wL1JFQURNRS1yYzIKPiBodHRw
czovL3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sI19pbnN0YWxsX3NsaW50Cj4gaHR0cHM6Ly9z
bGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50LTE1LjAvaXNvL1JFQURNRS1hbHQuaXNvCj4K
Pgo+IElmIHlvdSBsaWtlIGl0IHlvdSB3aWxsIG5vdCBoYXZlIHRvIHJlaW5zdGFsbCB3aGVuIHRo
ZSAib2ZmaWNpYWwgcmVsZWFzZSIgSVNPCj4gd2lsbCBiZSBhdmFpbGFibGUgaW4gYSB2ZXJ5IGZl
dyBkYXlzLiBPbiB0aGUgb3RoZXIgaGFuZCBpZiBtYWpvciBidWdzIGFyZSBmb3VuZAo+IEkgd2ls
bCBwcm92aWRlIGFub3RoZXIgSVNPLCBlbHNlLCBqdXN0IHVwZGF0ZSB0aGUgaW5zdGFsbGVkIHBh
Y2thZ2VzIHRvIHByYXZpZGUKPiBmaXhlcyB3aWxsIGJlIGVub3VnaC4KPgo+IEJlc3QsCj4gRGlk
aWVyCj4gLS0KPiBEaWRpZXIgU3BhaWVyCj4gZGlpZGVyYXRzbGludGRvdGZyCj4KPgo+IExlIDEw
LzEwLzIwMjIgPyAxODozMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhID9j
cml0wqA6Cj4gPiBUZHNyIGlzIGluIGZhY3QgbXVjaCBsaWtlIFlBU1IgaW4gZnVuY3Rpb25hbGl0
eSBmcm9tIHdoYXQgSSBjYW4gdGVsbCwgd2l0aCB0aGUKPiA+IGV4Y2VwdGlvbiB0aGF0IGl0IGFw
cGVhcnMgdGhlcmUgaXMgbm8gd2F5IHRvIGNoYW5nZSB3aGF0IHZvaWNlIGl0IHVzZXMgd2l0aG91
dAo+ID4gZWRpdGluZyB5b3VyIHNwZWVjaC1kaXNwYXRjaGVyIGNvbmZpZ3VyYXRpb24uIEkgZGlk
bid0IGZpbmQgYW55IG1lbnRpb24gb2YgYW4KPiA+IGV4Y2VwdGlvbiBkaWN0aW9uYXJ5IGVpdGhl
ciwgd2hpY2ggd2FzIGluY2x1ZGVkIGluIFlBU1IgYXMgSSByZWNhbGwsIHRob3VnaCBpdAo+ID4g
aGFzIGJlZW4gYSB2ZXJ5IGxvbmcgdGltZSBzaW5jZSBJIHVzZWQgdGhhdC4gVGhhdCBzYWlkLCBJ
IHNlZSBubyBhZHZhbnRhZ2UgdG8KPiA+IHVzaW5nIGl0IGlmIHlvdSBhbHJlYWR5IGhhdmUgU3Bl
YWt1cCBydW5uaW5nLiBJIGFsc28gZG9uJ3Qgc2VlIGFueSBhZHZhbnRhZ2UgdG8KPiA+IHJ1bm5p
bmcgU3BlYWt1cCBhbmQgRmVucmlyIGF0IHRoZSBzYW1lIHRpbWUsIGFuZCB0aGUgcHJpbWFyeSBh
ZHZhbnRhZ2Ugb2YgRmVucmlyCj4gPiBvdmVyIFNwZWFrdXAsIGFzaWRlIGZyb20gc3BlbGwgY2hl
Y2sgYW5kIG90aGVyIHVzZWZ1bCBmZWF0dXJlcywgaXMgc2ltcGx5IHRoYXQgYQo+ID4ga2VybmVs
IHVwZGF0ZSB3b24ndCBldmVuIHRlbXBvcmFyaWx5IGJyZWFrIHlvdXIgc2NyZWVuIHJlYWRlciBh
cyBJIGhhdmUgc2Vlbgo+ID4gaGFwcGVuLCB0aG91Z2ggc3VjaCBicmVha2FnZSBkb2VzIG9jY3Vy
IHJhdGhlciBpbmZyZXF1ZW50bHkuIFRoYXQgc2FpZCwgcnVubmluZwo+ID4gZW50aXJlbHkgaW5k
ZXBlbmRlbnQgb2YgdGhlIGtlcm5lbCBkb2VzIG9mZmVyIGJldHRlciBwb3J0YWJpbGl0eSwgYW5k
IGFsc28gbWVhbnMKPiA+IHRoYXQgdGhlIHNjcmVlbiByZWFkZXIgY2FuIGJlIHVwZGF0ZWQgaW5k
ZXBlbmRlbnRseSBvZiB0aGUga2VybmVsLCB3aGljaCBJTU8gaXMKPiA+IGFsd2F5cyBhIGdvb2Qg
dGhpbmcodG0pLgo+ID4KPiA+IH5LeWxlCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

