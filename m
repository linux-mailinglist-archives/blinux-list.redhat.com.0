Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C35164BC04A
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 20:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645212570;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UiGGSwWYOy+ZeC54APx/HixgJM+8jQJMdpSCL/MxQyI=;
	b=h+fQqy8XmIT1ptzZmCAZnD012qX54mb0/0VtI4J96dHlTcLoxdLATVl58bDJAs1/Qb+E/0
	Z6afggrZFa2ZpVaI2UpoS/jgeZeJyEFe8HgciOHGvARLc1VLiUagwtHD40cytqv9fRF17H
	5FvSP0mua7KXKeaefvUw3j+KTb2JDaI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-124-U3_EAJ3QN92371W26oFhNQ-1; Fri, 18 Feb 2022 14:29:27 -0500
X-MC-Unique: U3_EAJ3QN92371W26oFhNQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9464D1091DA2;
	Fri, 18 Feb 2022 19:29:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B755100EBBE;
	Fri, 18 Feb 2022 19:29:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D34EC1806D03;
	Fri, 18 Feb 2022 19:29:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IJJfOO000329 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 14:19:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 47DE940F9D6B; Fri, 18 Feb 2022 19:19:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4329F40F9D68
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 19:19:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 275AD811E76
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 19:19:41 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-547-Y4KwPhM4Neqmua9zNma5xQ-1; Fri, 18 Feb 2022 14:19:39 -0500
X-MC-Unique: Y4KwPhM4Neqmua9zNma5xQ-1
Received: by mail-wr1-f44.google.com with SMTP id h6so16135095wrb.9
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 11:19:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=jGtIkFIJjdPe7FSxE1xfVKTa0yNM3/j3dDH/b0OhBlw=;
	b=Ol/w8org7aMIUzwTHHpI3ioLuqJWB70ktg3/vvnsuJWLjRhzjmJWTDfnUov13Lz64U
	UTGF9iI93ucwJYdlBA4NDgF9grcbtbKqJd/2/qUMDFFpaAuKe3Eb5VgLcyDlhPoB8U5D
	Cem7nj48AjH7ubqtEmW7Z+0ijJQ+RDFN3zBKbkbmS1Fm/J5dFdrBdybgzOwMMUwMqNtn
	m6+QFZm1oMEXf2Tj5cuDppodcSfGxSn9hWXXv1ly7jHKGllQ0ve74D3cegEm6RPnhVCP
	Ft78maOIfJvMQ4AjSxc7CrIrkECeuoz9J9Yu7l/GJzK/1VUbs7XTcVpZNR6dkZ2ZmWU8
	1CKw==
X-Gm-Message-State: AOAM5309cTKuCh/D51TKcYd2bM1MIrcJcq2xJkegsmUTJ+JcJQYfTL8C
	K888J5PdN3vxnoYjOQ82gyOqp8/NqV8=
X-Google-Smtp-Source: ABdhPJz1h4/lQPQdhZBPODVxrCb5SKqFL69lFvN2Jg84BRd/g6U3lvSkJIpNXU76CH8rcrdO2SZsig==
X-Received: by 2002:a05:6000:1b02:b0:1e6:80c4:effa with SMTP id
	f2-20020a0560001b0200b001e680c4effamr7230609wrz.646.1645211977850;
	Fri, 18 Feb 2022 11:19:37 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id
	c18sm38696503wro.81.2022.02.18.11.19.37 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 11:19:37 -0800 (PST)
Subject: Re: Mutt or Alpine
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e65d0f59-7906-79ba-14d2-dca16d712667@gmail.com>
	<f54d231-df3b-411e-fff6-5d526ac1677c@brandt-slint.local>
Message-ID: <e22b2dca-c7a5-7fe6-6488-c51e72aa2811@gmail.com>
Date: Fri, 18 Feb 2022 19:19:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <f54d231-df3b-411e-fff6-5d526ac1677c@brandt-slint.local>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QmVsYXRlZGx5LCBNdXR0IChJIGRvbid0IGhhdmUgTmVvbXV0dCBvbiB0aGlzIG1hY2hpbmUsIGJl
Y2F1c2UuLi50aGFua3MgClNvbHVzPykgd29ya3MgcmVhbGx5LCByZWFsbHkgd2VsbCBpbiBhIHRl
cm1pbmFsIG9kZGx5IGVub3VnaCBhcyB3ZWxsIGFzIAphIHB1cmUgY29uc29sZS4gQWxwaW5lIHNh
ZGx5IGRvZXNuJ3Qgc28gYXQgbGVhc3QgZm9yIG15IHVzZSBjYXNlLCBNdXR0IAp3aW5zIG91dAoK
Tm93IHRvIGZpZ3VyZSBvdXQgaWYgTXV0dCBvciBOZW9tdXR0IGlzIGEgYmV0dGVyIGZpdD8gSSdk
IHNheSB5b3UgY2FuIApwcm9iYWJseSByYW5zaXRpb24gZnJvbSBBbHBpbmUgdG8gTXV0dCB3aXRo
IGEgYml0IG9mIGEgbGVhcm5pbmcgY3VydmUsIApmb3IgbWUgQWxwaW5lIHRvb2sgbW9yZSBnZXR0
aW5nIHVzZWQgdG8gaW4gbXkgYnJpZWYgdGVzdHMuIEkgbGlrZSB0aGUgCmxheW91dCBvIEFscGlu
ZS4gQnV0IE11dHQsIGF0IGxlYXN0IG9uIG15IG1hY2hpbmUsIHdvcmtzIGJldHRlciB3aXRoIApP
cmNhIGluwqAgYSB0ZXJtaW5hbCwgSSBkb24ndCBydW4gaW50byBob3Jpem9udGFsbHkgbGFpZCBv
dXQgdGhpbmdzLCBNdXR0IApoYXMgaXQgbGlzdGVkIGFscGhhYmV0aWNhbGx5IHNvIEkga25vdyBv
ciBleGFtcGxlIG15IEJsaW51eCBmb2xkZXIgaXMgCmFsd2F5cyBhdCB0aGUgdG9wIG9mIHRoZSBo
ZWFwLCBJbmJveCBpcyBvcHRpb24gIzUgYW5kIHNvIGZvcnRoLiBUbyBtZSAKdGhhdCBtYWtlcyBt
b3JlIHNlbnNlIHRoYW4gaGF2aW5nIEluYm94L0RyYWZ0cy9ldGMgYWxsIG9uIG9uZSBsaW5lLCBi
dXQgCllNTVYgb24gdGhhdCBvZiBjb3Vyc2UsIEFscGluZSBpc24ndCBhdmFpbGFibGUgaW4gdGhl
IGRlZmF1bHQgQXJjaCByZXBvcyAKYnV0IGEgcXVpY2sgZ2l0IGNsb25lIGh0dHBzOi8vYXVyLmFy
Y2hsaW51eC5vcmcveWF5LWJpbiwgaW5zdGFsbGluZyB0aGF0IAphbmQgdGhlbiB5YXkgLVMgYWxw
aW5lIHNvcnRzIHRoYXQgb3V0IGhvd2V2ZXIKCkxpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4gSWYgeW91IHdhbnQgdG8gdXNlIGFuIGVtYWlsIGNsaWVudCB3aXRoIE9y
Y2EsIHN0aWNrIHRvIFRodW5kZXJiaXJkLgo+Cj4gSSBmaW5kIE9yY2EgdW53aWVsZHkgaW4gdGhl
IHRlcm1pbmFsIGFueXdheS4KPgo+IElmLCBob3dldmVyLCB5b3Ugd2lzaCB0byBkbyBzbyB3aXRo
IFNwZWFrdXAgb3IgRmVucmlyLCBJIHBlcnNvbmFsbHkgCj4gcHJlZmVyIEFscGluZS4KPgo+IFdo
eT8gU2ltcGxlLiBJIGRvbid0IGtub3cgTXV0dCBhdCBhbGwuCj4KPiBXYXJtIHJlZ2FyZHMsCj4K
PiBCcmFuZHQgU3RlZW5rYW1wCj4KPiBTZW50IGZyb20gdGhlIFNsaW50IGNvbnNvbGUgdXNpbmcg
QWxwaW5lCj4KPiBPbiBGcmksIDE4IEZlYiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+Cj4+IERhdGU6IEZyaSwgMTggRmViIDIwMjIgMTY6MDA6MjIgKzAw
MDAKPj4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT4KPj4gVG86IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+IFN1YmplY3Q6IE11dHQgb3IgQWxwaW5lCj4+Cj4+
IFNvIEknbSB1c2luZyBNdXR0LCBidXQuLi4KPj4KPj4gV2hhdCBkb2VzIE11dHQgaGF2ZSBvdmVy
IEFscGluZSBhbmQgdmljZSB2ZXJzYSwgd2h5IHdvdWxkIEkgdXNlIG9uZSAKPj4gb3ZlciB0aGUg
b3RoZXI/Cj4+Cj4+IE11dHQgc2VlbXMgZmFzdGVyIHRvIG1lLCBidXQgQWxwaW5lIHNlZW1zIG1v
cmUgdXNlciBmcmllbmRseSB3aXRob3V0IAo+PiBtYWtpbmcgdGVtcG9yYXJ5IGZpbGVzIHdoaWxl
IGNvbXBvc2luZyBhIG1lc3NhZ2UgKHVubGVzIEkgY2FuIHRlbGwgCj4+IE11dHQvTmVvbXV0dCB0
byBkZWxldGUgdGhvc2UgYXV0b21hdGljYWxseQo+Pgo+PiBTbyBpcyB0aGVyZSBhIGNvbnNlbnN1
cyBvZiB3aGljaCBpcyB0aGUgZWFzaWVyIGNob2ljZSB0byB1c2Ugd2l0aCBPcmNhPwo+Pgo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+Cj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

