Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 99AD938D23E
	for <lists+blinux-list@lfdr.de>; Sat, 22 May 2021 02:04:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621641895;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8ilQHz/Gf8IkXmCF6LH0IaVw5212zzz1pj6XpP5A7h4=;
	b=Jun/Wh8gHf7SqwoqsLMlgJ7opSbOHK/Td0YnKJ34l07ozkUdB7GH9jJd6XBjWW4RqEbnJR
	rkqe5bJ8KaSKvRo7OoRGP/faYiSFieM12LYT4mwOi7f/MTltAlLEKkditn/qNywOZD2tLH
	L0JxzOrFwWKIFfdWiCmfQEb8gPlh8Po=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-H3-1dq_zP7-eZvDJSjoh7g-1; Fri, 21 May 2021 20:04:53 -0400
X-MC-Unique: H3-1dq_zP7-eZvDJSjoh7g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C291801B15;
	Sat, 22 May 2021 00:04:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD5105F705;
	Sat, 22 May 2021 00:04:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B32961801028;
	Sat, 22 May 2021 00:04:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14M04U6g000769 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 20:04:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B982720ED6BF; Sat, 22 May 2021 00:04:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B52E220ED6C5
	for <blinux-list@redhat.com>; Sat, 22 May 2021 00:04:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D051833942
	for <blinux-list@redhat.com>; Sat, 22 May 2021 00:04:28 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-133-Fey2FNpSN361XikXVcrslg-1; Fri, 21 May 2021 20:04:25 -0400
X-MC-Unique: Fey2FNpSN361XikXVcrslg-1
Received: by mail-qv1-f49.google.com with SMTP id a7so7029065qvf.11
	for <blinux-list@redhat.com>; Fri, 21 May 2021 17:04:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=pS3hS8o+I2emwc6bmGoDX5237mk2dROuFDnCU2voUIQ=;
	b=TmGkEkEiaui+nF2vwD7+hhAmnGlyyzJW340iWuJ3fLAle9iClUznKEhGeFeSD07mO0
	Oi3SC+6v2hjpQou/nb4rjpEFryoQfU/LZwR/dMCzpfcxkls0S2cF0DwxwcCYN82TRXIi
	UW16+GXpYIm8NihW+tIzMxQAlTMzk25YMrX8o+1v44ox81wyLI/rW02BPb+5s8OHZapz
	fTybqBJxA4C1ZHpAQ5OTeRGH8aKSjgYEiPCET6wwqCLdCxM2aRrINExxEqOjZnJKnZZe
	O3Kx119sPXcIzbyszBfJpEICw6Aa9KHsHGD9luMpNdZUdH5r7gGx7s1KR1aa1t9rLN8O
	+Kkg==
X-Gm-Message-State: AOAM531XphK9gWTVUw251KN3sQvCnFi9KFrq7p0sNILK0/9DY1ROD4md
	AV6GO2vrvEJuOAYC90Rolz1pY01G/6C3YjgN
X-Google-Smtp-Source: ABdhPJzdl1uMmxG6hFny2WoV9r4z9HnBw5TRG2/yjXJoE6lcPkRAGS5F27hMLau25lK7JMnnZgEjig==
X-Received: by 2002:a0c:f883:: with SMTP id u3mr15932538qvn.44.1621641864879; 
	Fri, 21 May 2021 17:04:24 -0700 (PDT)
Received: from ElBraille ([2600:1702:20f0:4420:a9b9:92ef:7057:53b1])
	by smtp.gmail.com with ESMTPSA id
	a10sm5469383qtg.40.2021.05.21.17.04.23 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 May 2021 17:04:24 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>	<2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>	<760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
	<1dbd65b0-0837-f81b-035d-00f30245cbe0@gmail.com>
In-Reply-To: <1dbd65b0-0837-f81b-035d-00f30245cbe0@gmail.com>
Subject: RE: A question about Fenrir on Arch linux
Date: Fri, 21 May 2021 20:04:22 -0400
Message-ID: <093e01d74e9e$05841320$108c3960$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQIWlRsTGUl/XzihwIYXUwZR/A+/6wGuwVS+AerGm+4BmW9dtgIERzSNAYHfz/wBxjPcxwG1scUKAjJNFb+p/NaPgA==
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14M04U6g000769
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
Content-Language: en-us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZGlkIHlvdSB0ZWxsIHNwZWVjaC1kaXNwYXRjaGVyIHRvIHVzZSBlc3BlYWstbmc/LiAgWW91
IGNhbiBjaGFuZ2UgdGhpcyBpbiBldGMvc3BlZWNoLWRpc3BhdGNoZXIvc3BlZWNoZGRjY2YuIFNw
ZWVjaGRkY2NmIEhUSC4KCk1hdHRoZXcKCgoKLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KRnJv
bTogYmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tIDxibGludXgtbGlzdC1ib3VuY2VzQHJl
ZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
ClNlbnQ6IEZyaWRheSwgTWF5IDIxLCAyMDIxIDc6MzkgQU0KVG86IGJsaW51eC1saXN0QHJlZGhh
dC5jb20KU3ViamVjdDogUmU6IEEgcXVlc3Rpb24gYWJvdXQgRmVucmlyIG9uIEFyY2ggbGludXgK
CkhlbGxvIHRoZXJlLAoKCnJlbW92aW5nIGVzcGVhayBkb2Vzbid0IGZpeCBpdCwgdGhlIHNhbWUg
cHJvYmxlbSBzdGlsbCBwZXJzaXN0cy4KCkJlc3QgcmVnYXJkcy4KCkZyYW5jaXNjby4KCgpPbiA1
LzIxLzIxIDEyOjM2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+IEhvd2R5Cj4KPj4gSSBoYXZlIGVzcGVhaywgc294LCBhbmQgeGNsaXAgaW5zdGFsbGVkLCBw
bHVzIHB1bHNlYXVkaW8sIAo+PiBwdWxzZWF1ZGlvLWFsc2EsIGFsc2EtdXRpbHMgYW5kIHBsdWdp
bnMuIAo+IGVzcGVhay1uZyBpcyB1c2VkIGJ5IGRlZmF1bHQgaW5zdGVhZCBvZiBlc3BlYWsuIGVz
cGVhay1uZyBpcyB0aGUgCj4gc3VjY2Vzc29yIG9mIGVzcGVhay4gZG8gdGFrZSBjYXJlIHRvIG5v
dCBpbnN0YWxsIGVzcGVhayBidXQgZXNwZWFrLW5nIAo+IGFuZCBnaXZlIGFub3RoZXIgc2hvdCA6
KS4KPgo+Cj4gQW0gMjEuMDUuMjEgdW0gMTE6NDcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uOgo+PiBIZWxsbyB0aGVyZSwKPj4KPj4KPj4gSnVzdCBmb3IgdGhlIGhl
Y2sgb2YgaXQsIEkgcmVkaWQgYSBjbGVhbiBpbnN0YWxsIG9mIGFyY2ggd2l0aCAKPj4gcHVsc2Vh
dWRpbyB0aGlzIHRpbWUsIGFuZCBJIGNvbmZpZ3VyZWQgZXZlcnl0aGluZyBJIG5lZWRlZCBydW5u
aW5nIAo+PiB0aGUgc2ggc2NyaXB0IHlvdSBpbmRpY2F0ZWQuCj4+Cj4+IEl0IGhhbGYgd29ya3Ms
IGFuZCBoYWxmIGRvZXNuJ3QuCj4+Cj4+IFdoYXQgSSBtZWFuIGJ5IHRoYXQgaXMgdGhhdCB3aGVu
IEkgcmVzdGFydGVkIHRoZSBtYWNoaW5lLCBqdXN0IGEgZmV3IAo+PiBzZWNvbmRzIGFnbyBhbmQg
cmFuIGZlbnJpciBhcyBzdWRvZXIsIGl0IHBsYXllZCB0aGUgc291bmQgaWNvbiwgdGhpbmcgCj4+
IHRoYXQgd2l0aCBwaXBld2lyZSBkaWRuJ3QgaGFwcGVuLCBidXQgZ2F2ZSBtZSBubyBzcGVlY2gg
YXQgYWxsLgo+Pgo+PiBJIGhhdmUgZXNwZWFrLCBzb3gsIGFuZCB4Y2xpcCBpbnN0YWxsZWQsIHBs
dXMgcHVsc2VhdWRpbywgCj4+IHB1bHNlYXVkaW8tYWxzYSwgYWxzYS11dGlscyBhbmQgcGx1Z2lu
cy4KPj4KPj4gQW55IHN1Z2dlc3Rpb25zPwo+Pgo+PiBUaGFua3MgYWdhaW4uCj4+Cj4+IEJlc3Qg
cmVnYXJkcy4KPj4KPj4gRnJhbmNpc2NvLgo+Pgo+PiBPbiA1LzE4LzIxIDU6MDYgUE0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBIb3dkeSwKPj4+Cj4+PiBk
byB5b3UgaGF2ZSB0aGUgcmVxdWlyZW1lbnRzIGZvciB0aGUgZ2VuZXJpYyBzb3VuZCAvIHZvaWNl
IGRyaXZlcnMgCj4+PiBpbnN0YWxsZWQ/Cj4+PiBUbyBnZXQgc3VyZSwgcmVpbnN0YWxsIGl0IGV4
ZWN1dGU6Cj4+PiBzdWRvIHBhY21hbiAtUyBzb3ggZXNwZWFrLW5nIHhjbGlwCj4+Pgo+Pj4gc294
IGlzIHVzZWQgZm9yIHBsYXkgc291bmQsIGVzcGVhayBmb3Igdm9pY2Ugb3V0cHV0IGluIHRoZSBk
ZWZhdWx0IAo+Pj4gY29uZmlndXJhdGlvbiwgeGNsaXAgaXMgYSBmdW5ueSB0b3kgdG8gbGV0IGZl
bnJpciBzaGFyZSB0aGUgCj4+PiBjbGlwYm9hcmQgYmV0d2VlbiB5b3VyIEdVSSBhbmQgVGVybWlu
YWwuCj4+Pgo+Pj4gc3RhcnQgZmVucmlyIGZvciB0ZXN0aW5nIGluIGZvcmVncm91bmQgLSB5b3Ug
Y2FuIHN0b3AgaXQgdXNpbmcgQ1RSTCArIEMKPj4+IHN1ZG8gZmVucmlyCj4+Pgo+Pj4gZGlkIHlv
dSBoZWFyIHRoZSBzdGFydHVwIHNvdW5kPyBmZW5yaXIgcGxheXMgYSBsaXR0bGUgc291bmRpY29u
IGF0IAo+Pj4gc3RhcnR1cC4KPj4+Cj4+PiBpZiBub3QsIHRoZW4gcHVsc2VhdWRpbyBpcyBub3Qg
Y29uZmlndXJlZC4KPj4+IHNob3J0IHN0b3J5IGV4ZWN1dGU6Cj4+PiAjIGNvbmZpZ3VyZSB1c2Vy
Cj4+PiAvdXNyL3NoYXJlL2ZlbnJpcnNjcmVlbnJlYWRlci90b29scy9jb25maWd1cmVfcHVsc2Uu
c2gKPj4+ICMgY29uZmlndXJlIHJvb3QKPj4+IHN1ZG8gL3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5y
ZWFkZXIvdG9vbHMvY29uZmlndXJlX3B1bHNlLnNoCj4+Pgo+Pj4gIyBuZWVkIHRvIHJlc3RhcnQg
dGhhdCB0aGUgY29uZmlndXJhdGlvbiBmb3IgYm90aCBnZXQgYWN0aXZlCj4+Pgo+Pj4gcmVzdGFy
dAo+Pj4KPj4+IHRoZW4gcmV0cnkKPj4+Cj4+PiBzdWRvIGZlbnJpcgo+Pj4KPj4+IGxvbmcgc3Rv
cnJ5OiBmZW5yaXIgbmVlZHMgYnkgZGVmYXVsdCB0byBydW4gYXMgcm9vdCB0byBjb2xsZWN0IHRo
ZSAKPj4+IGRhdGEgb24geW91ciBzY3JlZW4gb3IgY2FwdXRyZSB0aGUgaW5wdXQgZGV2aWNlcy4g
aWYgZmVucmlyIHNwZWFrcyAKPj4+IG9yIGNyZWF0ZXMgc291bmQsIGl0IGRvZXMgdGhpcyBhcyBy
b290IHVzZXIuIHlvdSB3b250IGhlYXIgc291bmQgb2YgCj4+PiBhbiBvdGhlciB1c2VyIGJ5IHB1
bHNlYXVkaW8gKHNvdW5kIHNlcnZlcikgZGVzaWduLiBXZSBuZWVkIHRvIAo+Pj4gdHJhbnNwb3J0
IHRoZSBzb3VuZCBjcmVhdGVkIGFzIHJvb3QgdG8gdGhlIHNvdW5kIHNlcnZlciB5b3UgaGF2ZSAK
Pj4+IHJ1bm5pbmcgYXMgdXNlciB0byBmaW5hbGx5IGhlYXIgdGhlIHNvdW5kLgo+Pj4KPj4+IGZl
bnJpciBwcm92aWRlcyAyIHNjcmlwdHMgKHNlZSBhYm92ZSkgdG8gY29uZmlndXJlIHRoZSByb290
IHB1c2UgCj4+PiBhdWRpbyB0byBzZW5kIHRoZSBkYXRhIHRvIHlvdXIgdXNlciBhbmQgY29uZmln
dXJlIHVzZXIgcHVsc2UgYXVkaW8gCj4+PiB0byBsaXN0ZW4gdG8gdGhlIHNvdW5kIHNlbnQgYnkg
cm9vdCBhbmQgcGxheSBpdC4KPj4+Cj4+PiBjaGVlcnMgY2hyeXMKPj4+Cj4+Pgo+Pj4gMTguMDUu
MjEgdW0gMTQ6NDYgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+
Pj4KPj4+PiBIZWxsbyB0aGVyZSwKPj4+Pgo+Pj4+Cj4+Pj4gVGhhbmtzIHNvIG11Y2gsIG5vdywg
dGhhdCBwYXJ0IG9mIHRoZSBwcm9ibGVtIGlzIHNvbHZlZCEKPj4+Pgo+Pj4+IFRoZSBvdGhlciBw
YXJ0LCBob3cgZXZlciwgdGhhdCBpcyBub3Qgc29sdmVkLCBpcyB0aGF0IGZlbnJpciAKPj4+PiBk
b2Vzbid0IHNwZWFrIHdpdGggZXNwZWFrLCBvciBlc3BlYWstbmcuCj4+Pj4KPj4+PiBEbyBJIGhh
dmUgdG8gc2V0IHNvbWV0aGluZyBzb21ld2hlcmUgZm9yIHRoYXQgdG8gaGFwcGVuPwo+Pj4+Cj4+
Pj4gVGhhbmtzIGFnYWluLgo+Pj4+Cj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Cj4+Pj4gRnJhbmNp
c2NvLgo+Pj4+Cj4+Pj4gT24gNS8xOC8yMSAxMDoyNCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gSG93ZHkgRnJhbmNpc2NvLAo+Pj4+Pgo+Pj4+PiBp
IGRvbnQga25vdyB3aHkgdGhvc2UgbGlicyBhcmUgbm90IGFuIGRlcGVuZGVuY3kgYnkgCj4+Pj4+
IHB5dGhvbi1weWVuY2hhbnQgaWYgdGhvc2UgYXJlIHNwcmVhZCB3YXJuaW5ncy4gTWF5YmUgdGhp
cyBzaG91bGQgCj4+Pj4+IGJlIHJlcG9ydGVkIHRvIHRoZSBwYWNrYWdlIG1haW50YWluZXIuIEJ1
dCBhbnl3YXkuCj4+Pj4+Cj4+Pj4+IHlvdSBjYW4gYXNrIHBhY21hbiB3aGF0IHBhY2thZ2UgY29u
dGFpbnMgdGhlIHNwZWNpZmljIGZpbGUgeW91IAo+Pj4+PiBuZWVkIGJ5ICJzdWRvIHBhY21hbiAt
RnkgZmlsZW5hbWUiLiBoZXJlIGkgZGlkIHRoaXMgZm9yIGZvciAKPj4+Pj4gZXhhbXBsZSBpbiBs
aWJ2b2trby5zbzoKPj4+Pj4KPj4+Pj4gMTA6MTQgW2NocnlzQGJsYWNrYmVhc3Qgfl0gOikgJCBz
dWRvIHBhY21hbiAtRnkgbGlidm9pa2tvLnNvCj4+Pj4+IFtzdWRvXSBQYXNzd29ydCBmw7xyIGNo
cnlzOgo+Pj4+PiA6OiBTeW5jaHJvbmlzaWVyZSBQYWtldGRhdGVuYmFua2VuLi4uCj4+Pj4+ICBj
b3JlIDkwMyw1IEtpQiAgNiwxNyBNaUIvcyAwMDowMCAKPj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNd
IAo+Pj4+PiAxMDAlCj4+Pj4+ICBleHRyYSA5LDMgTWlCICAyNiw5IE1pQi9zIDAwOjAwIAo+Pj4+
PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjI10gCj4+Pj4+IDEwMCUKPj4+Pj4gIGNvbW11bml0eSAyMiw4IE1p
QiAgMjksNiBNaUIvcyAwMDowMSAKPj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+Pj4+PiAxMDAl
Cj4+Pj4+ICBtdWx0aWxpYiAyMjIsNSBLaUIgIDEyLDggTWlCL3MgMDA6MDAgCj4+Pj4+IFsjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjXSAKPj4+Pj4gMTAwJQo+Pj4+PiBleHRyYS9saWJ2b2lra28gNC4zLjEtMQo+
Pj4+PiAgICAgdXNyL2xpYi9saWJ2b2lra28uc28KPj4+Pj4gMTA6MTUgW2NocnlzQGJsYWNrYmVh
c3Qgfl0gOikgJAo+Pj4+Pgo+Pj4+PiBzbyB0aGUgcGFja2FnZSB5b3UgbmVlZCBmb3IgbGlidm9r
a28uc28gaXMgImxpYnZvaWtrbyIKPj4+Pj4gdG8gc2lsZW5jZSBvdXQgYWxsIHRoZSB3YXJuaW5n
cyBkbyB0aGlzOgo+Pj4+PiBzdWRvIHBhY21hbiAtUyBsaWJ2b2lra28gbnVzcGVsbCBoc3BlbGwK
Pj4+Pj4KPj4+Pj4gdGhpcyBpbnN0YWxsIGFsbCAzIChJTU8gb3B0aW9uYWwgZGVwZW5kZW5jeSdz
LCB3aGF0IHNob3VsZCBub3QgCj4+Pj4+IGNyZWF0ZSBhIHdhcm5pbmcsIGJ1dCB3ZWxsLCBpdCBp
cyBsaWtlIGl0IGlzKQo+Pj4+Pgo+Pj4+PiBpIHVzZSBpcnNzaSBhcyBJUkMgKGNvbW1hbmRsaW5l
KSBjbGllbnQuIHRoZXJlIGlzIGFsc28gUGlkZ2luIChhcyAKPj4+Pj4gZ3JhcGhpY2FsIGNsaWVu
dCkuIGJvdGggYXJlIHZlcnkgbmljZS4KPj4+Pj4KPj4+Pj4gbG9va2luZyBmb3J3YXJkIHRvIHNl
ZSB5b3UgaW4gSVJDIDopLgo+Pj4+Pgo+Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4KPj4+Pj4KPj4+
Pj4gQW0gMTguMDUuMjEgdW0gMDg6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uOgo+Pj4+Pj4gSGVsbG8gdGhlcmUsCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEkgbWFu
YWdlZCB0byBpbnN0YWxsIG9uZSBvZiB0aGUgbGlicmFyaWVzLCBidXQgbm90IHRoZSBvdGhlciB0
d28sIAo+Pj4+Pj4gc28gdGhhbmtzIGZvciB0aGF0Lgo+Pj4+Pj4KPj4+Pj4+IEFsc28sIHRoYW5r
cyBmb3Igc3VnZ2VzdGluZyB0byB1c2UgeWF5LCBJIGp1c3QgaW5zdGFsbGVkIGl0LCBJIAo+Pj4+
Pj4gZGlkbid0IGtub3cgeWFvdXJ0IHdhcyBkZXByZWNhdGVkLgo+Pj4+Pj4KPj4+Pj4+IE15IHF1
ZXN0aW9uIG5vdyBpcywgYW5kIHRoaXMnbGwgYmUgZHVtLCB3aGF0IGFyZSByZWNvbW1lbmRlZCBJ
UkMgCj4+Pj4+PiBjbGllbnRzPyBob3cgZG8gSSBnZXQgdGhlbSB3b3JraW5nPyB3aGF0IHNob3Vs
ZCBJIGtub3cgYmVmb3JlIAo+Pj4+Pj4gam9pbmluZyBhbiBJUkMgY2hhbm5lbCwgd2hhdCBldmVy
IGl0IG1pZ2h0IGJlPwo+Pj4+Pj4KPj4+Pj4+IFRoYW5rcyBhZ2Fpbi4KPj4+Pj4+Cj4+Pj4+PiBC
ZXN0IHJlZ2FyZHMuCj4+Pj4+Pgo+Pj4+Pj4gRnJhbmNpc2NvLgo+Pj4+Pj4KPj4+Pj4+IE9uIDUv
MTcvMjEgOToxOSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4+Pj4+PiBIaSwgSSBqdXN0IHBvc3RlZCBhIGxpbmsgdG8gdGhpcyBtZXNzYWdlIGludGVuZGVk
IHRvIGNocnlzIAo+Pj4+Pj4+IChGZW5yaXIgYXV0aG9yKSBvbiB0aGUgI2ExMXkgY2hhbm5lbCBv
ZiBpcmMubGludXgtYTExeS5vcmcuCj4+Pj4+Pj4KPj4+Pj4+PiBNYXliZSBqb2luIGhpbSB0aGVy
ZT8KPj4+Pj4+Pgo+Pj4+Pj4+IERpZGllcgo+Pj4+Pj4+Cj4+Pj4+Pj4gTGUgMTcvMDUvMjAyMSDD
oCAyMDoxNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+
Pj4+Pj4+IEhlbGxvIGV2ZXJ5b25lLAo+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJIGp1c3Qg
ZG93bmxvYWRlZCBmZW5yaXItZ2l0IGZyb20gdGhlIEFVUiB1c2luZyB5YW91cnQuCj4+Pj4+Pj4+
Cj4+Pj4+Pj4+IFdoZW4gSSB0cnkgdG8gcnVuIGZlbnJpciB3aXRoIHRoZSBjb21tYW5kCj4+Pj4+
Pj4+Cj4+Pj4+Pj4+IGZlbnJpcgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBpbiBhIHRlcm1pbmFsLCBob3cg
ZXZlciwgaSBnZXQgZmVucmlyJ3Mgc3RhcnR1cCBzb3VuZCwgYW5kIHRoaXM6Cj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IFtmcmFuY2lzY29AQmx1ZWJsaW5rIH5dJCBmZW5yaXIKPj4+Pj4+Pj4g
KiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9hZGlu
ZyAKPj4+Pj4+Pj4gcGx1Z2luOiBsaWJoc3BlbGwuc28uCj4+Pj4+Pj4+IDA6IGNhbm5vdCBvcGVu
IHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+Pj4+Pj4+PiAq
KiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc0OiBFcnJvciBsb2FkaW5n
IAo+Pj4+Pj4+PiBwbHVnaW46IGxpYnZvaWtrby5zby4KPj4+Pj4+Pj4gMTogY2Fubm90IG9wZW4g
c2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4+Pj4+ICoq
IChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzc6IEVycm9yIGxvYWRpbmcg
Cj4+Pj4+Pj4+IHBsdWdpbjogbGlibnVzcGVsbC5zbwo+Pj4+Pj4+PiAuNDogY2Fubm90IG9wZW4g
c2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IEFueSBpZGVhcyBvbiBob3cgdG8gZml4IGl0LCBhbmQgbm8gc3BlZWNo
IGVpdGhlci4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gVGhhbmsgeW91IGZvciBhbnkgYW5zd2VyLgo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiBCZXN0IHJlZ2FyZHMuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEZyYW5jaXNjby4K
Pj4+Pj4+Pj4KPj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Pj4+Pgo+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4KPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

