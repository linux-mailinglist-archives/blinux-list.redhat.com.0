Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEC671F091
	for <lists+blinux-list@lfdr.de>; Thu,  1 Jun 2023 19:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685640131;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Er+GPjtCXuZWUAC11jELIba8bGvjH8H4qNpPzzATx0=;
	b=Rk+M8d/AIGPPPR0mv87osvtB5WXiJYA+L2Fx33AA/4tk94ZmSUN6tYU9F4UM4LzcR4ZkkB
	FUYgwFXg96OXt5+W8/Jhku7PjMhuNw0cxHGEsUItBl0jyEKhWGPpykJAAXopkz+yCVYsxC
	8iA9JQKMSnCJb7r7UOm5/LJigFXubMs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-345-eTZDh8K3O4qN1q0EFjuLyA-1; Thu, 01 Jun 2023 13:22:07 -0400
X-MC-Unique: eTZDh8K3O4qN1q0EFjuLyA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74310858F18;
	Thu,  1 Jun 2023 17:22:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 172C9112132D;
	Thu,  1 Jun 2023 17:22:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9112719465A4;
	Thu,  1 Jun 2023 17:22:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.1533.1685638716.2653567.blinux-list@redhat.com>
References: <mailman.1535.1685633430.2653573.blinux-list@redhat.com>
 <mailman.1533.1685638716.2653567.blinux-list@redhat.com>
Date: Thu, 1 Jun 2023 13:21:59 -0400
Subject: Re: Good minimal distro today?
To: blinux-list@redhat.com
Message-ID: <mailman.1548.1685640124.2653567.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2VsbCwgcnVubmluZyBvbiBhIDM4NiBpcyBwcmV0dHkgaGFyZGNvcmUsIGJ1dCBtb3N0IExpbnV4
IHBhY2thZ2VzCmJ1aWx0IGZvciAzMi1iaXQgc3lzdGVtcyBoYXZlIHRoZWlyIGFyY2hpdGVjdHVy
ZSBsaXN0ZWQgYXMgaTM4NgppbXBseWluZyBhdCBsZWFzdCBiaW5hcnkgY29tcGF0aWJpbGl0eSB3
aXRoIHRoZSBlYXJsaWVzdCAzMi1iaXQgeDg2CnByb2Nlc3NvcnMuLi4gYW5kIHRoZSBMaW51eCBr
ZXJuZWwgaXRzZWxmIGhhcyA2ODYgYnVpbGRzIGRpc3RpbmN0IGZyb20KdGhlIGkzODYgYnVpbGRz
LCBmdXJ0aGVyIGltcGx5aW5nIHRoZSBpMzg2IGtlcm5lbHMgaGF2ZSBzdXBwb3J0IGZvcgp0aGUg
b2xkZXN0IDMyLWJpdCBwcm9jZXNzb3JzLgoKUHJvYmFibHkgbm90IGV2ZW4gd29ydGggdHJ5aW5n
IHRvIHJ1biBhIExpbnV4IERFIG9uIHN1Y2ggYW4gb2xkCm1hY2hpbmUsIGJ1dCBhIHB1cmVseSBD
TEkgc2V0dXAgbWlnaHQgd29yay4uLiBUaG91Z2gsIGRvZXMgdGhlIG9sZAptYWNoaW5lIGV2ZW4g
aGF2ZSBhIENELVJPTSBkcml2ZSBvciBVU0IgcG9ydHMgdG8gc3VwcG9ydCBtb2Rlcm4KaW5zdGFs
bCBtZWRpYT8gRXZlbiBpZiB5b3UgY291bGQgZ2V0IGl0IG9uIHRvIGZsb3BwaWVzLCBhIERlYmlh
bgpuZXRpbnN0IHdvdWxkIHJlcXVpcmUgc2V2ZXJhbCBzdGFja3MgdGFsbCBhcyBhIHBlcnNvbiBh
bmQgaWYgdGhlIG9sZAptYWNoaW5lIGFsc28gbGFja2VkIGV0aGVybmV0Li4uIHdlbGwsIGl0J3Mg
aGFyZCB0byBpbWFnaW5lIHRoYW4gbWFueQpmbG9wcHkgZGlza3MgaW4gb25lIHBsYWNlLgoKT24g
Ni8xLzIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPiB3cm90ZToKPiBIb3cgbXVjaCBtYWNoaW5lIGRvIEkgbmVlZCB0byBydW4gc29t
ZSB2ZXJzaW9uIG9mIGxpbnV4P8KgIENhbiBJIGdldAo+IHNvbWV0aGluZyB0byBydW4gb24gYSAz
ODYgb3IgNDg2P8KgIE9yIG1heWJlIEkgc2hvdWxkIGp1c3QgbWFrZSBhIERPUwo+IG1hY2hpbmU/
wqAgVGhhbmtzLgo+Cj4gSG93YXJkCj4KPgo+IE9uIDYvMS8yMDIzIDEwOjE5IEFNLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBIaSBhbGwsIEkgd2FudCBhIGRp
c3RybyB3aGljaCBpcyByZWxhdGl2ZWx5IHN0YWJsZSwgYnV0IG5vdCBoYXJkIHRvCj4+IGtlZXAg
c29tZSBjb21wb25lbnRzIHVwIHRvIGRhdGUsIGVzcGVjaWFsbHkgYWNjZXNzaWJpbGl0eSBjb21w
b25lbnRzCj4+IGxpa2UgT3JjYSwgYXMgd2VsbCBhcyBGaXJlZm94LiBJbiBwcmluY2lwbGUsIEkg
ZG9uJ3Qgd2FudCBhIGZ1bGwKPj4gZGVza3RvcCBlbnZpcm9ubWVudCwganVzdCBlbm91Z2ggdG8g
cnVuIEZpcmVmb3ggcGx1cyBPcmNhLCBhbmQKPj4gcG9zc2libHkgb3RoZXIgZGVza3RvcCBhcHBz
IGxhdGVyLiBJIGhhdmUgc3VjY2Vzc2Z1bGx5IHNldCB1cAo+PiByYXRwb2lzb24gYSBmZXcgeWVh
cnMgYWdvIHdpdGggdGhlIGhlbHAgb2YgdGhlIFN0cnljaG5pbmUgc2NyaXB0Cj4+IGRldmVsb3Bl
ZCBieSBTdG9ybSwgc28gbWF5YmUgdGhlIGVhc2llc3QgcGF0aCBpcyB0byBnZXQgaXQgYWdhaW4u
Cj4+Cj4+IEknZCBsaWtlIG9waW5pb25zIG9uIHRoZSBkaXN0cm8gdG8gdXNlLiBBcmNoTGludXgg
aGFzIHRoZSBhZHZhbnRhZ2Ugb2YKPj4gcmVxdWlyaW5nIGZldyBkaXNrIHNwYWNlIGFuZCBhbHdh
eXMgaGF2aW5nIHRoZSBsYXRlc3Qgc29mdHdhcmUsIGJ1dAo+PiBJJ3ZlIHRyaWVkIGl0IHNvbWUg
eWVhcnMgYWdvLCBhbmQgaXQgYXBwZWFycyB0b28gcHJvbmUgdG8gYnJlYWsKPj4gdGhpbmdzLCBl
c3BlY2lhbGx5IHRoZSBhdWRpbyBzdHVmZiBkdWUgdG8gY29uc3RhbnQgdXBncmFkaW5nLiBJcyBp
dAo+PiBzdGlsbCB0cnVlIHRvZGF5PyBBbm90aGVyIG9wdGlvbiBpcyBEZWJpYW4gdW5zdGFibGUs
IHdoaWNoIEkndmUgbmV2ZXIKPj4gdHJpZWQuIERvZXMgaXQgdXNlIHRvIGJyZWFrIHRvbz8gSSd2
ZSBhbHNvIHJlYWQgYWJvdXQgVm9pZExpbnV4LiBIYXMKPj4gYW55b25lIHRyaWVkIGl0IHlldD8g
SSBrbm93IGFib3V0IFNsaW50IGFzIHdlbGwsIGJ1dCB0aGUgbWFudWFsIHN0YXRlcwo+PiB0aGF0
IGl0IHJlcXVpcmVzIDUwIGdiIGRpc2sgc3BhY2UgYXQgbGVhc3QsIGFuZCBJJ20gY3VycmVudGx5
IG91dCBvZgo+PiBkaXNrIHNwYWNlLCBhcm91bmQgMTUgZ2IgYXQgbW9zdC4KPj4KPj4gVGhhbmtz
IGZvciBjb21tZW50cywKPj4gQ2xldmVyc29uCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiAtLQo+IElmIHRoaXMgd2VyZSBhbiBhY3R1YWwg
dGFnbGluZSwgaXQgX21pZ2h0XyBiZSBmdW5ueS4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

