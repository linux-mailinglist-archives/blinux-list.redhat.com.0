Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEAB464B28
	for <lists+blinux-list@lfdr.de>; Wed,  1 Dec 2021 11:04:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638353053;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EnvkG/CZ7oJV3vvrqvwCsLLdzUXazbNVzoz3GYLBl+U=;
	b=UAx3nuru8codN0PwC/uftmqLTP4xjOKRNO/hHYxv3XpMjackxpI6syJZg5gaMZIOv+Y8Y3
	kBCTjt7UT7esM8zbuLm6SB78VKyeqLPStxnIObgTaE6CcxsZ89BBW5nYtUdaj3tm9K6H49
	Mq0lC7BoLOlapEWg2CMPRg9EfMtosSs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-505-T44GHaD7M4GU96ZdBmx-LQ-1; Wed, 01 Dec 2021 05:03:43 -0500
X-MC-Unique: T44GHaD7M4GU96ZdBmx-LQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE719190D342;
	Wed,  1 Dec 2021 10:03:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EE6722DF4;
	Wed,  1 Dec 2021 10:03:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2AFB01802E28;
	Wed,  1 Dec 2021 10:03:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B1A0Dpa029202 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Dec 2021 05:00:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 10BAD4047279; Wed,  1 Dec 2021 10:00:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BDDE4047272
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 10:00:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E788485A5B5
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 10:00:12 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-527-v1IgPAlWNF-I22GBmbpJzg-1; Wed, 01 Dec 2021 04:54:49 -0500
X-MC-Unique: v1IgPAlWNF-I22GBmbpJzg-1
Received: by mail-ed1-f44.google.com with SMTP id t5so99562309edd.0
	for <blinux-list@redhat.com>; Wed, 01 Dec 2021 01:54:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=r+Rz3Ao33NgDp9HZMqrWSByuryEvCR6Crq/6kCFfP/k=;
	b=T+rwDrThht50goJsiz5TA4aqEjaUxalrqHYbKjy21ywlppRFHBDXwtFQ64TqTJe/DK
	+LtWEBU3k3uTUw0/oExK8uXshnqWtZGpjpEM0s3R4yXRIPxcvv+W4fggsshp1XyltWUZ
	S4CqcjtTGOrIRMm4WdJ8xNrlKv6YFwL9BnkOmoN5MJ+gcTP6JzdEMmw0ErtMMUJJ51zb
	mQbo1GIVEpOqaambbi2gVqvZpi0xIllzf4hS4oFM0wHMBxvi4skL77dAwYbgVf9VPsot
	VHRa4gfWjgWMQAITLBPC3x2/c/WD2rfVLlZH2/x6oJ23MOuEfvb6xwu3lOciAcLfOjup
	yBig==
X-Gm-Message-State: AOAM5320CTkl09ZRGtJuK47oKRyYmSKQqXRbM2IlZMkk6O3eW3DxZ1Hp
	WfaBPU450J+KtRJftwDboEPKULGbid4PKg==
X-Google-Smtp-Source: ABdhPJxTvFtIZ057rn+Vp3OYPV9QodI6jmpOaMxq5RdpyThViwH51g6un7uO5CGMTBHm+LSbwNDJ1w==
X-Received: by 2002:a17:907:216e:: with SMTP id
	rl14mr5731802ejb.368.1638352487679; 
	Wed, 01 Dec 2021 01:54:47 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id
	j17sm13516489edj.0.2021.12.01.01.54.46 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 01 Dec 2021 01:54:47 -0800 (PST)
Message-ID: <fde2378c-88a7-b921-6835-7940f1a495d9@gmail.com>
Date: Wed, 1 Dec 2021 11:54:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: My qemu error
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
	<a4dfb37b-cf9e-ecad-bf05-cf6e0a0d3774@slint.fr>
	<478b6e46-5ca1-266a-695b-6f8119e207fa@slint.fr>
	<cc6c7abc-5b3e-5d19-2b20-e50f9409b703@gmail.com>
	<d4606e82-681f-875a-1f78-ff501d38bfcb@slint.fr>
In-Reply-To: <d4606e82-681f-875a-1f78-ff501d38bfcb@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRGlkaWVyLAoKClRoZXJlIHdlcmUgc29tZSBwYWNrYWdlcyBtaXNzaW5nLCB3aGljaCBJIGhh
dmUgbm93IGluc3RhbGxlZC4gSSAKaW5zdGFsbGVkIHFlbXUta3ZtLCB2aXJ0LW1hbmFnZXIgYW5k
IHZpcnQtdmlld2VyLCB3aGljaCBkaWRuJ3QgaW5zdGFsbCAKYWxvbmcgd2l0aCB0aGUgbWFpbiBx
ZW11IHBhY2thZ2UuCgoKSSBhbSBzdGlsbCBoYXZpbmcgaXNzdWVzIHdpdGggdGhlIHNvdW5kIHRo
aW5nIGhvd2V2ZXIuIEkgYW0gaGVzaXRhbnQgdG8gCnRyeSBhbmQgZml4IHRoZSBzY3JpcHQgbXlz
ZWxmLgoKCldhcm0gcmVnYXJkcywKCkJyYW5kdCBTdGVlbmthbXAKClNlbnQgZnJvbSB0aGUgRmVk
b3JhIG1hY2hpbmUsIHVzaW5nIFRodW5kZXJiaXJkCgpPbiAyMDIxLzExLzMwIDIzOjEyLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhvIEJyYW5kdCwKPgo+IFRo
aXMgZG9lcyB0ZWxsIGlmIHRoZSBzdXBwb3J0IGZvciBLVk0gaXMgcHJvcGVybHkgY29uZmlndXJl
ZCBpbiB0aGlzIAo+IGtlcm5lbC4KPgo+IHRvIGNoZWNrLCB5b3UgY2FuIGRvIHRoaXM6Cj4KPiBj
cCAvcHJvYy9jb25maWcuZ3ogL3RtcAo+IGNkIC90bXAKPiBndW56aXAgY29uZmlnLmd6Cj4geW91
IHdpbGwgZ2V0IGEgZmlsZSBuYW1lZCBjb25maWcgd2l0aCBjb25maWd1cmF0aW9uIHNldHRpbmdz
IG9mIHRoZSAKPiBrZXJuZWwKPgo+IFlvdSBjYW4gZG8gdGhlIHNhbWUgd2l0aCBTbGludCBhbmQg
Y29tcGFyZS4KPgo+IEFuZC9vciB1c2UgYSBGZWRvcmEgc3VwcG9ydCBjaGFubmVsLgo+Cj4gQ2hl
ZXJzLAo+Cj4gRGlkaWVyCj4KPgo+IExlIDMwLzExLzIwMjEgw6AgMjE6NDMsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gQXMgSSBzdGF0ZWQsIEknbSBy
dW5uaW5nIEZlZG9yYSBNYXRlIENvbXBpeiAzNSBhdCB0aGUgbW9tZW50LCBhbmQKPj4KPj4gJHVu
YW1lIC1yCj4+Cj4+IGdpdmVzIG1lIHRoZSBmb2xsb3dpbmcuCj4+Cj4+IDUuMTUuNS0yMDAuZmMz
NS54ODZfNjQKPj4KPj4KPj4gV2FybSByZWdhcmRzLAo+Pgo+PiBCcmFuZHQgU3RlZW5rYW1wCj4+
Cj4+IFNlbnQgZnJvbSB0aGUgRmVkb3JhIG1hY2hpbmUsIHVzaW5nIFRodW5kZXJiaXJkCj4+Cj4+
IE9uIDIwMjEvMTEvMzAgMjA6MDMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+PiBQUyBpbnN0ZWFkIG9mOgo+Pj4gL2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xNC4x
Mwo+Pj4gcGxlYXNlIHJlYWQ6Cj4+PiAvYm9vdC9jb25maWctZ2VuZXJpYy01LjEzLjEzCj4+Pgo+
Pj4gT1QgQm90aCB0aGUgNS4xMyBhbmQgNS4xNCBoYXZlIGJlZW4gZGVjbGFyZWQgRW5kIG9mIExp
ZmUsIEkgd2lsbCAKPj4+IHByb3ZpZGUgYQo+Pj4gNS4xNS56IHdoZW4gSSB3aWxsIHRoaW5rIHRo
aXMgYnJhbmNoIGlzIHN0YWJsZSBlbm91Z2guCj4+Pgo+Pj4gRGlkaWVyCj4+Pgo+Pj4gTGUgMzAv
MTEvMjAyMSDDoCAxODo0OSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOp
Y3JpdMKgOgo+Pj4+IEhpIEJyYW5kdCwKPj4+PiBhbnN3ZXJzIGlubGluZQo+Pj4+Cj4+Pj4gTGUg
MzAvMTEvMjAyMSDDoCAxMzo1NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBh
IMOpY3JpdMKgOgo+Pj4+PiBxZW11LXN5c3RlbS14ODZfNjQ6IHdhcm5pbmc6ICctc291bmRodyBo
ZGEnIGlzIGRlcHJlY2F0ZWQsIHBsZWFzZSAKPj4+Pj4gdXNlICctZGV2aWNlIGludGVsLWhkYSAt
ZGV2aWNlIGhkYS1kdXBsZXgnIGluc3RlYWQKPj4+Pj4gYXVkaW86IERldmljZSBoZGE6IGF1ZGlv
ZGV2IGRlZmF1bHQgcGFyYW1ldGVyIGlzIGRlcHJlY2F0ZWQsIAo+Pj4+PiBwbGVhc2Ugc3BlY2lm
eSBhdWRpb2Rldj1wYQo+Pj4+PiBhdWRpbzogRGV2aWNlIGhkYTogYXVkaW9kZXYgZGVmYXVsdCBw
YXJhbWV0ZXIgaXMgZGVwcmVjYXRlZCwgCj4+Pj4+IHBsZWFzZSBzcGVjaWZ5IGF1ZGlvZGV2PXBh
Cj4+Pj4+Cj4+Pj4gSW4gdGhlIGNvbW1hbmQgcmVtb3ZlCj4+Pj4gLXNvdW5kaHcgaGRhCj4+Pj4g
d2hpY2ggaXMgcmVkdW5kYW50IHdpdGgKPj4+PiAtZGV2aWNlIGludGVsLWhkYSAtZGV2aWNlIGhk
YS1kdXBsZXgKPj4+PiBhbmQgcHJvYmFseSByZXBjYWNlCj4+Pj4gLS1hdWRpb2RldiBwYQo+Pj4+
IGJ5Ogo+Pj4+IC0tYXVkaW9kZXY9cGFob3dldmVyLCBtYXliZSB0aGlzIHdob2xlIHN0dWZmIGlz
IG5vdCAKPj4+PiBuZWNlc3Nhcnk6LWF1ZGlvZGV2IHBhLGlkPXBhLG91dC5taXhpbmctZW5naW5l
PW9mZixvdXQubGF0ZW5jeT0yMDAwMAo+Pj4+IEkgZG9uJ3QgaGF2ZSBpdC4KPj4+Pgo+Pj4+IMKg
PsKgIGtub3cgaXQgZG9lcyB3b3JrIHVuZGVyIFNsaW50LCBidXQgbm90IHVuZGVyIEZlZG9yYSwg
QXJjaCBvciAKPj4+PiBVYnVudHUuCj4+Pj4KPj4+PiBNYXliZSB0aGUga2VybmVsIHlvdSBhcmUg
cnVubmluZyBpbiBGZWRvcmEsIEFyY2ggb3IgVWJ1bnR1IGRvZXMgbm90IAo+Pj4+IGhhdmUgYQo+
Pj4+IHByb3BlciBjb25maWd1cmF0aW9uIGZvciBLVk0sIHJlYWQ6Cj4+Pj4gaHR0cHM6Ly93d3cu
bGludXgta3ZtLm9yZy9wYWdlL1R1bmluZ19LZXJuZWwKPj4+Pgo+Pj4+IEluIFNsaW50IHRoZSBr
ZXJuZWwgY29uZmlndXJhdGlvbiBpcyBmb3VuZCBpbiBvbmUgb2YgdGhlc2UgZmlsZXM6Cj4+Pj4g
L2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xNC4xNC54NjQKPj4+PiAvYm9vdC9jb25maWctZ2VuZXJp
Yy01LjE0LjEzCj4+Pj4gVGhlc2UgY29tbWFuZHM6Cj4+Pj4gY2F0IC9wcm9jL2NtZGxpbmUKPj4+
PiB1bmFtZSAtcgo+Pj4+IHRlbGwgeW91IHdoaWNoIGtlcm5lbCBpcyBydW5uaW5nLCBzbyB5b3Ug
a25vdyBob3cgaXQgaXMgY29uZmlndXJlZC4KPj4+Pgo+Pj4+IEFsc28sIHRoZXJlIGNvdWxkIGJl
IGFuIGlzc3VlIHdpdGggeW91ciBxZW11IHZlcnNpb24uCj4+Pj4KPj4+PiBJbiBTbGludCBhdCB0
aW1lIG9mIHdyaXRpbmc6Cj4+Pj4gZGFuY2Vbfl0kIHFlbXUtc3lzdGVtLXg4Nl82NCAtLXZlcnNp
b24KPj4+PiBRRU1VIGVtdWxhdG9yIHZlcnNpb24gNi4wLjAKPj4+PiBDb3B5cmlnaHQgKGMpIDIw
MDMtMjAyMSBGYWJyaWNlIEJlbGxhcmQgYW5kIHRoZSBRRU1VIFByb2plY3QgCj4+Pj4gZGV2ZWxv
cGVycwo+Pj4+Cj4+Pj4gQ2hlZXJzLAo+Pj4+IERpZGllcgo+Pj4+Cj4+Pj4KPj4+PiBfX19fX19f
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
L2xpc3RpbmZvL2JsaW51eC1saXN0

