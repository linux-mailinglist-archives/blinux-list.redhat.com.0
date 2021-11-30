Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D408463D5F
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 19:03:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638295433;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hlz3TY+HsRsJ1wzIqtAQWBM5lmf4tmhduLffvTnAXy8=;
	b=NFgHuq0h4x1nfQgyO6m0xiiVuDBND0WRzYn0WU1qWnyqK8pBbIm1aImO0sZh9/j+iZTDur
	JjadjNIYq9l9w64SfK9JThLj5OQryG0Cm16xlG9JUIwgO41tHqMa1cL51EMKOJbhE7qprE
	bFKnI2Gga2oC/zIkniSJOIcbTraRA74=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-586-15gP-ZxhNZCGgk9HSSn-0A-1; Tue, 30 Nov 2021 13:03:49 -0500
X-MC-Unique: 15gP-ZxhNZCGgk9HSSn-0A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2CC383DD20;
	Tue, 30 Nov 2021 18:03:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC7A679453;
	Tue, 30 Nov 2021 18:03:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CBAE4BB7B;
	Tue, 30 Nov 2021 18:03:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUI3fRp012755 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 13:03:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F2B452166B26; Tue, 30 Nov 2021 18:03:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA87B2166B3F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 18:03:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CC1485A5AA
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 18:03:38 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-259-hCDROdMFPWaS7HyUaimBVA-1;
	Tue, 30 Nov 2021 13:03:35 -0500
X-MC-Unique: hCDROdMFPWaS7HyUaimBVA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D1622A0094
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:02:52 +0100 (CET)
Message-ID: <478b6e46-5ca1-266a-695b-6f8119e207fa@slint.fr>
Date: Tue, 30 Nov 2021 19:03:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: My qemu error
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
	<a4dfb37b-cf9e-ecad-bf05-cf6e0a0d3774@slint.fr>
In-Reply-To: <a4dfb37b-cf9e-ecad-bf05-cf6e0a0d3774@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AUI3fRp012755
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

UFMgaW5zdGVhZCBvZjoKL2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xNC4xMwpwbGVhc2UgcmVhZDoK
L2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xMy4xMwoKT1QgQm90aCB0aGUgNS4xMyBhbmQgNS4xNCBo
YXZlIGJlZW4gZGVjbGFyZWQgRW5kIG9mIExpZmUsIEkgd2lsbCBwcm92aWRlIGEKNS4xNS56IHdo
ZW4gSSB3aWxsIHRoaW5rIHRoaXMgYnJhbmNoIGlzIHN0YWJsZSBlbm91Z2guCgpEaWRpZXIKCkxl
IDMwLzExLzIwMjEgw6AgMTg6NDksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
YSDDqWNyaXTCoDoKPiBIaSBCcmFuZHQsCj4gYW5zd2VycyBpbmxpbmUKPiAKPiBMZSAzMC8xMS8y
MDIxIMOgIDEzOjU1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0
wqA6Cj4+IHFlbXUtc3lzdGVtLXg4Nl82NDogd2FybmluZzogJy1zb3VuZGh3IGhkYScgaXMgZGVw
cmVjYXRlZCwgcGxlYXNlIHVzZSAKPj4gJy1kZXZpY2UgaW50ZWwtaGRhIC1kZXZpY2UgaGRhLWR1
cGxleCcgaW5zdGVhZAo+PiBhdWRpbzogRGV2aWNlIGhkYTogYXVkaW9kZXYgZGVmYXVsdCBwYXJh
bWV0ZXIgaXMgZGVwcmVjYXRlZCwgcGxlYXNlIAo+PiBzcGVjaWZ5IGF1ZGlvZGV2PXBhCj4+IGF1
ZGlvOiBEZXZpY2UgaGRhOiBhdWRpb2RldiBkZWZhdWx0IHBhcmFtZXRlciBpcyBkZXByZWNhdGVk
LCBwbGVhc2UgCj4+IHNwZWNpZnkgYXVkaW9kZXY9cGEKPj4KPiBJbiB0aGUgY29tbWFuZCByZW1v
dmUKPiAtc291bmRodyBoZGEKPiB3aGljaCBpcyByZWR1bmRhbnQgd2l0aAo+IC1kZXZpY2UgaW50
ZWwtaGRhIC1kZXZpY2UgaGRhLWR1cGxleAo+IGFuZCBwcm9iYWx5IHJlcGNhY2UKPiAtLWF1ZGlv
ZGV2IHBhCj4gYnk6Cj4gLS1hdWRpb2Rldj1wYWhvd2V2ZXIsIG1heWJlIHRoaXMgd2hvbGUgc3R1
ZmYgaXMgbm90IG5lY2Vzc2FyeTotYXVkaW9kZXYgCj4gcGEsaWQ9cGEsb3V0Lm1peGluZy1lbmdp
bmU9b2ZmLG91dC5sYXRlbmN5PTIwMDAwCj4gSSBkb24ndCBoYXZlIGl0Lgo+IAo+ICA+wqAga25v
dyBpdCBkb2VzIHdvcmsgdW5kZXIgU2xpbnQsIGJ1dCBub3QgdW5kZXIgRmVkb3JhLCBBcmNoIG9y
IFVidW50dS4KPiAKPiBNYXliZSB0aGUga2VybmVsIHlvdSBhcmUgcnVubmluZyBpbiBGZWRvcmEs
IEFyY2ggb3IgVWJ1bnR1IGRvZXMgbm90IGhhdmUgYQo+IHByb3BlciBjb25maWd1cmF0aW9uIGZv
ciBLVk0sIHJlYWQ6Cj4gaHR0cHM6Ly93d3cubGludXgta3ZtLm9yZy9wYWdlL1R1bmluZ19LZXJu
ZWwKPiAKPiBJbiBTbGludCB0aGUga2VybmVsIGNvbmZpZ3VyYXRpb24gaXMgZm91bmQgaW4gb25l
IG9mIHRoZXNlIGZpbGVzOgo+IC9ib290L2NvbmZpZy1nZW5lcmljLTUuMTQuMTQueDY0Cj4gL2Jv
b3QvY29uZmlnLWdlbmVyaWMtNS4xNC4xMwo+IFRoZXNlIGNvbW1hbmRzOgo+IGNhdCAvcHJvYy9j
bWRsaW5lCj4gdW5hbWUgLXIKPiB0ZWxsIHlvdSB3aGljaCBrZXJuZWwgaXMgcnVubmluZywgc28g
eW91IGtub3cgaG93IGl0IGlzIGNvbmZpZ3VyZWQuCj4gCj4gQWxzbywgdGhlcmUgY291bGQgYmUg
YW4gaXNzdWUgd2l0aCB5b3VyIHFlbXUgdmVyc2lvbi4KPiAKPiBJbiBTbGludCBhdCB0aW1lIG9m
IHdyaXRpbmc6Cj4gZGFuY2Vbfl0kIHFlbXUtc3lzdGVtLXg4Nl82NCAtLXZlcnNpb24KPiBRRU1V
IGVtdWxhdG9yIHZlcnNpb24gNi4wLjAKPiBDb3B5cmlnaHQgKGMpIDIwMDMtMjAyMSBGYWJyaWNl
IEJlbGxhcmQgYW5kIHRoZSBRRU1VIFByb2plY3QgZGV2ZWxvcGVycwo+IAo+IENoZWVycywKPiBE
aWRpZXIKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

