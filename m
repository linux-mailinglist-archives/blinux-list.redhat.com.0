Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A493A38C3C8
	for <lists+blinux-list@lfdr.de>; Fri, 21 May 2021 11:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621590505;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CED+4sjozKyTkNpN9KE8/0sWDNig+RhNMiFWKJ9+N1I=;
	b=GcZ7dCe8AYwL09qulU5ZdXj3AFWYmgMcZIcjFy9ztTQ6FGPO3RB/dpedX3M3UViCFbE8F/
	OZ2LIQBsXwy6A1HUnpeLcCkFYrg6+bD+BTzEiAhKJ03F3WEbl7xyZAgFnGhgtDrBA/n32K
	Zd6Gw3ulbT2EnA4cnWLnnuJqtzRYqSI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-284-NE4pTtnMN1W6sIYJtMPDJg-1; Fri, 21 May 2021 05:48:23 -0400
X-MC-Unique: NE4pTtnMN1W6sIYJtMPDJg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7476B107ACCA;
	Fri, 21 May 2021 09:48:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF36360CCC;
	Fri, 21 May 2021 09:48:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CFEF844A5A;
	Fri, 21 May 2021 09:48:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14L9lvsf015289 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 05:47:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 96B6D1000DB6; Fri, 21 May 2021 09:47:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91FBF100402C
	for <blinux-list@redhat.com>; Fri, 21 May 2021 09:47:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BFDB5101A531
	for <blinux-list@redhat.com>; Fri, 21 May 2021 09:47:54 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-407-u75wsY7GMFSgJJUwF3sxEQ-1; Fri, 21 May 2021 05:47:52 -0400
X-MC-Unique: u75wsY7GMFSgJJUwF3sxEQ-1
Received: by mail-wm1-f50.google.com with SMTP id
	f20-20020a05600c4e94b0290181f6edda88so116639wmq.2
	for <blinux-list@redhat.com>; Fri, 21 May 2021 02:47:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=QoanpHngeuHr7u4YMysSKoAh1QvpvH5AmL2sIoeP+44=;
	b=hb1Ata/XNke4rCquf9pb2+jmO5r0/QB6GFEod1SxZz+oCSpRr6hnt83clHzt68qL5y
	hsvuEXgAuHk44Vop3nuca0R6Ca3do4yP318JixHtUWRwTZf7v4vDey7PhDdqwF8rla3x
	JmnePN4DhY/pz0/mRc59+at2f9tBH5lQBJXKSqKznNTf3UhHZb4ca7L383ogFsXA8YFH
	+16chE1a6O8tXe8eWtnX370k8YNZXs1WqfqjlhC2dHuK86+7eeUdIqRHzkiheE2E+5Uj
	REuV6v5ZBtv6GKPB1rxNHwhGmZiKceANwl+m9/b6s6CezFyqodYQtjsMHSsH5c8sNSur
	KzlQ==
X-Gm-Message-State: AOAM5321UhVtjLuzrDMz7pnOR4UINlEs0HCsRaWvIZN751EWQKg6WGMo
	IKQ11MRCohpSPsOIbWQMfV4i3qvC1jJhKw==
X-Google-Smtp-Source: ABdhPJybUkwn0ySlckXdY4MZWFyRuO4OvFIuoFlJ8NzbCjNeUGp9aLC14ODPOop7ORhNDIiytanRYA==
X-Received: by 2002:a7b:c450:: with SMTP id l16mr8298254wmi.117.1621590470471; 
	Fri, 21 May 2021 02:47:50 -0700 (PDT)
Received: from [192.168.1.8] (net-2-44-25-150.cust.vodafonedsl.it.
	[2.44.25.150]) by smtp.gmail.com with ESMTPSA id
	y14sm1518830wrr.82.2021.05.21.02.47.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 21 May 2021 02:47:50 -0700 (PDT)
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
Message-ID: <2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
Date: Fri, 21 May 2021 11:47:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKSnVzdCBmb3IgdGhlIGhlY2sgb2YgaXQsIEkgcmVkaWQgYSBjbGVhbiBp
bnN0YWxsIG9mIGFyY2ggd2l0aCBwdWxzZWF1ZGlvIAp0aGlzIHRpbWUsIGFuZCBJIGNvbmZpZ3Vy
ZWQgZXZlcnl0aGluZyBJIG5lZWRlZCBydW5uaW5nIHRoZSBzaCBzY3JpcHQgCnlvdSBpbmRpY2F0
ZWQuCgpJdCBoYWxmIHdvcmtzLCBhbmQgaGFsZiBkb2Vzbid0LgoKV2hhdCBJIG1lYW4gYnkgdGhh
dCBpcyB0aGF0IHdoZW4gSSByZXN0YXJ0ZWQgdGhlIG1hY2hpbmUsIGp1c3QgYSBmZXcgCnNlY29u
ZHMgYWdvIGFuZCByYW4gZmVucmlyIGFzIHN1ZG9lciwgaXQgcGxheWVkIHRoZSBzb3VuZCBpY29u
LCB0aGluZyAKdGhhdCB3aXRoIHBpcGV3aXJlIGRpZG4ndCBoYXBwZW4sIGJ1dCBnYXZlIG1lIG5v
IHNwZWVjaCBhdCBhbGwuCgpJIGhhdmUgZXNwZWFrLCBzb3gsIGFuZCB4Y2xpcCBpbnN0YWxsZWQs
IHBsdXMgcHVsc2VhdWRpbywgCnB1bHNlYXVkaW8tYWxzYSwgYWxzYS11dGlscyBhbmQgcGx1Z2lu
cy4KCkFueSBzdWdnZXN0aW9ucz8KClRoYW5rcyBhZ2Fpbi4KCkJlc3QgcmVnYXJkcy4KCkZyYW5j
aXNjby4KCk9uIDUvMTgvMjEgNTowNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiBIb3dkeSwKPgo+IGRvIHlvdSBoYXZlIHRoZSByZXF1aXJlbWVudHMgZm9y
IHRoZSBnZW5lcmljIHNvdW5kIC8gdm9pY2UgZHJpdmVycyAKPiBpbnN0YWxsZWQ/Cj4gVG8gZ2V0
IHN1cmUsIHJlaW5zdGFsbCBpdCBleGVjdXRlOgo+IHN1ZG8gcGFjbWFuIC1TIHNveCBlc3BlYWst
bmcgeGNsaXAKPgo+IHNveCBpcyB1c2VkIGZvciBwbGF5IHNvdW5kLCBlc3BlYWsgZm9yIHZvaWNl
IG91dHB1dCBpbiB0aGUgZGVmYXVsdCAKPiBjb25maWd1cmF0aW9uLCB4Y2xpcCBpcyBhIGZ1bm55
IHRveSB0byBsZXQgZmVucmlyIHNoYXJlIHRoZSBjbGlwYm9hcmQgCj4gYmV0d2VlbiB5b3VyIEdV
SSBhbmQgVGVybWluYWwuCj4KPiBzdGFydCBmZW5yaXIgZm9yIHRlc3RpbmcgaW4gZm9yZWdyb3Vu
ZCAtIHlvdSBjYW4gc3RvcCBpdCB1c2luZyBDVFJMICsgQwo+IHN1ZG8gZmVucmlyCj4KPiBkaWQg
eW91IGhlYXIgdGhlIHN0YXJ0dXAgc291bmQ/IGZlbnJpciBwbGF5cyBhIGxpdHRsZSBzb3VuZGlj
b24gYXQgCj4gc3RhcnR1cC4KPgo+IGlmIG5vdCwgdGhlbiBwdWxzZWF1ZGlvIGlzIG5vdCBjb25m
aWd1cmVkLgo+IHNob3J0IHN0b3J5IGV4ZWN1dGU6Cj4gIyBjb25maWd1cmUgdXNlcgo+IC91c3Iv
c2hhcmUvZmVucmlyc2NyZWVucmVhZGVyL3Rvb2xzL2NvbmZpZ3VyZV9wdWxzZS5zaAo+ICMgY29u
ZmlndXJlIHJvb3QKPiBzdWRvIC91c3Ivc2hhcmUvZmVucmlyc2NyZWVucmVhZGVyL3Rvb2xzL2Nv
bmZpZ3VyZV9wdWxzZS5zaAo+Cj4gIyBuZWVkIHRvIHJlc3RhcnQgdGhhdCB0aGUgY29uZmlndXJh
dGlvbiBmb3IgYm90aCBnZXQgYWN0aXZlCj4KPiByZXN0YXJ0Cj4KPiB0aGVuIHJldHJ5Cj4KPiBz
dWRvIGZlbnJpcgo+Cj4gbG9uZyBzdG9ycnk6IGZlbnJpciBuZWVkcyBieSBkZWZhdWx0IHRvIHJ1
biBhcyByb290IHRvIGNvbGxlY3QgdGhlIAo+IGRhdGEgb24geW91ciBzY3JlZW4gb3IgY2FwdXRy
ZSB0aGUgaW5wdXQgZGV2aWNlcy4gaWYgZmVucmlyIHNwZWFrcyBvciAKPiBjcmVhdGVzIHNvdW5k
LCBpdCBkb2VzIHRoaXMgYXMgcm9vdCB1c2VyLiB5b3Ugd29udCBoZWFyIHNvdW5kIG9mIGFuIAo+
IG90aGVyIHVzZXIgYnkgcHVsc2VhdWRpbyAoc291bmQgc2VydmVyKSBkZXNpZ24uIFdlIG5lZWQg
dG8gdHJhbnNwb3J0IAo+IHRoZSBzb3VuZCBjcmVhdGVkIGFzIHJvb3QgdG8gdGhlIHNvdW5kIHNl
cnZlciB5b3UgaGF2ZSBydW5uaW5nIGFzIHVzZXIgCj4gdG8gZmluYWxseSBoZWFyIHRoZSBzb3Vu
ZC4KPgo+IGZlbnJpciBwcm92aWRlcyAyIHNjcmlwdHMgKHNlZSBhYm92ZSkgdG8gY29uZmlndXJl
IHRoZSByb290IHB1c2UgYXVkaW8gCj4gdG8gc2VuZCB0aGUgZGF0YSB0byB5b3VyIHVzZXIgYW5k
IGNvbmZpZ3VyZSB1c2VyIHB1bHNlIGF1ZGlvIHRvIGxpc3RlbiAKPiB0byB0aGUgc291bmQgc2Vu
dCBieSByb290IGFuZCBwbGF5IGl0Lgo+Cj4gY2hlZXJzIGNocnlzCj4KPgo+IDE4LjA1LjIxIHVt
IDE0OjQ2IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPgo+PiBI
ZWxsbyB0aGVyZSwKPj4KPj4KPj4gVGhhbmtzIHNvIG11Y2gsIG5vdywgdGhhdCBwYXJ0IG9mIHRo
ZSBwcm9ibGVtIGlzIHNvbHZlZCEKPj4KPj4gVGhlIG90aGVyIHBhcnQsIGhvdyBldmVyLCB0aGF0
IGlzIG5vdCBzb2x2ZWQsIGlzIHRoYXQgZmVucmlyIGRvZXNuJ3QgCj4+IHNwZWFrIHdpdGggZXNw
ZWFrLCBvciBlc3BlYWstbmcuCj4+Cj4+IERvIEkgaGF2ZSB0byBzZXQgc29tZXRoaW5nIHNvbWV3
aGVyZSBmb3IgdGhhdCB0byBoYXBwZW4/Cj4+Cj4+IFRoYW5rcyBhZ2Fpbi4KPj4KPj4gQmVzdCBy
ZWdhcmRzLgo+Pgo+PiBGcmFuY2lzY28uCj4+Cj4+IE9uIDUvMTgvMjEgMTA6MjQgQU0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBIb3dkeSBGcmFuY2lzY28s
Cj4+Pgo+Pj4gaSBkb250IGtub3cgd2h5IHRob3NlIGxpYnMgYXJlIG5vdCBhbiBkZXBlbmRlbmN5
IGJ5IHB5dGhvbi1weWVuY2hhbnQgCj4+PiBpZiB0aG9zZSBhcmUgc3ByZWFkIHdhcm5pbmdzLiBN
YXliZSB0aGlzIHNob3VsZCBiZSByZXBvcnRlZCB0byB0aGUgCj4+PiBwYWNrYWdlIG1haW50YWlu
ZXIuIEJ1dCBhbnl3YXkuCj4+Pgo+Pj4geW91IGNhbiBhc2sgcGFjbWFuIHdoYXQgcGFja2FnZSBj
b250YWlucyB0aGUgc3BlY2lmaWMgZmlsZSB5b3UgbmVlZCAKPj4+IGJ5ICJzdWRvIHBhY21hbiAt
RnkgZmlsZW5hbWUiLiBoZXJlIGkgZGlkIHRoaXMgZm9yIGZvciBleGFtcGxlIGluIAo+Pj4gbGli
dm9ra28uc286Cj4+Pgo+Pj4gMTA6MTQgW2NocnlzQGJsYWNrYmVhc3Qgfl0gOikgJCBzdWRvIHBh
Y21hbiAtRnkgbGlidm9pa2tvLnNvCj4+PiBbc3Vkb10gUGFzc3dvcnQgZsO8ciBjaHJ5czoKPj4+
IDo6IFN5bmNocm9uaXNpZXJlIFBha2V0ZGF0ZW5iYW5rZW4uLi4KPj4+IMKgY29yZSA5MDMsNSBL
aULCoCA2LDE3IE1pQi9zIDAwOjAwIAo+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+Pj4gMTAwJQo+
Pj4gwqBleHRyYSA5LDMgTWlCwqAgMjYsOSBNaUIvcyAwMDowMCAKPj4+IFsjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjXSAKPj4+IDEwMCUKPj4+IMKgY29tbXVuaXR5IDIyLDggTWlCwqAgMjksNiBNaUIvcyAwMDow
MSAKPj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXSAKPj4+IDEwMCUKPj4+IMKgbXVsdGlsaWIgMjIyLDUg
S2lCwqAgMTIsOCBNaUIvcyAwMDowMCAKPj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXSAKPj4+IDEwMCUK
Pj4+IGV4dHJhL2xpYnZvaWtrbyA0LjMuMS0xCj4+PiDCoMKgwqAgdXNyL2xpYi9saWJ2b2lra28u
c28KPj4+IDEwOjE1IFtjaHJ5c0BibGFja2JlYXN0IH5dIDopICQKPj4+Cj4+PiBzbyB0aGUgcGFj
a2FnZSB5b3UgbmVlZCBmb3IgbGlidm9ra28uc28gaXMgImxpYnZvaWtrbyIKPj4+IHRvIHNpbGVu
Y2Ugb3V0IGFsbCB0aGUgd2FybmluZ3MgZG8gdGhpczoKPj4+IHN1ZG8gcGFjbWFuIC1TIGxpYnZv
aWtrbyBudXNwZWxsIGhzcGVsbAo+Pj4KPj4+IHRoaXMgaW5zdGFsbCBhbGwgMyAoSU1PIG9wdGlv
bmFsIGRlcGVuZGVuY3kncywgd2hhdCBzaG91bGQgbm90IAo+Pj4gY3JlYXRlIGEgd2FybmluZywg
YnV0IHdlbGwsIGl0IGlzIGxpa2UgaXQgaXMpCj4+Pgo+Pj4gaSB1c2UgaXJzc2kgYXMgSVJDIChj
b21tYW5kbGluZSkgY2xpZW50LiB0aGVyZSBpcyBhbHNvIFBpZGdpbiAoYXMgCj4+PiBncmFwaGlj
YWwgY2xpZW50KS4gYm90aCBhcmUgdmVyeSBuaWNlLgo+Pj4KPj4+IGxvb2tpbmcgZm9yd2FyZCB0
byBzZWUgeW91IGluIElSQyA6KS4KPj4+Cj4+PiBjaGVlcnMgY2hyeXMKPj4+Cj4+Pgo+Pj4gQW0g
MTguMDUuMjEgdW0gMDg6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uOgo+Pj4+IEhlbGxvIHRoZXJlLAo+Pj4+Cj4+Pj4KPj4+PiBJIG1hbmFnZWQgdG8gaW5zdGFs
bCBvbmUgb2YgdGhlIGxpYnJhcmllcywgYnV0IG5vdCB0aGUgb3RoZXIgdHdvLCAKPj4+PiBzbyB0
aGFua3MgZm9yIHRoYXQuCj4+Pj4KPj4+PiBBbHNvLCB0aGFua3MgZm9yIHN1Z2dlc3RpbmcgdG8g
dXNlIHlheSwgSSBqdXN0IGluc3RhbGxlZCBpdCwgSSAKPj4+PiBkaWRuJ3Qga25vdyB5YW91cnQg
d2FzIGRlcHJlY2F0ZWQuCj4+Pj4KPj4+PiBNeSBxdWVzdGlvbiBub3cgaXMsIGFuZCB0aGlzJ2xs
IGJlIGR1bSwgd2hhdCBhcmUgcmVjb21tZW5kZWQgSVJDIAo+Pj4+IGNsaWVudHM/IGhvdyBkbyBJ
IGdldCB0aGVtIHdvcmtpbmc/IHdoYXQgc2hvdWxkIEkga25vdyBiZWZvcmUgCj4+Pj4gam9pbmlu
ZyBhbiBJUkMgY2hhbm5lbCwgd2hhdCBldmVyIGl0IG1pZ2h0IGJlPwo+Pj4+Cj4+Pj4gVGhhbmtz
IGFnYWluLgo+Pj4+Cj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Cj4+Pj4gRnJhbmNpc2NvLgo+Pj4+
Cj4+Pj4gT24gNS8xNy8yMSA5OjE5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+Pj4+PiBIaSwgSSBqdXN0IHBvc3RlZCBhIGxpbmsgdG8gdGhpcyBtZXNzYWdl
IGludGVuZGVkIHRvIGNocnlzIChGZW5yaXIgCj4+Pj4+IGF1dGhvcikgb24gdGhlICNhMTF5IGNo
YW5uZWwgb2YgaXJjLmxpbnV4LWExMXkub3JnLgo+Pj4+Pgo+Pj4+PiBNYXliZSBqb2luIGhpbSB0
aGVyZT8KPj4+Pj4KPj4+Pj4gRGlkaWVyCj4+Pj4+Cj4+Pj4+IExlIDE3LzA1LzIwMjEgw6AgMjA6
MTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+Pj4+
IEhlbGxvIGV2ZXJ5b25lLAo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBJIGp1c3QgZG93bmxvYWRlZCBm
ZW5yaXItZ2l0IGZyb20gdGhlIEFVUiB1c2luZyB5YW91cnQuCj4+Pj4+Pgo+Pj4+Pj4gV2hlbiBJ
IHRyeSB0byBydW4gZmVucmlyIHdpdGggdGhlIGNvbW1hbmQKPj4+Pj4+Cj4+Pj4+PiBmZW5yaXIK
Pj4+Pj4+Cj4+Pj4+PiBpbiBhIHRlcm1pbmFsLCBob3cgZXZlciwgaSBnZXQgZmVucmlyJ3Mgc3Rh
cnR1cCBzb3VuZCwgYW5kIHRoaXM6Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IFtmcmFuY2lzY29AQmx1
ZWJsaW5rIH5dJCBmZW5yaXIKPj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAy
MDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgCj4+Pj4+PiBwbHVnaW46IGxpYmhzcGVsbC5zby4K
Pj4+Pj4+IDA6IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9y
IGRpcmVjdG9yeQo+Pj4+Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1
LjM3NDogRXJyb3IgbG9hZGluZyAKPj4+Pj4+IHBsdWdpbjogbGlidm9pa2tvLnNvLgo+Pj4+Pj4g
MTogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0
b3J5Cj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc3OiBF
cnJvciBsb2FkaW5nIAo+Pj4+Pj4gcGx1Z2luOiBsaWJudXNwZWxsLnNvCj4+Pj4+PiAuNDogY2Fu
bm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+
Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEFueSBpZGVhcyBvbiBob3cgdG8gZml4IGl0LCBhbmQgbm8gc3Bl
ZWNoIGVpdGhlci4KPj4+Pj4+Cj4+Pj4+PiBUaGFuayB5b3UgZm9yIGFueSBhbnN3ZXIuCj4+Pj4+
Pgo+Pj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Pj4KPj4+Pj4+IEZyYW5jaXNjby4KPj4+Pj4+Cj4+
Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4KPj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

