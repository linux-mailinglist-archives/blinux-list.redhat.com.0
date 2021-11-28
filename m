Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8F546057A
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 10:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638092878;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f2Bl7MeucxGgyFwhpeAQF73EJu1p5epynK8WSsnrY7k=;
	b=G5fA0mCBAm4phVKsl00ZHPyiSLRB+4FwWIYBsuu8oRhU+4CvOIO46DFiQdBTt7Z/BCSw8r
	mUryJoir7QsLeO4g7P75xC5JsqjztrByi+vrcQTgBa7XZzFtBowgTGbA38hcK3j4stWJSq
	rMFJ6UA1pQl/y83159gjY+99B7+ZQdo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-465-E6CU630tNMaZ_rdMEEJAKQ-1; Sun, 28 Nov 2021 04:47:54 -0500
X-MC-Unique: E6CU630tNMaZ_rdMEEJAKQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79EE32F20;
	Sun, 28 Nov 2021 09:47:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5ACF25D6BA;
	Sun, 28 Nov 2021 09:47:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 90ED54BB7C;
	Sun, 28 Nov 2021 09:47:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AS9lQJ4010364 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 04:47:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 18CD62156603; Sun, 28 Nov 2021 09:47:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 130C42156601
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 09:47:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB889811E7A
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 09:47:22 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-567-onaHqVBLPqWyqH7OCB-s5Q-1; Sun, 28 Nov 2021 04:47:21 -0500
X-MC-Unique: onaHqVBLPqWyqH7OCB-s5Q-1
Received: by mail-ed1-f53.google.com with SMTP id y13so58621145edd.13
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 01:47:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=NOD7Wz10GfimRhJy9GMqKyMG32aQlue0DGFUol6p3bY=;
	b=SLAl2MzAEVJNYqF9Ar283ruOBpg9qlzcTlz/qrEm98UfmRvwbqB758U8DogmsLHMaY
	TV3eCsK2XZTUWyhGtxjJlmwaYDwbCn5IiOm7K/cUAzIxTV+syxLvuXZ4PXK2lPHQOi5D
	FU+wr8D8oqa6Hky5q90EUtJekwvszX6qfexQfCbRK02MsQG23yGt2/XDxjMM6tRWDLk8
	D2ZBwMgf5oZPJo3xzIjPxfD6dr+tlgEYC/F6750CAKegJKEf/Qq20dTR4rhI9FXNnHGr
	kxdEqjnBg6x9dGe2Fv7Pw31sZESdUa+KQ9w2R9003ukCzIekRCQPHiDtxlmNXuYo7DSn
	LSjw==
X-Gm-Message-State: AOAM532VuYj8VTCm9UAEsHuRpRAQL01M3dhvSYkuB8F6l5tyncJ834J4
	bJ9Iu6xflYOw/qHTH2KzTpKE4a3ZpEQHrg==
X-Google-Smtp-Source: ABdhPJzgusppxo32H12qnhS46fuyN5sdxJ2HaFpsD/DB8oHgO8ZwpugCr9HqsrBRZAeaXbXk9SLJ/Q==
X-Received: by 2002:a17:907:720d:: with SMTP id
	dr13mr53534504ejc.153.1638092839723; 
	Sun, 28 Nov 2021 01:47:19 -0800 (PST)
Received: from [192.168.8.130] ([197.184.178.30])
	by smtp.gmail.com with ESMTPSA id d10sm5732621eja.4.2021.11.28.01.47.18
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 28 Nov 2021 01:47:19 -0800 (PST)
Message-ID: <77d88972-2039-c986-d1f4-dad5a4d6a440@gmail.com>
Date: Sun, 28 Nov 2021 11:47:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Jumping from Solus/Ubuntu to Slint...how easy is it?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <78e0ef3a-4843-b11a-6ab4-586498b14250@gmail.com>
	<a5db1a21-5c98-f8ca-4f04-c42db4c6fa24@gmail.com>
In-Reply-To: <a5db1a21-5c98-f8ca-4f04-c42db4c6fa24@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QXMgc29tZW9uZSB3aG8gdXNlIGJvdGggRmVkb3JhIGFuZCBTbGludCwgSSdsbCBzYXkgdGhlIGJp
Z2dlc3QgdGhpbmcgdG8gCmdldCB1c2UgdG8gaXMgbm8gc3lzdGVtZCwgd2hpY2ggaXMgbm8gaXNz
dWUgZm9yIG1lLCBob3dldmVyLCBpdCBjYW4gYmUgCmZvciBzb21lLgoKCkFzIHNvbWVvbmUgc2Fp
ZCwgU2xpbnQgaXMgcHJvYmFibHkgdGhlIG1vc3QgcmVsaWFibHkgYWNjZXNzaWJsZSBkaXN0cm8g
Cm9mIHRoZW0gYWxsLCBob3dldmVyIGFzIGFsbCB0ZWNobm9sb2dpZXMgZG8sIGl0IGRvZXMgYnJh
a2UgZnJvbSB0aW1lIHRvIAp0aW1lLiBJdCBpcyBub3QgdGhlIG1vc3QgZGlmZmljdWx0IGRpc3Ry
byB0byBmaXgsIHdoaWNoIGlzIGEgZ29vZCB0aGluZy4KCgpJZiB5b3UgcmVseSBvbiBzbmFwZCwg
eW91IGFyZSBzY3Jld2VkLCBiaWd0aW1lLCBmb3IgaWYgeW91IGtub3cgYW55dGhpbmcgCmFib3V0
IHNuYXBkLCB5b3Ugc2hvdWxkIGtub3cgaXQgcmVxdWlyZXMgc3lzdGVtZCB0byB3b3JrLiBGbGF0
cGFrIGlzIGEgCnJlbGlhYmxlIGFsdGVybmF0aXZlIHRob3VnaC4KCgpXYXJtIHJlZ2FyZHMsCgpC
cmFuZHQgU3RlZW5rYW1wCgpTZW50IGZyb20gdGhlIEZlZG9yYSBtYWNoaW5lLCB1c2luZyBUaHVu
ZGVyYmlyZAoKT24gMjAyMS8xMS8yNiAyMzozOCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiBTbGludCBpcyBwcm9iYWJseSB0aGUgbW9zdCByZWxpYWJseSBhY2Nl
c3NpYmxlIGRpc3RyaWJ1dGlvbi4gWW91IGNhbid0IAo+IHJ1biBhIHZpcnR1YWwgc2xpbnQgb24g
eW91ciBjb21wdXRlciwgaG93ZXZlciwgeW91IGNhbiBpbnN0YWxsIG9uIGFuIAo+IFNEIGNhcmQg
YW5kIHVzZSBpdCB3aXRob3V0IGFueSBhY2Nlc3NpYmlsaXR5IGlzc3Vlcy4gWW91IG5lZWQgYXQg
bGVhc3QgCj4gMzIgR0IgU0QgZGlzay7CoCBJIGhhdmUgaXQgcnVubmluZyBvbiAxMjggR0IgU0Qg
ZHJpdmUuCj4KPiBDaGVlcnMsCj4KPiBJYnJhaGltCj4KPiBPbiAxMS8yNi8yMSAzOjU5IFBNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBTbyBhcyBpdCBzYXlz
Li4uLmFuZCBnaXZlbiBteSByZWNlbnQgd2hpZmZzIG9uIHFlbXUsIHNvIGZhciAqY3Jvc3NlcyAK
Pj4gZmluZ2VycyogU2xpbnQgaXMgc2xvd2x5IGluc3RhbGxpbmcgYnV0IEknbSB3YW50aW5nIHRv
IGtub3cuLi4KPj4KPj4KPj4KPj4gSG93IGVhc3kgaXMgaXQgdG8gYWRhcHQgdG8gU2xpbnQvU2xh
Y2t3d2FyZSBjb21pbmcgZnJvbSBVYnVudHUgb3IgCj4+IFNvbHVzIG9yIEZlZG9yYSBvci4uLgo+
Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

