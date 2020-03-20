Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA5318CD84
	for <lists+blinux-list@lfdr.de>; Fri, 20 Mar 2020 13:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584706263;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=smWv4p9dxn68Bgxk6IlN7X33PDnEaFBzZ7eTJSO1R54=;
	b=d6j9M6+HhMnaeeb6cvq3PfVDMJIF9n5/FUrqU0knnW+ZqCfTyi/7Xscwxomt3WLIzQNlfO
	4vzFoZs0U5i144LyonfopGiV38vSoTJZuIXGESvKOvk1F3SiKptCpe4O0/VdjNL5Yr+IMQ
	TR351Wd1Jnk3dG38YOjI9ntOeGb4+20=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-244-2FEbrlPmO6ujS5n4tpA1XA-1; Fri, 20 Mar 2020 08:11:00 -0400
X-MC-Unique: 2FEbrlPmO6ujS5n4tpA1XA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D5EE7800D4E;
	Fri, 20 Mar 2020 12:10:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 27D1A5C1A5;
	Fri, 20 Mar 2020 12:10:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2EA7D8B2D7;
	Fri, 20 Mar 2020 12:10:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02KCAf0j017025 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 20 Mar 2020 08:10:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3458F1CC5EC; Fri, 20 Mar 2020 12:10:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3009D13D717
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 12:10:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E19D9800298
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 12:10:38 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-454-V82Lx-RFO0GUwOX4v1Lzwg-1; Fri, 20 Mar 2020 08:10:36 -0400
X-MC-Unique: V82Lx-RFO0GUwOX4v1Lzwg-1
Received: by mail-oi1-f173.google.com with SMTP id j5so6240919oij.1
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 05:10:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=zCiTxSmsfR3USV38Fp+UoIy+M3bu9S/0+q3X4OnQu/M=;
	b=HFjVDEPFQVLz41WY2lbYMVOC91dGgtmPY/QDAjgAtqyww2PUBBSFIEctAU+ITNdtHB
	8ntNigq6oX+/YEmav3DJXmx9+aXBJBqYmVrlVex5YGxqUIprJ5z7COar1xlFAFsNxYE2
	hGsBRqqQqAj/88QYRq2cwynSiBUzPxbROTOKgxS5ePfmfxFDvHowhTZXMGh6/nedvbbx
	NfJ48OC5/6tkNficRlsTmHWAhwBRa/4HMj7tenlRDhObEAE+Ucl6HRvroMoD5jhkYjMC
	LR6QohiN+OSfNzgt5+LFGgaVS78nJkq3AqoVGu5tsm0utQBVueRZ5H3Na6iEAhttr95c
	iBQQ==
X-Gm-Message-State: ANhLgQ3mhwC/D9s1ZE+by8MeeHEtDLmIjxHABCjYJ5RjIPcVs2tYRGuo
	pdeybbQwt668VfwV8Fo38rOOHmpX
X-Google-Smtp-Source: ADFU+vuUh+WG14urVufwsONXMfKZolobesU8VVHdV9wubM1HhQTClMckS6MOSZ5iihiPf1FHDA+ODQ==
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr6250185oih.65.1584706235331; 
	Fri, 20 Mar 2020 05:10:35 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:3cda:66ab:8158:e6a2?
	([2601:3c2:8200:9360:3cda:66ab:8158:e6a2])
	by smtp.gmail.com with ESMTPSA id
	w14sm1842188otk.31.2020.03.20.05.10.34 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Mar 2020 05:10:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: What distribution will work with the virtual machine on a Mac?
Date: Fri, 20 Mar 2020 07:10:33 -0500
References: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
	<8A15AD66-5504-4D26-A304-7B98EE4F3D09@gmail.com>
	<95c9eba9-d7c9-586d-6e17-5ec3f3c001ec@gmail.com>
	<822F2734-8569-45B7-BA28-654D34301B37@pipkrokodil.se>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <822F2734-8569-45B7-BA28-654D34301B37@pipkrokodil.se>
Message-Id: <C3948E7C-D9E1-43A4-AFE3-CC77F6726C53@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02KCAf0j017025
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiB0cnlpbmcgdG8gdXNlIEZ1c2lvbiwgSSBoYWQgYSBoYXJkIHRpbWUgc3dpdGNoaW5nIGJl
dHdlZW4gb3BlcmF0aW5nIHN5c3RlbXMgd2l0aCB0aGUga2V5Ym9hcmQuCgo+IE9uIE1hciAyMCwg
MjAyMCwgYXQgNTozNCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gSGkhCj4gQW55IGRpc3RybyB0aGF0IGFy
ZSBhY2Nlc3NpYmxlIGkgdGhpbmsuCj4gSSB1c2UgYW4gb2xkIHZpbnV4IDUuMSBzeXN0ZW0gYnV0
IGkgdGhpbmsgdWJ1bnR1IG9yIGZlZG9yYSBtaWdodCB3b3JrIGFzIHdlbGwuCj4gVm13YXJlIEZ1
c2lvbiBmb3IgbWFjIGlzIHByaXR0eSBzdHJhaWdodCBmb3J3YXJkLgo+IC9BCj4gCj4+IDE5IG1h
cnMgMjAyMCBrbC4gMjM6MTAgc2tyZXYgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4+IAo+PiBJIGNhbid0IHNwZWFrIHRvIGEgTWFj
LCBidXQgeW91IGNhbiBkZWZpbml0ZWx5IHVzZSBMaW51eCBpbiBhIHZpcnR1YWwgbWFjaGluZSB3
aXRoIHNwZWVjaC4gSSd2ZSB1c2VkIGl0IHdpdGggVk13YXJlLCB3aGljaCBoYXMgYSBwcm9kdWN0
IGZvciB0aGUgTWFjLCBhbmQgd2l0aCBRRU1VL0tWTS4gT3RoZXJzIGhhdmUgdXNlZCBpdCB3aXRo
IFZpcnR1YWwgQm94IGFzIHdlbGwuCj4+IAo+PiAKPj4gT24gMy8xOS8yMCAxOjU5IFBNLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGVsbG8sIG15IHN1Ympl
Y3QgbGluZSBwcmV0dHkgbXVjaCBleHBsYWlucyB0aGUgYmlnIHNpdHVhdGlvbi4gIFdoYXQgSeKA
mW0gd29uZGVyaW5nIGlzICB3aWxsIEZlZG9yYSB3b3JrIGJldHRlciB0aGFuIFVidW50dT8gIFRo
ZSBvdGhlciB0aGluZyB0aGF0IEkgYXBwYXJlbnRseSBhIGJhbmsgbXVzdCBjb25zaWRlciwgIHdp
bGwgYW55IG9mIHRoaXMgd29yayB3b3VsZCBzcGVlY2ggaW4gYSB2aXJ0dWFsIG1hY2hpbmUgZW52
aXJvbm1lbnQ/ICBBbnkgdGhvdWdodHMgZnJvbSBhbnlvbmU/Cj4+PiAKPj4+IFNpbmNlcmVseSBN
YXVyaWNlIE1pbmVzLgo+Pj4gCj4+PiAKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+PiAKPj4gLS0gCj4+IENocmlzdG9waGVyIChDSikKPj4gQ2hhbHRh
aW4gYXQgR21haWwKPj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

