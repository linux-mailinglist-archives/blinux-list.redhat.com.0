Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2B32F3E11E0
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 12:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628157821;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=llgUmFNZI+J5xqM+UZBCgCY2WHpmKouojfhTi6dzFDA=;
	b=Rsk6AhoWW2rQBJq2kBjorF7zGvHighpmoZZ7gaoVJvg1+f8PXAi+fPUk9d8XyeuR4t/0rq
	SySZDjZoW8IjaPAroEohNhzC6OjIYlkTh2NKl/H9GuXnrFggDIyz2DX/18e0YeR+zZYzjJ
	MfvEu3CtwQwmtJru7k0xk0liXVvgk8g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-509-0HsBT3tMMrWHJal5xwStbQ-1; Thu, 05 Aug 2021 06:03:39 -0400
X-MC-Unique: 0HsBT3tMMrWHJal5xwStbQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF6122FD1C;
	Thu,  5 Aug 2021 10:03:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06C8A104327B;
	Thu,  5 Aug 2021 10:03:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A44344BB7C;
	Thu,  5 Aug 2021 10:03:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175A3SXs019520 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 06:03:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D756A104838; Thu,  5 Aug 2021 10:03:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CCF7A104844
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 10:03:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB2C28CA957
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 10:03:22 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-108-LzhcT3DTNf-JOTfVthRutQ-1;
	Thu, 05 Aug 2021 06:03:20 -0400
X-MC-Unique: LzhcT3DTNf-JOTfVthRutQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 58DACA3F77
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 10:03:14 +0200 (CEST)
Subject: Re: Looking for help with switching on the bare metal.
To: blinux-list@redhat.com
References: <005601d789d0$5ca614b0$15f23e10$@gmail.com>
	<e4f1c84a-4ba4-156e-bcc9-50d1b7accf7f@slint.fr>
Message-ID: <851eefb8-2795-5684-1107-172bf66b985e@slint.fr>
Date: Thu, 5 Aug 2021 12:03:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <e4f1c84a-4ba4-156e-bcc9-50d1b7accf7f@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 175A3SXs019520
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgYWdhaW4sCgpJbiBhIHNlY29uZCBjaGF0IEkgaGF2ZSBiZWVuIHRvbGQgdGhhdCBpdCBpcyBw
b3NzaWJsZSB0byBkaXNhYmxlIFNlY3VyZSAKQm9vdCBvbiBIdWF3ZWkgUEMuCgpZb3Ugd2lsbCBu
ZWVkIGEgc2lnaHRlZCBoZWxwIHRvIGRvIHRoYXQuCgpDaGVlcnMsCkRpZGllcgoKCgpMZSAwNS8w
OC8yMDIxIMOgIDExOjQ1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0wqA6Cj4gSGkgQnJhbmR0LAo+IAo+IGV4cGVjdCB6ZXJvIGlzc3VlIHRvIGluc3RhbGwgU2xp
bnQgb24gdGhpcyBtYWNoaW5lIGlmIFNlY3VyZSBCb290IGNhbiBiZQo+IGRpc2FibGVkLgo+IAo+
IEkgZGlkbid0IGZpbmQgYW55IGluZm9ybWF0aW9uIG9uIHRoZSBuZXQgYWJvdXQgdGhpcyBtb2Rl
bCwgYW5kIGNoYXR0aW5nIAo+IHdpdGgKPiBIdWF3ZWkncyBjb25zdW1lciBzZXJ2aWNlIGluIEZy
YW5jZSBkaWRuJ3QgaGVscC4gVGhlIGxhZHkgZG9lc24ndCBrbm93IHRoaXMKPiBtb2RlbC4KPiAK
PiBDaGVlcnMsCj4gRGlkaWVyCj4gLS0gCj4gRGlkaWVyIFNwYWllcgo+IHNsaW50IG1haW50YWlu
ZXIKPiAKPiAKPiBMZSAwNS8wOC8yMDIxIMOgIDEwOjAzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIGFsbCwKPj4KPj4KPj4gQXQgdGhlIG1vbWVu
dCBJIGFtIHJ1bm5pbmcgbXkgTGludXggaW4gdmlydHVhbCBNYWNoaW5lcywgc2ltcGx5IAo+PiBi
ZWNhdXNlIEkgZG8KPj4gbm90IGhhdmUgaGFyZHdhcmUgdGhhdCBJIHRydXN0IHRvIHdvcmsgY29y
cmVjdGx5LiBJIGFtIGN1cnJlbnRseSB1c2luZyBhCj4+IEh1YXdlaSBNYXRlYm9vayBzZWUgc3Bl
Y3MgYmVsb3cuCj4+Cj4+Cj4+IERldmljZSBuYW1lwqDCoMKgwqDCoCBMQVBUT1AtNTdWQ01DRjEK
Pj4KPj4gUHJvY2Vzc29ywqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJbnRlbChSKSBDb3JlKFRNKSBp
NS0xMDIxMFUgQ1BVIEAgMS42MEdIesKgwqAgMi4xMSBHSHoKPj4KPj4gSW5zdGFsbGVkIFJBTcKg
wqDCoCAxNiwwIEdCICgxNSw4IEdCIHVzYWJsZSkKPj4KPj4gRGV2aWNlIElEwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIEU1MzNEQkFELTUwRkEtNDhGRi1BOUFDLTRCMUI5QkJDNDYyRAo+Pgo+PiBQ
cm9kdWN0IElEwqDCoMKgwqDCoMKgwqDCoMKgIDAwMzQyLTQxNDI4LTQ2NzY3LUFBT0VNCj4+Cj4+
IFN5c3RlbSB0eXBlwqDCoMKgwqDCoMKgwqAgNjQtYml0IG9wZXJhdGluZyBzeXN0ZW0sIHg2NC1i
YXNlZCBwcm9jZXNzb3IKPj4KPj4gUGVuIGFuZCB0b3VjaMKgwqAgTm8gcGVuIG9yIHRvdWNoIGlu
cHV0IGlzIGF2YWlsYWJsZSBmb3IgdGhpcyBkaXNwbGF5Cj4+Cj4+Cj4+IFRoaXMgbWFjaGluZSwg
YXMgZmFyIGFzIEkgY2FuIHRlbGwsIGlzIHJhdGhlciBuZXcuIEkgaGF2ZSB0cmllZCBsb29raW5n
Cj4+IG9ubGluZSwgYnV0IGFtIG5vdCBzdXJlIGFib3V0IHdoYXQgSSBhbSBmaW5kaW5nLCBvciBm
b3IgdGhhdCBtYXR0ZXIsIG5vdAo+PiBmaW5kaW5nLiBJZiBhbnlvbmUgY2FuIGhlbHAgbWUgd2l0
aCB0aGlzIG1hY2hpbmUsIEknZCBiZSBncmF0ZWZ1bC4KPj4KPj4KPj4gV2FybSByZWdhcmRzLAo+
Pgo+Pgo+PiBCcmFuZHQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

