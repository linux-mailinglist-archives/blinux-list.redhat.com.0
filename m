Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2554A60BE
	for <lists+blinux-list@lfdr.de>; Tue,  1 Feb 2022 16:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643730768;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5P7L0te9iDyaoWsRO5OxNHcXbTAwOviJiJ5+ZwhNads=;
	b=EyviWN0e5CTGDbMK0pbT4l85uxpWA7nFr08Lexh+hTeIhB/MI4KgQDwjkThOoo0HsJHv1i
	z9uMTwX1icEfWN8spF408giO21c/MwMlnxVNyAkb/ziYktS9ose7v2ozECqOutE/O6t6j3
	6H1oCh7pTW4GIxG0Type79dRKak4sWg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-336-oIJ7DPtYObGhPKw4VUjO7Q-1; Tue, 01 Feb 2022 10:52:44 -0500
X-MC-Unique: oIJ7DPtYObGhPKw4VUjO7Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8904883DD31;
	Tue,  1 Feb 2022 15:52:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0610A2BCC5;
	Tue,  1 Feb 2022 15:52:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A84EF18095C9;
	Tue,  1 Feb 2022 15:52:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 211FpwwJ021312 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Feb 2022 10:51:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4DEDDC08099; Tue,  1 Feb 2022 15:51:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A8A0C08096
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 15:51:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B1933806723
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 15:51:58 +0000 (UTC)
Received: from smtprelay04.ispgateway.de (smtprelay04.ispgateway.de
	[80.67.18.16]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-631-Pc-JvsPZMFig-QgynLkIYg-1; Tue, 01 Feb 2022 10:51:56 -0500
X-MC-Unique: Pc-JvsPZMFig-QgynLkIYg-1
Received: from [37.4.229.93] (helo=[192.168.178.110])
	by smtprelay04.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1nEvR6-0004MF-0d
	for blinux-list@redhat.com; Tue, 01 Feb 2022 16:51:16 +0100
Message-ID: <e1ba6dd5-6494-5939-8abb-fd70bcb87286@linux-a11y.org>
Date: Tue, 1 Feb 2022 16:51:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Remaining DecTalk Issues in Speakup?
To: blinux-list@redhat.com
References: <bfd3d4b4-13fe-acc4-406a-87cfae17403d@hubert-humphrey.com>
In-Reply-To: <bfd3d4b4-13fe-acc4-406a-87cfae17403d@hubert-humphrey.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHkgQ2hpbWUgLAoKPiBXaGlsZSBGZW5yaXIgaGFzIG1hbnkgbW9yZSBvcHRpb25zLCBJIGhh
dmUgbm90IGhlYXJkIG9mIGl0IHN1cHBvcnQgCj4gRGVjVGFsaz8gCmZlbnJpciBzdXBwb3J0cyBk
ZWN0YWxrIHVzaW5nIGVtYWNzcGVhayBzcGVlY2ggYmFjay1lbmQuIHRoaXMgaXMgCmN1cnJlbnRs
eSB2ZXJ5IGV4cGVyaW1lbnRhbCBsYWNraW5nIHRlc3RlcnMgb3IgdXNlcnMuCml0IHJlcXVyZXMK
LSBlbWFjc3BlYWsgc29tZXdoZXJlIG9uIGhhcmQgZGlzYwotIHB5dGhvbi1wZXhwZWN0Ci0gdGNs
IC8gdGNsc2gKLSBzZXQgc3BlZWNoIGRyaXZlciB0byAiZW1hY3NwZWFrRHJpdmVyIgotIHNldMKg
IHNwZWVjaCBzZXJ2ZXJQYXRoIGluIHlvdXIgc2V0dGluZ3MuY29uZiBmb3IgZW1hY3NwZWFrIHRv
IHlvdXIgVFRTIApzZXJ2ZXIgdG8gdXNlOgpzZXJ2ZXJQYXRoPS9ob21lL2NocnlzL1Byb2pla3Rl
L2VtYWNzcGVhay9zZXJ2ZXJzL2VzcGVhawppcyB3aGF0IGkgdXNlZCBmb3IgdGVzdCBpdCB3aXRo
IGVzcGVhay4KCmFnYWluLCBpdHMgc3RpbGwgdmVyeSB1bnRlc3RlZCAoIGkgZG9uwrR0IG93biBt
b3N0IG9mIHRoZSBkZXZpY2VzIGxpc3RlZCAKZm9yIGVtYWNzcGVhaykgYW5kIGV4cGVyaW1lbnRh
bAoKdG8gbWF5YmUgbm90IGJyZWFrIGFuIGV4aXN0aW5nIHNldHVwLiB5b3UgY2FuIHRlc3QgaXQg
YnkgcGFzc2luZyB0aGUgCnNldHRpbmdzwqAgd2l0IC1vIHBhcmFtZXRlciBhdCBzdGFydHVwIG9u
Y2UKCnN1ZG8gZmVucmlyIC1vIAoic3BlZWNoI2RyaXZlcj1lbWFjc3BlYWtEcml2ZXI7c3BlZWNo
I3NlcnZlclBhdGg9L3BhdGgvdG8veW91ci9lbWFjc3BlYWsvc2VydmVyIgoKb3IgY3JlYXRlIGFu
IGNvcHkgb2YgdGhlIHNldHRpbmdzLmNvbmYsIGNoYW5nZSB0aGUgcmVxdWlyZWQgcGFyYW1ldGVy
cyAKYW5kIHVzZQpzdWRvIGZlbnJpciAtcyAvcGF0aC90by95b3VyL2NvcHkvb2YvZmVucmlyL3Nl
dHRpbmdzLmNvbmYKdG8gdXNlIGFuIGdpdmVuIHNldHRpbmcgZmlsZS4KCmlmIHdpdCB3b3Jrcywg
YXdlc29tZSA6KS4gaWYgbm90LCBsZXQgbWUga25vdy4gbWF5YmUgd2UgY2FuIGZpeCBpdC4KCmdv
b2QgbHVjay4KCgpjaGVlcnMgY2hyeXMKCkFtIDAxLjAyLjIyIHVtIDE2OjI4IHNjaHJpZWIgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiBIaSBBbGw6IFNldmVyYWwgZGF5cyBh
Z28gSSBhc2tlZCBzb21ldGhpbmcgc2ltaWxhciBpbiB0aGUgU3BlYWt1cCAKPiBsaXN0LCBidXQg
SSBndWVzcyBtYXliZSB0aGlzIG1heSBiZSBhIGdyZWF0IHBsYWNlIHRvIGlucXVpcmU/IExhc3Qg
Cj4gVGh1cnNkYXkgZXZlbmluZyBJIGhhZCB0byByZXN0YXJ0IG15IERlYmlhbiBtYWNoaW5lIGFm
dGVyIDEzMGRheXMuIAo+IEtlcm5lbCBqdW1wZWQgZnJvbSA1LjEwIHRvIDUuMTUgMDMuIEZpcnN0
IHRoaW5nIEkgbm90aWNlZCB3YXMgYSAKPiA0c2Vjb25kIGRlbGF5IGluIHRoZSBEZWNUYWxrIHdh
cyBiYWNrIHVudGlsIEkgYWp1c3RlZCBmbHVzaC10aW1lIHRvIAo+IDEwMC4gSSB0aGluayBiYWNr
IGxhc3QgU2VwdGVtYmVyIEkgd2FzIGFibGUgdG8gc2V0IHRoaXMgYXQgMTAsIG11Y2ggCj4gZWFz
aWVyIHRvIHNjcm9sbC1hbmQtbGlzdGVuIHRvIGNvbnRlbnQuIFBsZWFzZSBjb25zaWRlciBhbGxv
d2luZyBhIDEwIAo+IHNldHRpbmcuIE5leHQsIEkgYmV0IHRoaXMgaW52b2x2ZXMgY2Fwcy1zdGFy
dC1hbmQtc3RvcD8gSWYgSSB0eXBlIG9yIAo+IHJlYWQgYW55IGNhcGl0YWwgbGV0dGVyLCB0aGUg
bmV4dCBpdGVtIHdpbGwgc2F5IGEgInAiIG9uIHRvcCBvZiB3aGF0IAo+IGV2ZXIgdGhhdCBzeW1i
b2wgb3IgZXZlbiBhIHNwYWNlLiBTbyBhcyBhbiBleGFtcGxlLCBhIGNhcGl0YWwgaSAKPiBmb2xs
b3dlZCBieSBhIHNwYWNlIHdpbGwgc2F5ICJpIHAgc3BhY2UiIFRoaXMgaXMgYGV4dHJlbWVseSAK
PiBjaGFsbGVuZ2luZyB0byByZWFkIGNoYXJhY3Rvci1ieS1jaGFyYWN0b3IuIEkgbG9va2VkLWFu
ZC0gY2Fwcy1zdGFydCAKPiBpcyBzZXQgYXQgMTYwLWFuZC1zdG9wIGlzIDEwMC4gU3VyZSBwaXRj
aCByaXNlcyBvbiBjYXBpdGFscyBidXQgaXRzIAo+IHRoZXNlIGV4dHJhIHAncyB3aGljaCBhcmUg
aW4gbXkgd2F5LiBOZXh0LCBub3cgb25jZSBhZ2FpbiAKPiBpbnNlcnQyLWFuZC0zIGZvciBwaXRj
aCBhcmUgYnJva2VuLiBBbmQgZXZlbnR1YWxseSBJIHdpbGwgY3JlYXRlIGFuIAo+IGF1ZGlvIGZp
bGUgdG8gc2VuZCBTYW11ZWwgdG8gZGVtb25zdHJhdGUgdGhhdCBqdXN0IG91dCBvZiB0aGUgYmx1
ZSwgCj4gd2hpbGUgcmVhZGluZy9zY3JvbGxpbmcsIHZvbHVtZSwgcmF0ZSwgYW5kIHBpdGNoIGRy
b3Agc3VkZGVubHkuIFRoZXNlIAo+IGhhdmUgYmVlbiBvY2N1cnJpbmcgZXZlciBzaW5jZSAyMDAz
IHdoZW4gdGhlIERlY1RhbGsgZHJpdmVycyBqb2luZWQgCj4gU3BlYWt1cC4gSXMgU3BlYWt1cCBh
biBvbmx5IGNvbnNvbGUgc2NyZWVuLXJlYWRlciB3aXRoIERlY1RhbGsgCj4gc3VwcG9ydD8gV2hp
bGUgRmVucmlyIGhhcyBtYW55IG1vcmUgb3B0aW9ucywgSSBoYXZlIG5vdCBoZWFyZCBvZiBpdCAK
PiBzdXBwb3J0IERlY1RhbGs/Cj4gQW5kIGxhc3RseSBvbiBhbm90aGVyIHRvcGljLCBkaWQgc29t
ZXRoaW5nIGNoYW5nZSBpbnZvbHZpbmcgc3NoLCBhcyAKPiBub3cgaWYgd2UgZW5hYmxlIG9wZW5z
c2ggc2VydmVyLCBhbnkxIGNhbiBsb2dpbiB0byBteSBzeXN0ZW0gd2l0aG91dCAKPiBhbnkgYXV0
aGVudGljYXRpb24uIE9idmlvdXNseSB1bnRpbCB3ZSBmaW5kIG91dCBob3cgdG8gZml4IHRoaXMs
IGl0cyAKPiB0dXJuZWQgb2ZmLCBidXQgbWF5YmUgc2luY2UgbGFzdCBTZXB0ZW1iZXIgRGViaWFu
IG1heSBoYXZlIGNoYW5nZWQgCj4gc29tZXRoaW5nLiBJIHdvdWxkIHZlcnkgbXVjaCBhcHByZWNp
YXRlIHN1Z2dlc3Rpb25zIG9uIGFsbCBvZiB0aGVzZSAKPiBpdGVtcy4gVGhhbmtzIHNvIG11Y2gg
aW4gYWR2YW5jZS4KPiBDaGltZQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

