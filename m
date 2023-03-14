Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB876B9F6F
	for <lists+blinux-list@lfdr.de>; Tue, 14 Mar 2023 20:15:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678821348;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3rGDJ9Dyhmt6VJkRlpZCLoqKtyiT0CUgby5XGK5nf/s=;
	b=cR5P7CoHZfsU0SvooLJ37MmP0R2Glnf5pKCW5M/PbKfOYJYrpOQoV7b1rg5GIlRE60qfRA
	XZN4bgar1/rCvQhxqfJ2fBtKEzxCD6K1TBPddzLkMjYnmGhmRjhgDQ6NXNnCdPc1HxNeoI
	2Jb1+TJxPQqGxoCzvj+dLb2a7qaxrzA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-590-8nODgTeZMBS_DF8m_Sz-dQ-1; Tue, 14 Mar 2023 15:15:45 -0400
X-MC-Unique: 8nODgTeZMBS_DF8m_Sz-dQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A687101AA5F;
	Tue, 14 Mar 2023 19:15:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 25C7640C6E68;
	Tue, 14 Mar 2023 19:15:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9159519465B1;
	Tue, 14 Mar 2023 19:15:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 14 Mar 2023 15:15:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: XFCE a11Y specific tweaks?
To: blinux-list@redhat.com
References: <mailman.2253.1678436282.1521160.blinux-list@redhat.com>
 <mailman.2232.1678451795.1521165.blinux-list@redhat.com>
 <mailman.2304.1678472653.1521165.blinux-list@redhat.com>
 <mailman.2424.1678473335.1521161.blinux-list@redhat.com>
 <mailman.2360.1678477201.1521160.blinux-list@redhat.com>
In-Reply-To: <mailman.2360.1678477201.1521160.blinux-list@redhat.com>
Message-ID: <mailman.937.1678821333.3486287.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB1c2UgeGZjZTQgYW5kIGhhdmUgcnVuIGludG8gdGhpcy4gWW91IG5lZWQgdG8gZG8gdGhlIGZv
bGxvd2luZwoKMS4gcnVuIG9ubHkgeW91ciBkZXNrdG9wIGFuZCBvcmNhLgoKMiBnbyBpbnRvIHNl
c3Npb24gYW5kIHN0YXJ0dXAuCgozLiBzYXZlIHRoZSBjdXJyZW50IHNlc3Npb24gYW5kIHNldCB0
aGF0IGFzIHRoZSBzZXNzaW9uIGRlZmF1bHQuCgoKT24gMy8xMC8yMyAxNDozOSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBUaGF0J3Mgd2hhdCBJJ20gdXNpaW5n
LCBhbGJlaXQgd2l0aCBhIGJpdCBvZiBoYWNrZXJ5IHRvIGdldCBTdXBlcl9MIHRvIAo+IG9wZW4g
dXAgdGhlIFdoaXNrZXIgbWVudSBvbiBteSBBcmNoIHN5c3RlbQo+Cj4KPiBXaGF0IEkgbWVudCBi
eSBzdG9wcGluZyBpdCBzYXZpbmcgc2Vzc2lvbnMgd2FzLCBJIHRvbGQgaXQgbm90IHRvIHNhdmUg
Cj4gbXkgc2Vzc2lvbix5ZXQgaXQgc3RpbGwgc2F2ZXMgYW5kIHJlc3RvcmVzIHRoaW5ncyBJIHRo
b3VnaHQgSScgY2xvc2VkIAo+IHdoZW4gSSBsb2cgYmFjayBpbi4gRG9lc24ndCBtYXR0ZXIgaWYg
SSBkbyBsb2dvdXQsIHNodXRkb3duLCBldGMuIEl0IAo+IHNlZW1zIHRvIHNhdmUgdGhlIHNlc3Np
b24gYW5kIGdvIGZyb20gdGhlcmUuCj4KPgo+IE9uIDMvMTAvMjMgMTg6MzUsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IElmIHlvdSBjYW4gZmluZCBpdCwgdGhl
cmUncyBhIHdoaXNrZXIgYm94IG1lbnUgaW4geGZjZSBhbmQgdXNlIG9mIHRoYXQKPj4gbWVudSBj
YW4gb3BlbiB1cCBsb3RzIG9mIGZ1bmN0aW9uYWxpdHkgZm9yIHNjcmVlbiByZWFkZXIgdXNlcnMu
Cj4+Cj4+Cj4+Cj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUg
Zm91ciBib3hlcyB0byBiZSB1c2VkIGluCj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPj4gwqAgc29h
cCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPj4g
LUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4+Cj4+IC4KPj4KPj4gT24gRnJpLCAxMCBN
YXIgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4KPj4+
IExhc3QgSSBrbmV3LCBYRkNFJ3MgcGFuZWwgYW5kIG5vdGlmaWNhdGlvbiBkYWVtb24gZGlkbid0
IGxpa2UgT3JjYSAKPj4+IHZlcnkgbXVjaC4KPj4+IEkgc2VlbSB0byByZWNhbGwgdGhlIGFsdCt0
YWIgYXBwbGljYXRpb24gc3dpdGNoZXIgYWxzbyBub3Qgc3BlYWtpbmcuIAo+Pj4gTWFueQo+Pj4g
cGVvcGxlIGhhdmUgaGFkIGdvb2QgbHVjayB3aXRoIHRoZSBkZXNrdG9wIGFuZCBmaWxlIG1hbmFn
ZXIgdGhvdWdoLCAKPj4+IGFuZCBtb3N0Cj4+PiBvZiB0aGUgc3RhbmRhcmQgYXBwbGljYXRpb25z
IHdvcmsgb3V0IG9mIHRoZSBib3gsIHNpbmNlIHRoZXkncmUgCj4+PiBHVEstYmFzZWQuIEkKPj4+
IG5ldmVyIGZvdW5kIGEgd29yay1hcm91bmQgZm9yIHRoZSBpc3N1ZXMsIHNvIEkgcHJldHR5IG11
Y2ggc3RvcHBlZCAKPj4+IHdvcmtpbmcKPj4+IHdpdGggWEZDRSwgYnV0IGlmIHNvbWVvbmUgZGlk
IGZpbmQgYSB3YXkgYXJvdW5kIHRoYXQsIEknZCBiZSBoYXBweSAKPj4+IHRvIGtub3cgb2YKPj4+
IGl0Lgo+Pj4KPj4+IH5LeWxlCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

