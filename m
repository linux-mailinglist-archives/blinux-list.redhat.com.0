Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FF86BECE6
	for <lists+blinux-list@lfdr.de>; Fri, 17 Mar 2023 16:29:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679066964;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eseMPk4F7T9M+mvxC5NwVobG5lzrqm0+gZCgOJFnGyw=;
	b=WzlZ9IaTDYCFFYtqw2icsuEMtughBTi7fBWNolNP7mfuc57cLHA6WqMuUoL4lnOdPpbX3/
	TY+Nohm2Vxw3YlFpi8G3y0FgHYu1eCS5ErtMgPAlBFtIf+5VzBmaKTqoaKjLjJ47gaaLO2
	NfM4tpw61a/r0P9D9Jn1df0737W78uI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-z1DGTARLNVWKymBgITNvHw-1; Fri, 17 Mar 2023 11:29:22 -0400
X-MC-Unique: z1DGTARLNVWKymBgITNvHw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B432D801206;
	Fri, 17 Mar 2023 15:29:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D7B4E483EC3;
	Fri, 17 Mar 2023 15:29:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8B6E71946A6E;
	Fri, 17 Mar 2023 15:29:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 17 Mar 2023 12:58:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: XFCE a11Y specific tweaks?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2253.1678436282.1521160.blinux-list@redhat.com>
 <mailman.2232.1678451795.1521165.blinux-list@redhat.com>
 <mailman.2304.1678472653.1521165.blinux-list@redhat.com>
 <mailman.2424.1678473335.1521161.blinux-list@redhat.com>
 <mailman.2360.1678477201.1521160.blinux-list@redhat.com>
 <mailman.937.1678821333.3486287.blinux-list@redhat.com>
In-Reply-To: <mailman.937.1678821333.3486287.blinux-list@redhat.com>
Message-ID: <mailman.221.1679066952.402826.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhdCB3b3JrZWQsIGFsb25nIHdpdGggdGhlIEFyY2ggd2lraSB0byBoZWxwIG91dCBhbmQgc29y
dCB0aGlzLiBJJ20gCnF1aXRlIGxpa2luZyBYRkNFNCBzaW1wbHkgY2F1c2UgaXQgaGFzIHNhbmUg
ZGVmYXVsdHMKCgoKT24gMy8xNC8yMyAxOToxNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiBJIHVzZSB4ZmNlNCBhbmQgaGF2ZSBydW4gaW50byB0aGlzLiBZb3Ug
bmVlZCB0byBkbyB0aGUgZm9sbG93aW5nCj4KPiAxLiBydW4gb25seSB5b3VyIGRlc2t0b3AgYW5k
IG9yY2EuCj4KPiAyIGdvIGludG8gc2Vzc2lvbiBhbmQgc3RhcnR1cC4KPgo+IDMuIHNhdmUgdGhl
IGN1cnJlbnQgc2Vzc2lvbiBhbmQgc2V0IHRoYXQgYXMgdGhlIHNlc3Npb24gZGVmYXVsdC4KPgo+
Cj4gT24gMy8xMC8yMyAxNDozOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4gVGhhdCdzIHdoYXQgSSdtIHVzaWluZywgYWxiZWl0IHdpdGggYSBiaXQgb2YgaGFj
a2VyeSB0byBnZXQgU3VwZXJfTCAKPj4gdG8gb3BlbiB1cCB0aGUgV2hpc2tlciBtZW51IG9uIG15
IEFyY2ggc3lzdGVtCj4+Cj4+Cj4+IFdoYXQgSSBtZW50IGJ5IHN0b3BwaW5nIGl0IHNhdmluZyBz
ZXNzaW9ucyB3YXMsIEkgdG9sZCBpdCBub3QgdG8gc2F2ZSAKPj4gbXkgc2Vzc2lvbix5ZXQgaXQg
c3RpbGwgc2F2ZXMgYW5kIHJlc3RvcmVzIHRoaW5ncyBJIHRob3VnaHQgSScgY2xvc2VkIAo+PiB3
aGVuIEkgbG9nIGJhY2sgaW4uIERvZXNuJ3QgbWF0dGVyIGlmIEkgZG8gbG9nb3V0LCBzaHV0ZG93
biwgZXRjLiBJdCAKPj4gc2VlbXMgdG8gc2F2ZSB0aGUgc2Vzc2lvbiBhbmQgZ28gZnJvbSB0aGVy
ZS4KPj4KPj4KPj4gT24gMy8xMC8yMyAxODozNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4+IElmIHlvdSBjYW4gZmluZCBpdCwgdGhlcmUncyBhIHdoaXNrZXIg
Ym94IG1lbnUgaW4geGZjZSBhbmQgdXNlIG9mIHRoYXQKPj4+IG1lbnUgY2FuIG9wZW4gdXAgbG90
cyBvZiBmdW5jdGlvbmFsaXR5IGZvciBzY3JlZW4gcmVhZGVyIHVzZXJzLgo+Pj4KPj4+Cj4+Pgo+
Pj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVz
IHRvIGJlIHVzZWQgaW4KPj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPj4+IMKgIHNvYXAsIGJhbGxv
dCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4+PiAtRWQgSG93
ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPj4+Cj4+PiAuCj4+Pgo+Pj4gT24gRnJpLCAxMCBNYXIg
MjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Cj4+Pj4g
TGFzdCBJIGtuZXcsIFhGQ0UncyBwYW5lbCBhbmQgbm90aWZpY2F0aW9uIGRhZW1vbiBkaWRuJ3Qg
bGlrZSBPcmNhIAo+Pj4+IHZlcnkgbXVjaC4KPj4+PiBJIHNlZW0gdG8gcmVjYWxsIHRoZSBhbHQr
dGFiIGFwcGxpY2F0aW9uIHN3aXRjaGVyIGFsc28gbm90IAo+Pj4+IHNwZWFraW5nLiBNYW55Cj4+
Pj4gcGVvcGxlIGhhdmUgaGFkIGdvb2QgbHVjayB3aXRoIHRoZSBkZXNrdG9wIGFuZCBmaWxlIG1h
bmFnZXIgdGhvdWdoLCAKPj4+PiBhbmQgbW9zdAo+Pj4+IG9mIHRoZSBzdGFuZGFyZCBhcHBsaWNh
dGlvbnMgd29yayBvdXQgb2YgdGhlIGJveCwgc2luY2UgdGhleSdyZSAKPj4+PiBHVEstYmFzZWQu
IEkKPj4+PiBuZXZlciBmb3VuZCBhIHdvcmstYXJvdW5kIGZvciB0aGUgaXNzdWVzLCBzbyBJIHBy
ZXR0eSBtdWNoIHN0b3BwZWQgCj4+Pj4gd29ya2luZwo+Pj4+IHdpdGggWEZDRSwgYnV0IGlmIHNv
bWVvbmUgZGlkIGZpbmQgYSB3YXkgYXJvdW5kIHRoYXQsIEknZCBiZSBoYXBweSAKPj4+PiB0byBr
bm93IG9mCj4+Pj4gaXQuCj4+Pj4KPj4+PiB+S3lsZQo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+Pj4KPj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Cj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

