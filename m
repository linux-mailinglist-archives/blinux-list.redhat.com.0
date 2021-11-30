Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F202463A2B
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 16:35:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638286538;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=adxBHCFK/MGoozoJ5JyykzCkhKcfK4YdXgQvwe4yAjA=;
	b=VoWxLT0bAKQMgeox2N00SGVK4fGH63wjYkExCtVHa3lSoQGSme8cLiTUDXuNVQN7CUN7OH
	swMIxQzYfhFkQFPIk666q4PeX2aUR6Y/euT0srenjMyaw5GFWTeid1uXh4MrW3jz3yncfq
	oCmw6ZxWZva2fB6ib76uD5y62TcOdLs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-144-7AyPPGqPNGCNL5vDuYP2bA-1; Tue, 30 Nov 2021 10:35:36 -0500
X-MC-Unique: 7AyPPGqPNGCNL5vDuYP2bA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0BB1180F9FE;
	Tue, 30 Nov 2021 15:34:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBF735ED33;
	Tue, 30 Nov 2021 15:34:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1623D1809C89;
	Tue, 30 Nov 2021 15:34:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUFY2Ij030509 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 10:34:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EA489401E39; Tue, 30 Nov 2021 15:34:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E6AD1401E3E
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 15:34:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CDA0F18A01AB
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 15:34:01 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
	[209.85.210.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-104-UM-ACd-OPQWL_ZkCJVsGsw-1; Tue, 30 Nov 2021 10:33:59 -0500
X-MC-Unique: UM-ACd-OPQWL_ZkCJVsGsw-1
Received: by mail-pf1-f182.google.com with SMTP id x131so20969448pfc.12
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 07:33:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=3R4ZS16AebaZ8n/seL1qGv++EDp0e60cb49Vv6JbMq0=;
	b=0GE7PbWF2I/kY+Of9okUkVffUiT2dmPvgW4fEQ3S6U0VAzjiwZD5/I9z+x1WgYiwa0
	Sie8Qmzj7nVPuYnwbDmMJtndHtuhtqx61M+aPif7SHr65qrOoBYeY5zuMDvbV2Tawu21
	TsrVN6LIiqpt8XdLUhkr6MVWZOXob5Y9i33A5j75H+JCEnpIAYXCOOhCR75iN47KLAuL
	0VFHxDKQalP1p2Moqe/78PImKqIY3RsDx+L9sW6xJI8OGFGM+x2QHtIXfhCfmzeOdlEZ
	G0YX3XaN0ylFgh5oRm4RNeueImFjcCFG1TRhMieQrNAFIgpfoarQ6r0Et6kYIuzU10oJ
	tnQw==
X-Gm-Message-State: AOAM5312voO5Cdu1RzcuOasZl0kucc/0rUNCtQRrF1lclysOKBK8h9eH
	CuWiJU+TXYeEv6RdWSWZv+sNdoOPKZ9vuA==
X-Google-Smtp-Source: ABdhPJzYwZvcsvvHUD+VcKlISvAAyN9i+HSdaCFswER1FNytU+JJrghzph+F/7K1frE1nyBvvKrUbQ==
X-Received: by 2002:a63:5813:: with SMTP id m19mr40483776pgb.441.1638286438182;
	Tue, 30 Nov 2021 07:33:58 -0800 (PST)
Received: from smtpclient.apple (075-113-161-023.res.spectrum.com.
	[75.113.161.23]) by smtp.gmail.com with ESMTPSA id
	a11sm21160019pfh.108.2021.11.30.07.33.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 07:33:57 -0800 (PST)
X-Google-Original-From: Maurice Mines <Maurice.Mines@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: How to copy output from a terminal?
Date: Tue, 30 Nov 2021 07:33:56 -0800
Message-Id: <96F3C49D-C26D-4B76-8A2C-CFC3D7642100@gmail.com>
References: <alpine.NEB.2.23.451.2111300606410.11173@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2111300606410.11173@panix1.panix.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AUFY2Ij030509
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R29vZCBtb3JuaW5nIGV2ZXJ5b25lLCBJIGhhdmUgYSBjb3VwbGUgb2YgcXVlc3Rpb25zIGFuZCB0
aGlzIEkgdGhpbmsgaXTigJlzIHRoZSBiZXN0IHdheSB0byBhc2sgdGhlbT8gT25lIEkgdHJpZWQg
QWRvcmEgYnV0IGNvdWxkIG5vdCBnZXQgb3JjYSBpbnN0YWxsZWQuIFdvdWxkIHN3aXRjaGluZyB0
byBVYnVudHUgd29yayBiZXR0ZXIgd2l0aCBnZXR0aW5nIG9yY2EgaW5zdGFsbGVkIGFnYWluIHRo
aXMgaXMgb24gYSB2aXJ0dWFsIG1hY2hpbmUgbWVhbmluZyBwYXJhbGxlbHMgZGVza3RvcCBvbiBh
IE1hY0Jvb2sgUHJvIDIwMjAgSW50ZWwuIEFueSBhZHZpY2UgaXMgZ3JlYXRseSBhcHByZWNpYXRl
ZC4gQWxzbyBwbGVhc2UgcmVhbGl6ZSB0aGF0IEnigJltIGRpY3RhdGluZyB0aGlzIHRvIG15IHBo
b25lIGJlY2F1c2UgSSBoYXZlIG5vdCB5ZXQgZ290dGVuIGludG8gbXkgY29tcHV0ZXIgdGhpcyBt
b3JuaW5nIGJlY2F1c2UgSeKAmW0gb24gY2FtcHVzIGFsbCBkYXkuIEV2ZXJ5b25lIGhhdmUgYSBn
cmVhdCBkYXkgYW5kIEkgbG9vayBmb3J3YXJkIHRvIG1lZXRpbmcgeW91ciByZXNwb25zZXMuIAoK
bWF1cmljZSBNaW5lcyAgCk1hdXJpY2UgbWluZXMuCkJvYXJkIG1lbWJlciwgTmF0aW9uYWwgRmVk
ZXJhdGlvbiBvZiB0aGUgYmxpbmQgZGVhZiBibGluZCBkaXZpc2lvbi4KVmljZSBwcmVzaWRlbnQg
TmF0aW9uYWwgRmVkZXJhdGlvbiBhIG9mIHRoZSBibGluZCBvZiBDYWxpZm9ybmlhIEJha2Vyc2Zp
ZWxkIGNoYXB0ZXIuCkFtYXRldXIgcmFkaW8gY2FsbCBzaWduIGtkMGlrby4KRGlyZWN0IHBob25l
IG51bWJlciwgIDY2MS0yNDEtMzc4OCAKCj4gT24gTm92IDMwLCAyMDIxLCBhdCAzOjA3IEFNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29t
PiB3cm90ZToKPiAKPiDvu79UaGF0IGxvZyB5b3UgY3JlYXRlZCB3aXRoIHRlZSBzaG91bGQgYmUg
aW4geW91ciBjdXJyZW50IGRpcmVjdG9yeS4gIElmIHlvdQo+IHJhbiB0aGlzIGluIHlvdXIgdXNl
ciBkaXJlY3RvcnkgaXQgd291bGQgYmUgaW4geW91ciB1c2VyIGRpcmVjdG9yeS4KPiAKPiAKPj4g
T24gVHVlLCAzMCBOb3YgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4gCj4+IE9LIGFuZCB3aGVyZSBjYW4gSSBmaW5kIHRoYXQgbG9nPyBJZiBJIHdyaXRl
IHN0YXJ0eCB0byBsb2dpbiB0byBNYXRlLCBJIGhhdmUKPj4gbG9uZyBidWcuCj4+IAo+PiBWb2p0
YS4KPj4gCj4+IERuZSAzMC4gMTEuIDIxIHYgMTE6MjYgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiBuYXBzYWwoYSk6Cj4+PiBZb3VyIHByb2JsZW0gaXMgdGhhdCBlcnJvcnMgZ28g
dG8gc3RkZXJyIGFuZCBub3JtYWwgb3V0cHV0IGdvZXMgdG8gc3Rkb3V0LAo+Pj4gYnV0IG5ldmVy
IGZlYXIgTGludXggaGFzIHlvdSBjb3ZlcmVkLgo+Pj4gJCAuL2NvbW1hbmQgMj4mMSB8IHRlZSAt
YSBjb21tYW5kLmxvZwo+Pj4gVGhhdCBzZW5kcyB0aG9zZSBlcnJvcnMgdG8gc3Rkb3V0IGFuZCB0
ZWUgd3JpdGVzIGFsbCBvZiB0aGF0IGludG8KPj4+IGNvbW1hbmQubG9nCj4+PiAKPj4+IAo+Pj4+
IE9uIFR1ZSwgMzAgTm92IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+PiAKPj4+PiBIZWxsbywKPj4+PiAKPj4+PiBhbmQgd2hhdCBhYm91dCBjb3B5aW5n
IGVycm9ycz8gSSBjYW4ndCBib290IHRvIFN0b3JtdXggaW4gTWF0ZSBkZXNrdG9wIGFuZAo+Pj4+
IEkKPj4+PiBoYXZlIGxvbmcgYnVnLiBIb3cgY2FuIEkgc2F2ZSBpdCwgd2hlbiBJIGFtIGluIGNv
bnNvbGU/IGlzIHNvbWUgd2F5IHRvCj4+Pj4gc2hhcmUKPj4+PiBpdCB3aXRoIFN0b3JtIGFuZCBv
dGhlcnM/IElmIEkgd3JpdGUgdGhlbSBJIGhhdmUgc29tZSBidWcsIHRoZXkgY2Fubm90IGhlbHAK
Pj4+PiBtZSwgYmVjYXVzZSBzb21lIGJ1ZyBpcyByZWFsbHkgbGFyZ2UgdGVybWluZS4KPj4+PiAK
Pj4+PiBUaGFua3MuCj4+Pj4gCj4+Pj4gQmVzdCByZWdhcmRzCj4+Pj4gCj4+Pj4gVm9qdGEuCj4+
Pj4gCj4+Pj4gRG5lIDMwLiAxMS4gMjEgdiAxMDo0MiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIG5hcHNhbChhKToKPj4+Pj4gJCAuL3N0YXJ0d2luLnNofHRlZSBzdGFydHdpbi5s
b2cgZG9lcyBpdCBkZXN0cnVjdGl2ZWx5Lgo+Pj4+PiAkIC4vc3RhcnR3aW4uc2ggfCB0ZWUgLWEg
c3RhcnR3aW4ubG9nIGRvZXMgaXQgbm9uLWRlc3RydWN0aXZlbHkgYW5kCj4+Pj4+IGFwcGVuZHMg
b250byBhbiBleGlzdGluZyBmaWxlIHdpdGggdGhlIHNhbWUgbmFtZS4KPj4+Pj4gCj4+Pj4+IAo+
Pj4+PiBPbiBUdWUsIDMwIE5vdiAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+Pj4+PiAKPj4+Pj4+IEhpIGFsbCwKPj4+Pj4+IAo+Pj4+Pj4gCj4+Pj4+PiBJ
IHN0aWxsIGhhdmUgYSBmZXcgdGhpbmdzIEkgbmVlZCB0byBmaXgsIGJ1dCBhcyB0aGUgc3ViamVj
dCBzdGF0ZXMsIEkKPj4+Pj4+IGRvbid0Cj4+Pj4+PiBrbm93IGhvdyB0byBjb3B5IHRoZSBvdXRw
dXQgZnJvbSBhIHRlcm1pbmFsIHNvIEkgY2FuIGFzayBmb3IgaGVscCBmcm9tCj4+Pj4+PiB0aGUK
Pj4+Pj4+IHJlbGV2YW50IG1haWxpbmcgbGlzdHMvZm9ydW1zLgo+Pj4+Pj4gCj4+Pj4+PiAKPj4+
Pj4+IEkgYW0gdXNpbmcgTWF0ZS1UZXJtaW5hbCB3aXRoIE9yY2EgaW4gRmVkb3JhIE1hdGUgQ29t
cGl6IDM1LiBJIGtub3cgeW91Cj4+Pj4+PiBjYW4KPj4+Pj4+IGNvcHkgdGV4dCBvZmYgYSBjb25z
b2xlIHVzaW5nIHNwZWFrdXAsIGJ1dCBJIGFtIG5vdCBpbiBhIGNvbnNvbGUsIG5vdyBhbQo+Pj4+
Pj4gST8KPj4+Pj4+IAo+Pj4+Pj4gCj4+Pj4+PiBJZiBhbnlvbmUgaGFzIGFueSBhZHZpY2UsIEkn
ZCBiZSBhcHByZWNpYXRpdmUuIElmIHRoZXJlIGlzIGEgd2F5LCBmb3IKPj4+Pj4+IGV4YW1wbGUK
Pj4+Pj4+IHRvIHB5cGUgdGhlIG91dHB1dCBmcm9tIGEgY29tbWFuZCB0byBhIHRleHQgZmlsZSwg
Zm9yIGV4YW1wbGUgaWYgSSB0eXBlCj4+Pj4+PiAKPj4+Pj4+IAo+Pj4+Pj4gJCAuL3N0YXJ0d2lu
LnNoCj4+Pj4+PiAKPj4+Pj4+IFdoaWNoIGlzIGhvdyBJIHdvdWxkIHN0YXJ0IG15IHFlbXUgV2lu
ZG93cyBWTSwgY2FuIEkgcHlwZSB0aGUgb3V0cHV0IHRvIGEKPj4+Pj4+IHRleHQKPj4+Pj4+IGZp
bGUgaW4gJ34vJz8KPj4+Pj4+IAo+Pj4+Pj4gCj4+Pj4+IAo+Pj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+IAo+Pj4+IAo+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
PiAKPj4+PiAKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+IAo+PiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

