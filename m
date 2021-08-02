Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 008273DD748
	for <lists+blinux-list@lfdr.de>; Mon,  2 Aug 2021 15:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627911534;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+jYBT1JG1v7UFmwUf3XSl1BmBprt/oKPjEl6FQlQGm4=;
	b=eurov1ELp0dOLYAqBIbrSgaFdszHrgLiLp2MW5uAlhKss5g+7B/Uq/+/+WtgmOUv5fIUja
	pG3rStv4xCUwV+JG9uWFjVNekf71ntqvIPFW2uS8Qm7s0A/yx4EzVlxPEQYjbI79+VzdEx
	ylaaR+oZzbnw80vQ9xz3L8KgfBiCKLs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-567-uDFvqhenPQi-AedX-FWBfQ-1; Mon, 02 Aug 2021 09:38:52 -0400
X-MC-Unique: uDFvqhenPQi-AedX-FWBfQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92C50640A8;
	Mon,  2 Aug 2021 13:38:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AAE3B60C05;
	Mon,  2 Aug 2021 13:38:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A94324BB7B;
	Mon,  2 Aug 2021 13:38:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 172DaqND029816 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Aug 2021 09:36:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8FA316E1C6; Mon,  2 Aug 2021 13:36:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89E446E1C4
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 13:36:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78D0C866DFB
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 13:36:49 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-484-FFnHaUxMPtyxbktR0XE_hw-1; Mon, 02 Aug 2021 09:36:47 -0400
X-MC-Unique: FFnHaUxMPtyxbktR0XE_hw-1
Received: by mail-wr1-f45.google.com with SMTP id c16so21497809wrp.13
	for <blinux-list@redhat.com>; Mon, 02 Aug 2021 06:36:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=PvXnSk3bu3BcNvxe+k5hkzTd7qjZ5N2JckrARj+rAAQ=;
	b=cfAzbrZgJyeLCC9DAmAunG/3VGQ2m2bswy+llQ6Hvh58rj3QqfZg7IwN5WuwNMG4pp
	vKSN/9Fa6pYkAHbYfcfQrVGirfduKjj2dunCxaZdx56aUA0OUAC4RFYhWk7ta8I4RSCK
	NTvS6LwiAfixvIWdrkT8T8bkK54s1neez/bU2Zyt4VhRMJJcSXDZtpuQjcxhNnGF+JAt
	CRz+1aRfp2FehyEjPSxjRhUNBjErSJNk+v4uDgmZEVHyAdvn1k4BoGc8eKvy700jNZf0
	OJIqoNEC+c5RfDBXFD1//SgXO9/ngR16jEcEFuGLk4PkCJec2TtVA2v66zRYk8o5PvL+
	hPZA==
X-Gm-Message-State: AOAM531coI6iMv1dVAlwz8pbyJishD8yjqSeqeDThafRMipoyUKuGVK6
	eay8YccEUzYR1MY15YLYUGrtp3ZhFijIRg==
X-Google-Smtp-Source: ABdhPJw9eDWTQGSFIuH8rNZJbMqC1lK9ktYUY2wJ6j32zV7gdNfOB7+kGfUDfBJqRWziByCmEb4gVA==
X-Received: by 2002:a5d:6b8f:: with SMTP id n15mr17441268wrx.103.1627911405439;
	Mon, 02 Aug 2021 06:36:45 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	c15sm11470532wrx.70.2021.08.02.06.36.44 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 02 Aug 2021 06:36:44 -0700 (PDT)
Subject: Re: Solus DE observations
To: Linux for blind general discussion <blinux-list@redhat.com>,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
Message-ID: <fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
Date: Mon, 2 Aug 2021 14:36:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

SSdtIGdvaW5nIGluIGNpcmNsZXMgdHJ5aW5nIHRvIGZpZ3VyZSBvdXQgd2h5IE1hdGUgbG9zZXMg
Zm9jdXMgd2l0aCAKQ2hyb21pdW0gb3Igd2hlbiBjbG9zaW5nIGFwcHMuIEkndmUgYmVlbiB0b2xk
IGl0J3MgL25vdC8ganVzdCBhIFNvbHVzIAppc3N1ZSBhbmQgaGFwcGVucyBvbiBvdGhlciBkZXNr
dG9wcyBhbmQgd2FzIHRvbGQgTWF0ZSdzIG5vdCBiZWluZyAKZGV2ZWxvcGVkIGFueSBtb3JlLgoK
SSd2ZSB5ZXQgdG8gdGVzdCBhIGZyZXNoIEJ1ZGdpZSBpbnN0YWxsLCBidXQgb24gbXkgTWF0ZSBw
bHVzIEJ1ZGdpZSAKc3lzdGVtLCBJJ3ZlIGEgZmV3IG1pbm9yIHF1aXJrcyBsaWtlIHRoZSB0YXNr
IHN3aXRjaGVyIGluIEJ1ZGdpZSBub3QgCmJlaW5nIGFjY2Vzc2libGUsIGFuZCB3b25kZXJpbmcg
aWYgdGhlcmUncyBhbnl0aGluZyBJIGNhbiBkbyB3aXRoIHRoYXQ/IApJJ2xsIHRha2UgQnVkZ2ll
IG5vdCBicmVha2luZyBzaW5jZSBDaHJvbWl1bSAob3IgQnJhdmUpIGlzIG15IGJyb3dzZXIgb2Yg
CmNob2ljZSBhbmQgSSBkb24ndCB3YW50IG15IGRlc2t0b3AgdG8ga2VlbCBvdmVyIGFuZCBkaWUg
ZXZlcnkgdGltZSBJIApjbG9zZSBCcmF2ZSBvciBhIEJyYXZlIHByaXZhdGUgd2luZG93CgpPbiA4
LzIvMjEgMTI6MzAgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gSSBoYXZlIGhlYXJkIG9mIEJ1ZGdpZS4KPiBTaW5jZSBhIHRvdGFsbHkgYmxpbmQgdXNlciB3
b3VsZCBub3QgY2FyZSBhYm91dCBhIGRlc2t0b3DigJlzIGFwcGVhcmFuY2UsIHdoYXQgbWlnaHQg
YmUgYWR2YW50YWdlcyBvZiBCdWRnaWUgaW4gbXkgY2FzZT8KPiBJIGhhZCBuZXZlciBjb25zaWRl
cmVkIFNvbHVzIGJlZm9yZS4KPiBBcyB0byBwcm9ibGVtcyB3aXRoIGRlc2t0b3BzIHdoZW4gaW5z
dGFsbGluZywgSSBhcHByZWNpYXRlIGtub3dpbmcgb2YgdGhlbS4KPgo+PiBPbiBBdWcgMSwgMjAy
MSwgYXQgMTA6NTAgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51
eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBNYXR0aGV3Cj4+Cj4+Cj4+Cj4+IFdoYXQg
aXMgc29sdXMgZXhhY3RseT8gIGlzIHRoaXMgYSBmbGF2ZXIgb2YgdWJ1bnR1IG1lZWluZyBiYXNl
ZCBvZmYgb2YgaXQgb3Igc29tZSB0aGluZyBlbHNlPyAgSG93IGlzIHRoZSBpbnN0YWxsZXIuICBU
aGFua3MuCj4+Cj4+Cj4+Cj4+IEhpLAo+Pgo+Pgo+Pgo+Pgo+PiBPbiA4LzEvMjAyMSA1OjM4IEFN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gU2luY2UgU29s
dXMgY2FtZSB1cCBhZ2FpbiwgSSdsbCBzaGFyZSBteSBvYnNlcnZhdGlvbnMgb2YgdGhlIHRocmVl
IERFcyBJJ3ZlIHVzZWQuIEknbSBsZWF2aW5nIFBsYXNtYSBvdXQgc2luY2UgaXQgZG9lc24ndCB3
b3JrIHRvbyB3ZWxsIGZvciBtZSwgYnV0IHlNTVYgb24gdGhhdAo+Pj4KPj4+Cj4+PiBCdWRnaWU6
Cj4+PiBJdCdzLCBib2lsaW5nIGl0IGRvd24uIEdub21lIHdpdGggYSBmYW5jeSBjb2F0IG9mIHBh
aW50IGFuZCBpcyB0aGUgU29sdXMgZmxhZ3NoaXAgb25lLiBJdCB3b3JrcyB3ZWxsIGVub3VnaCBn
aXZlbiBpdCdzIEdub21lIDQwIGJhc2VkIGFuZCBpcyB2ZXJ5IG11Y2ggdXNlYWJsZS4gTm93IGlm
IEkgY291bGQgYXNzaWduIGtleWJvYXJkIHNob3J0Y3V0cywgdGhhdCdkIGJlIGhhbmR5LiBNYXli
ZSBJIGNhbiBhbmQgaGF2ZW4ndCBmb3VuZCBpdCB5ZXQsIEkgZHVubm8uIE9uZSBub3RlIEkgZG8g
aGF2ZSBpcyB0aGF0IExpZ2h0RE0gaXMgdGhlIGxvZ2luIG1hbmFnZXIgYW5kIGlzIGluc2FuZWx5
IC9sb3VkLyBvbiBzdGFydHVwIG9uY2UgeW91IGVuYWJsZSBPcmNhIHdpdGggdGhlIHVzdWFsIHNo
b3J0Y3V0LiBTbyBqdXN0IGhhdmUgYSBsb25nLCBsb25nIGtleWJvYXJkIGNhYmxlLCBhbmQgQnVk
Z2llL0dub21lIGhhdmUgYSBuaWNlIHN0YXJ0dXAgc291bmQgd2hlbiB5b3UgbG9nIGluLCB3aGlj
aCBpcyBhbHdheXMgYSBuaWNlIHRvdWNoLiBUaGUgU29sdXMgdGVhbSBoYXZlIHB1dCBhIGxvdCBv
ZiBjYXJlIGludG8gdGhlIERFIGZyb20gd2hhdCBJJ3ZlIGZvdW5kLgo+Pj4KPj4+IEdub21lOgo+
Pj4KPj4+IEl0J3MgR25vbWUuIEl0J3MgR25vbWUgNDAuIE5lZWQgSSBzYXkgbW9yZT8gT25lIG5v
dGUgaXMgSSBjb3VsZG4ndCBnZXQgc3BlZWNoIGF0IGEgbG9naW4gbWFuYWdlciBvbiBteSBzeXN0
ZW0uIEl0IGRvZXMgaGF2ZSBhIG5pY2Ugc3RhcnR1cCBzb3VuZCB0byBhIGxhIEJ1ZGdpZS4KPj4+
Cj4+Pgo+Pj4gTWF0ZToKPj4+Cj4+PiBPaCB0aGlzIGlzIGdvaW5nIHRvIGJlIGRpc2FwcG9pbnRp
bmcuIFRoZXJlJ3MgYSBmZXcgaXNzdWVzIHdpdGggTWF0ZSBhcyBmYXIgYXMgU29sdXMgZ29lcy4K
Pj4+Cj4+Pgo+Pj4gMS4gVGhlIE9yY2Egc2hvcnRjdXQgaXNuJ3Qgc2V0LiBXaGljaCBpc24ndCBh
IGJpZyBkZWFsIHNpbmNlIGFsdCtmMiBhbmQgb3JjYSBzb3J0cyB0aGF0IHRoZW4gd2hlbiB5b3Ug
Z2V0IHRoZSBzeXN0ZW0gaW5zdGFsbGVkIGl0J3MgdHdvIHNlY29uZHMgd29yayB0byBzZXQgdGhl
IHNob3J0Y3V0IGFuZCBzZXQgT3JjYSB0byBhdXRvc3RhcnQuCj4+Pgo+Pj4KPj4+IDIuIFRIZSBt
dWNoLCBtdWNoLCBNVUNIIGJpZ2dlciBpc3N1ZSBpcyB0aGUgZGVza3RvcCBsb3NlcyBmb2N1cyBh
bmQgcmVxdWlyZXMgYSBHVEsgZGlhbG9nIHRvIGJlIGxvYWRlZC4gUXVpdCBDaHJvbWl1bT8gWWVh
aCBPcmNhK0gsIEYyLCBhbmQgdGhlbiBrZWVwIGdvaW5nLiBOb3cuIElmIHRoZXJlJ3MgYSBjb21w
eXogc2V0dGluZyBJJ3ZlIG92ZXJsb29rZWQgdG8gZml4IHRoaXMuLi50aGVuIHN1cmUsIEknbGwg
Z2l2ZSBpdCBhbm90aGVyIHNob3QuIERvbid0IGdldCBtZSB3cm9uZy4gTWF0ZSBpcyBmYW50YXN0
aWMgd2hlbiBpdCB3b3Jrcy4gSXQncyBqdXN0Li4uLndoZW4gaXQgYnJlYWtzIG9uIFNvbHVzIGFu
ZCBuZWVkcyB3b3JrYXJvdW5kcywgaXQncyBraW5kIG9mIGEgYnVnYmVhciBmb3IgbWUsIGFzIHdl
bGwgYXMgdGhlIGJvdHRvbSBwYW5lbCBiZWluZyB1bmxhYmVsZWQsIGJ1dCB5b3UgY2FuIGdldCBh
cm91bmQgbW9zdCBvZiB0aGF0IEFzIHdpdGggQnVkZ2llIGl0IHVzZXMgTGlnaHRETSBzbyB5b3Ug
Z2V0IE9yY2Egd29ya2luZyBvbiB0aGUgbG9naW4gc2NyZWVuLCBhZ2Fpbiwgc3R1cGlkbHkgbG91
ZC4gSWYgdGhlIGZvY3VzIGxvc3MgaXNzdWUgY2FuIGJlIGZpeGVkLCB0aGVuIEknbSBsaWFibGUg
dG8gc3dpdGNoIGJhY2sgdG8gTWF0ZSBmdWxsIHRpbWUgaW5zdGVhZCBvZiBCdWRnaWUuCj4+Pgo+
Pj4gQW5kLCB0aGVyZSdzIG5vIHN0YXJ0dXAgc291bmQgZWl0aGVyIHdoaWNoLCByZWFsbHksIGRp
c2FwcG9pbnRpbmcgZ2l2ZW4gdGhlIG90aGVyIHR3byBoYXZlIG9uZSBhbmQgSSBkb24ndCBrbm93
IGJvdXQgUGxhc21hLCBidXQgaXQgZmVlbHMgdG8gbWUgbGlrZSB0aGUgTWF0ZSBvbmUgaXNuJ3Qg
ZnVsbHkgZmluaXNoZWQgdXAgdnMgdGhlIG90aGVyIERFLgo+Pj4KPj4+Cj4+PiBBbmQgcmVsYXRl
ZCBub3RlLCBJJ20gaHVudGluZyBkb3duIGFuIG5tdHVpIHdoaWNoIGRvZXNuJ3Qgc2VlbSB0byBi
ZSBzaGlwcGVkIHdpdGggU29sdXMuIEkgbWF5IGp1c3QgcmVxdWVzdCBpdCBvciBhc2sgb24gdGhl
aXIgZm9ydW1zIGlmIG9uZSdzIGluIGFuZCBJJ20gdXNpbmcgdGhlIHdyb25nIG5hbWUuCj4+Pgo+
Pj4KPj4+IFJlbGF0ZWQgbm90ZSAjMjoKPj4+Cj4+PiBTb21laG93IGl0J3MgbW9yZSBzdGFibGUg
Zm9yIG1lIHRoYW4gVWJ1bnR1LCB3aGljaCBJIGRpZG4ndCB0aGluayBwb3NzaWJsZS4KPj4+Cj4+
Pgo+Pj4gRm9yIGluc3RhbGxlZCB0aGluZ3M/Cj4+Pgo+Pj4gTWF0ZSBkaWRuJ3QgY29tZSB3aXRo
IGEgbWFpbCBjbGllbnQgYW5kIGNhbWUgd2l0aCBGaXJlZm94IHdoaWNoIEkndmUgcmVwbGFjZWQg
d2l0aCBCcmF2ZSwgYW5kIGluc3RhbGxlZCBUaHVuZGVyYmlyZC4gRWFjaCBkaXN0cm8gc2hpcHMg
d2l0aCBPcmNhIDQwLjAsIGJ1dCBJJ3ZlIG5vdCB0cmllZCBidWlsZGluZyBPcmNhIGZyb20gZ2l0
IHlldCwgSSdtIHdhcnkgb2YgaW5zdGFsbGluZyB0aGUgYnVpbGQgZGVwcyBvbiBhbiBhbHJlYWR5
IHdvcmtpbmcgc3lzdGVtCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

