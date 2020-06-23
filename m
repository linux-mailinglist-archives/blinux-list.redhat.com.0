Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id A7FC12047D8
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 05:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592882119;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r5IAp6ZKfI0IqtlYyjdNJ3LwV61/OHX3fAVFM8IIKq0=;
	b=OmEMXgP/pjC1i0kWfUZllxygPODm8vO6nmfBq6kjkp8BKcR0lWZ+t5I9T8QRylF2YqXV1T
	oXTR2WsG+1Cv+GYQMl4K6TOr0i993q5HgMOK8CiFLIwFJXGI+StM3KLnWhXJyzYD96LC+C
	5xXjpd7bw5lvynmHUu8lB9/T1FM9Qio=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-502-KudoIwrjNM6pMzhLnqmPkA-1; Mon, 22 Jun 2020 23:15:17 -0400
X-MC-Unique: KudoIwrjNM6pMzhLnqmPkA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 17F1E107ACF6;
	Tue, 23 Jun 2020 03:15:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 981F95EE0E;
	Tue, 23 Jun 2020 03:15:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A22D61809547;
	Tue, 23 Jun 2020 03:15:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05N3EvJh001489 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 23:14:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F032D2156890; Tue, 23 Jun 2020 03:14:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB24A2156A54
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 03:14:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EAB4F811E77
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 03:14:52 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-427-xhDMQ8RKOQa7VG96pz-jhg-1; Mon, 22 Jun 2020 23:14:50 -0400
X-MC-Unique: xhDMQ8RKOQa7VG96pz-jhg-1
Received: by mail-oi1-f179.google.com with SMTP id s21so17612129oic.9
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 20:14:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=+DJ/ST2aCABT1gYFPFzh6yhirsmBpWgf0sQo+tWzTB4=;
	b=jhaK1JftJX9YOT1xIhTjhaZfZjtit1Vk5Qr4pzjiWvMKxmn4vgrJLApI6NPmi9eIxm
	hAZsybzkf4PJq1xqyw/IIIbgHBPCO2PNUoJHvpNsTHtML+j1yAQvR1ptneYvNTijHHEw
	af4PH9XeZ+CYqxqhCy89Cn12kJpm69BA3yN2V2qkMmrrAjUPJraqbdRtL601IuDAnEhZ
	KBYsuA1MhHDEC3UAFHQtfvrhLXSQAenEqgDUIbvRgN48MMxCtAK8qU6vHUBBdb/ZDf7/
	wE1lTmfkMEBEGfCeJUDzIzQMDHYwpY+HUtF2K4aZREQ/gBBpNITRrNiiol30sAcoNWKN
	jVbw==
X-Gm-Message-State: AOAM53196Oi+kPKOVXmJOaJcoNVue6u+NBLQyPaEe20eLPpXg8f654WF
	38Dvwz7Fy7Uy1rH479l6skS6fJD3mLVekeZz+rgU897+
X-Google-Smtp-Source: ABdhPJwiTL8N7bAei+6KpNmUycFRSAWZAJJAO/Sq8hgGAsuPBUGDbjRnT/eZRkhqttCWxW5s7HagphvR+i/s0t75+yY=
X-Received: by 2002:aca:c683:: with SMTP id w125mr14234516oif.37.1592882089208;
	Mon, 22 Jun 2020 20:14:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:12d6:0:0:0:0:0 with HTTP; Mon, 22 Jun 2020 20:14:48
	-0700 (PDT)
In-Reply-To: <e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
Date: Mon, 22 Jun 2020 22:14:48 -0500
Message-ID: <CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05N3EvJh001489
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29tZWJvZHkgaGVyZSBtZW50aW9uZWQgdGhhdCBJIG1pZ2h0IHdhbnQgYSBsYXB0b3AgaW5zdGVh
ZCBvZiB0aGUKTWVlcmthdC4gU28sIEkgd2VudCBzZWFyY2hpbmcgZm9yIGZyZWUgbGFwdG9wcyBh
bmQgZm91bmQgdGhpcyBvbmUgZm9yCmV4YW1wbGU6IGh0dHBzOi8vc2hvcC5saWJpcXVpdHkuY29t
L3Byb2R1Y3QvdGF1cmludXMteDIwMAoKSXQgcnVucyBUcmlzcXVlbCA3LjAuIFRoaXMgY29tZXMg
d2l0aCB0aGUgTUFURSBkZXNrdG9wIGFuZCBPcmNhIGlzCnN1cHBvc2VkIHRvIHN0YXJ0IHVwIGF1
dG9tYXRpY2FsbHkuIFRoaXMgc2VlbXMgbGlrZSBnb29kIG5ld3MuIEFzCnNvbWVvbmUgd2hvIGhh
cyBuZXZlciB1c2VkIFRyaXNxdWVsLCBpcyB0aGVyZSBhbnl0aGluZyBJIHNob3VsZCBiZQphd2Fy
ZSBvZiwgZS5nLiBpbmFjY2Vzc2libGUgc29mdHdhcmU/CgpPbiA2LzIyLzIwLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
PiBNeSBvYmplY3Rpb24gdG8gdXNpbmcgImxpdGVyYWxseSIgZmlndXJhdGl2ZWx5IGlzIHRoYXQg
d2UgdGhlbiBoYXZlIHRvCj4gZmluZCBhIG5ldyB3b3JkIGZvciBsaXRlcmFsbHkuwqAgSW4gdGhl
IGV4YW1wbGUgaGVyZSwgImV4cGxvZGVkIiBpcwo+IGVub3VnaCBhbmQgaXMgZmlndXJhdGl2ZSBh
bnl3YXkuCj4KPgo+IEknbGwgc2tpcCB0aGUgb3RoZXIgc3R1ZmYsIGFuZCB0YWtlIGEgc2Vjb25k
IG9mIGFtdXNlbWVudCB0aGF0IHRoaXMKPiBiZWNhbWUgYSB0b3BpYyBvbiBhIExpbnV4IGxpc3Qu
wqAgKFRoZW4gYWdhaW4sIGNvbXB1dGVycyBhcmUgcXVpdGUKPiBsaXRlcmFsLS1pbiB0aGVpciBu
dW1lcmljIGZhc2hpb24uCj4KPgo+IEJlc3QhCj4KPiBBbAo+Cj4KPiBPbiA2LzIyLzIwIDY6NDcg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IFllYWgsIEkg
ZG9uJ3QgcmVhbGx5IGdldCB0aGUgb2JqZWN0aW9uIHRvIHRoZSB3b3JkICJzaGFyZSIgaW4gdGhl
Cj4+IGNvbnRleHQgb2YgdGVsbGluZyBzb21lb25lIGFib3V0IGFuIGV4cGVyaWVuY2UsIGFuZCB3
aGlsZSBzYXlpbmcKPj4gc29tZW9uZSBoYXMgaXNzdWVzIGlzIHZhZ3VlciB0aGFuIHNheWluZyBz
b21lb25lJ3MgbnV0cywgSSBkb24ndAo+PiByZWFsbHkgc2VlIHN1Y2ggYXMgZXVwaGVtaXN0aWMu
Li4gZ3JhbnRlZCwgc29tZW9uZSBoYXZpbmcgaXNzdWVzIGNvdWxkCj4+IGp1c3QgYXMgZWFzaWx5
IHJlZmVyIHRvIGV2ZXJ5ZGF5IHN0cmVzcyBhbmQvb3IgYmFkIGx1Y2suCj4+Cj4+IEknbSBhbHNv
IG9rYXkgd2l0aCB0aGUgd29yZCAibGl0ZXJhbGx5IiBiZWluZyB1c2VkIGZpZ3VyYXRpdmVseShl
LmcuCj4+IHNheWluZyBzb21lb25lIGxpdGVyYWxseSBleHBsb2RlZCBhcyBtZXRhcGhvci9oeXBl
cmJvbGUgZm9yIGEgZml0IG9mCj4+IGFuZ2VyKS4KPj4KPj4gVGhlbiBhZ2FpbiwgcGVyaGFwcyBt
eSBpbm5lciBsaW5ndWlzdCBpcyBqdXN0IG1vcmUgb2YgYSBkZXNjcmlwdGl2aXN0Cj4+IHRoYW4g
YSBwcmVzY3JpcHRpdmlzdC4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

