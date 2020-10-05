Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D3438283967
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 17:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601911160;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9NyzoSLfES1XTp/Ia8jCD26zeG/WDJ0VuGl2P8akrWE=;
	b=NvhMbdIMIKVHehlTLpC44Lx9GDzCAU/cI+UU4vowvU8VqwkMQzYvzbBiBpnnuZsKNeftiC
	NitlC3uDVILR8o3SvtL35buExikR8VTWUH7F2889pEV3Ii6NjoJfhGKqbcjVGDE+rmdm12
	Wj2KaRnNfAAjU6rB+WZsKXVgE+rf5bw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-483-WIarYON3ORCneMmVZMWIZg-1; Mon, 05 Oct 2020 11:19:18 -0400
X-MC-Unique: WIarYON3ORCneMmVZMWIZg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71D5418A8225;
	Mon,  5 Oct 2020 15:19:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D281C19930;
	Mon,  5 Oct 2020 15:19:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9FD8D181A270;
	Mon,  5 Oct 2020 15:19:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 095FJ3So025412 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Oct 2020 11:19:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CEF0C110F0AD; Mon,  5 Oct 2020 15:19:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CAD49110F0AC
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 15:19:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A2F9A18A070F
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 15:19:01 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-25-0MneITJHPgCTfTm6j524qg-1;
	Mon, 05 Oct 2020 11:18:58 -0400
X-MC-Unique: 0MneITJHPgCTfTm6j524qg-1
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id CA6D9BE280
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 16:18:10 +0200 (CEST)
Subject: Re: Does anyone have a guide to the E speak screen reader?
To: blinux-list@redhat.com
References: <A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B.ref@yahoo.com>
	<A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B@yahoo.com>
	<001801d69b0a$f4c7ee90$de57cbb0$@gmail.com>
	<alpine.NEB.2.23.451.2010050902450.22871@panix1.panix.com>
	<CAO2sX30JVeJvOmNvasyHw_SymZy+aHG51SEurM7G461Fn+0mQw@mail.gmail.com>
Message-ID: <8e7419d5-d628-cdd3-072e-109deb1c494d@slint.fr>
Date: Mon, 5 Oct 2020 17:18:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX30JVeJvOmNvasyHw_SymZy+aHG51SEurM7G461Fn+0mQw@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 095FJ3So025412
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R29vZCBzdW1tYXJ5IQoKSnVzdCBhbiBhZGRpdGlvbmFsIG5vdGU6IHRoZSBzcGVha3VwIGtlcm5l
bCBkcml2ZXIgY2FuIGJlIHVzZWQgd2l0aAphIGhhcmR3YXJlIHN5bnRoZXNpemVyLCB3aXRob3V0
IGFueSBzb2Z0d2FyZSBzeW50aGVzaXplci4KCkNoZWVycywgRGlkaWVyCgpMZSAwNS8xMC8yMDIw
IMOgIDE2OjEwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6
Cj4gSG9uZXN0bHksIEkgY2FuJ3QgYmxhbWUgdGhlIE9QIGZvciBnZXR0aW5nIHRoZSBuYW1lIHdy
b25nLCB0aGVyZSBhcmUKPiBxdWl0ZSBhIG51bWJlciBvZiBwYWNrYWdlcyB0aGF0IHdvcmsgdG9n
ZXRoZXIgd2l0aCByYXRoZXIgY29uZnVzaW5nCj4gbmFtZXMuCj4gCj4gVGhhdCBzYWlkLCBoZSdz
IGEgYnJlYWsgZG93biBmb3IgdGhlIE9QOgo+IAo+IDEuIHNwZWFrdXAgaXMgYSBrZXJuZWwgbW9k
dWxlIHRoYXQgcHJvdmlkZXMgc2NyZWVucmVhZGVyCj4gZnVuY3Rpb25hbGl0eSwgYnV0IHdoaWNo
IGlzIHJhdGhlciB1c2VsZXNzIG9uIGl0cyBvd24uCj4gMi4gZXNwZWFrIGlzIG9uZSBvZiBzZXZl
cmFsIHRleHQtdG8tc3BlZWNoIGVuZ2luZXMgYXZhaWxhYmxlIGZvcgo+IExpbnV4LiBUZWNobmlj
YWxseSBkZXByZWNhdGVkIGFuZCBzdXBlcmNlZGVkIGJ5IGVzcGVhay1uZywgYnV0IG5vdAo+IHF1
aXRlIGV2ZXJ5dGhpbmcgdGhhdCB1c2VzIGl0IGhhcyBtaWdyYXRlZCB5ZXQuCj4gMy4gZXNwZWFr
dXAgc2VydmVzIGFzIGEgYnJpZGdlIGJldHdlZW4gc3BlYWt1cCBhbmQgZXNwZWFrLCBhbGxvd2lu
Zwo+IHRoZSBmb3JtZXIgdG8gdXNlIHRoZSBsYXR0ZXIgdG8gYWN0dWFsbHkgc3ludGhlc2l6ZSB3
aGF0IGl0J3MgcmVhZGluZy4KPiAKPiBBbGwgdGhyZWUgY29tYmluZWQgZm9ybSB3aGF0IGlzIHBy
b2JhYmx5ICB0aGUgbW9zdCB3aWRlbHkgdXNlZAo+IGFjY2Vzc2liaWxpdHkgc3RhY2sgb24gdGFs
a2luZywgY29tbWFuZC1saW5lIG9ubHkgTGludXggc3lzdGVtcywgYnV0Cj4gYXJlIGZhciBmcm9t
IHRoZSBvbmx5IG9wdGlvbiBhdmFpbGFibGUuIFVuZm9ydHVuYXRlbHksIGJlY2F1c2Ugb2YKPiB0
aGVpciBzaW1pbGFyIG5hbWVzLCBwZW9wbGUgZnJlcXVlbnRseSByZWZlciB0byB0aGUgd2hvbGUg
c3RhY2sgYnkgb25lCj4gb2YgaXQncyBjb21wb25lbnRzIG9yIGdldCB0aGUgbmFtZXMgb2YgZGlm
ZmVyZW50IGNvbXBvbmVudHMgbWl4ZWQgdXAKPiBhbmQgZXZlbiBJIHNvbWV0aW1lcyBnZXQgY29u
ZnVzZWQgYXMgdG8gd2hldGhlciBhIHBvc3RlciBpcyB0YWxraW5nCj4gYWJvdXQgdGhlIHN0YWNr
IGFzIGEgd2hvbGUsIG9uZSBvZiBpdHMgY29tcG9uZW50cywgb3Igd2hpY2ggY29tcG9uZW50Cj4g
dGhleSdyZSB0YWxraW5nIGFib3V0Lgo+IAo+IFRvIGFkZCB0byB0aGUgY29uZnVzaW9uLCB0aGVy
ZSdzIGFsc28gc3BlZWNoZC11cCwgd2hpY2ggc2VydmVzIGEKPiBzaW1pbGFyIHB1cnBvc2UgdG8g
ZXNwZWFrdXAsIGJ1dCBicmlkZ2VzIHNwZWFrdXAgdG8gc3BlZWNoLWRpc3BhdGNoZXIsCj4gaXRz
ZWxmIGEgYnJpZGdlIHRoYXQgcHJvdmlkZXMgYSBjb25zaXN0ZW50IGludGVyZmFjZSBiZXR3ZWVu
IHNjcmVlbgo+IHJlYWRlcnMgYW5kIHNwZWVjaCBzeW50aHMsIGFuZCB0aGVyZSdzIHBpZXNwZWFr
dXAsIGEgZm9yayBvZiBlc3BlYWt1cAo+IHdyaXR0ZW4gZm9yIHRoZSBSYXNwYmVycnkgUGkgdG8g
Z2V0IGFyb3VuZCBzb21lIGJ1Z3MgaW4gdGhlIFBpJ3Mgc291bmQKPiBzeXN0ZW0uCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

