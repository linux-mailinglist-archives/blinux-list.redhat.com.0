Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2943771301D
	for <lists+blinux-list@lfdr.de>; Sat, 27 May 2023 00:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685141018;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qg0Pec4Se5tKZa5Vlcn1WbQWBCxfesUt6I/rMZpqUO4=;
	b=VsppgULCkX3y1uraEFEIRIR2NqytzcfYhY4e4soQFE9iLIoDMHls7MN4V16ZimbeLzy3M1
	SFi/wbqNOeSEZIS4uLwQjPmIcJKhkkyQBmU8OOkciOQ7AvPZfiGG+Vmoh1SCsDyyfWAcLS
	rDXZWb97ZMTYDNxf9gtQwtOOuYdTuIw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-518-UdYl0imCOWqL-xLCTADUvA-1; Fri, 26 May 2023 18:43:34 -0400
X-MC-Unique: UdYl0imCOWqL-xLCTADUvA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 063963C01C19;
	Fri, 26 May 2023 22:43:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8C9A340102D;
	Fri, 26 May 2023 22:43:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A8A9419465B7;
	Fri, 26 May 2023 22:43:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 26 May 2023 22:22:14 +0000
To: blinux-list@redhat.com
Subject: Re: Keeping Debian relevant question
In-Reply-To: <mailman.1664.1685092941.233161.blinux-list@redhat.com>
References: <mailman.1664.1685092941.233161.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.1988.1685141007.233166.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW4gdGVybXMgb2YgYnVpbGRpbmcgb3JjYSwgdGhlIHN0YW5kYXJkIHByb2NlZHVyZSBzaG91bGQg
d29yayBpLmUuIAplbmFibGUgc291cmNlIHJlcG9zaXRvcmllcywgaW5zdGFsbCBkZXBlbmRlbmNp
ZXMgdmlhOgoKc3VkbyBhcHQtZ2V0IGJ1aWxkLWRlcCBnbm9tZS1vcmNhCgoKY2xvbmUgdGhlIG9y
Y2EgcmVwbywgc3dpdGNoIHRvIHRoZSBHbm9tZSA0NCBicmFuY2ggYW5kIGNvbXBpbGUgJiBpbnN0
YWxsIAp1c2luZzoKClBZVEhPTj0vdXNyL2Jpbi9weXRob24zIC4vYXV0b2dlbi5zaAoKbWFrZQoK
c3VkbyBtYWtlIGluc3RhbGwKCgpJdCdzIG5vdCBhIG9uZS1saW5lciwgYnV0IHF1aXRlIHN0cmFp
Z2h0LWZvcndhcmQuCgoKRm9yIHVwZGF0aW5nLCB5b3UganVzdCBwdWxsIGFuZCByZXBlYXQgdGhl
IGNvbW1hbmRzIGZyb20gcnVubmluZyBhdXRvZ2VuLgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xh
dgoKCkTFiGEgMjYuIDUuIDIwMjMgbyAxMToyMiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIG5hcMOtc2FsKGEpOgo+IFNvLCBoYWQgdG8gc2V0IHVwIGEgRGViaWFuIGxhcHRvcCBm
b3Igc29tZW9uZSwgYW5kIHRoZSBmaXJzdCBxdWVzdGlvbiBJCj4gZ290IGFza2VkIGlzIC4uLi55
ZXMgYnV0IGhvdyBkbyBJIHVwZGF0ZSBhbGwgdGhlIGFjY2Vzc2libGUgc3R1Zj8KPgo+IFNvIGhl
cmUncyBteSBxdWVzdGlvbi4gV2hhdCBpcyB0aGUgbW9zdCBhY2NlcHRlZCB3YXkgdG8gZG8gdGhp
cywgaXMgaXQKPiBieSBiYWNrcG9ydHMsIG9yIHN3aXRjaGluZyB0byB0ZXN0aW5nPyBJdCdzIGEg
RGViaWFuIDExIHN5c3RlbSwgYW5kIGJ5Cj4gZGVmYXVsdCBpdCBzaGlwcyB3aXRoIEdub21lIDMu
MzggYW5kIHRodXMgT3JjYSAzLjM4Lgo+Cj4gU28sIGlzIHRoZXJlIGEgcHJlZmVycmVkIHdheSB0
byBrZWVwIHRoaW5ncyB1cCB0byBkYXRlIHRoZW4/IEkndmUgc2Vlbgo+IHNvbWUgcGVvcGxlIG9u
bGluZSBzYXkgdXNlIGJhY2twb3J0cy4gSSd2ZSBzZWVuIG90aGVycyBzYXkgb2gsIGdvIHdpdGgK
PiB0ZXN0aW5nLCBpdCBoYXNuJ3QgZXZlciBsZXQgbWUgZG93biwgYW5kIHN0aWxsIG90aGVycyBz
YXkgb2gsIHdhaXQgZm9yCj4gQm9va3dvcm0sIGFuZCB5ZXQgbW9yZSBzYXkgb2ggc3dpdGNoIHlv
dXIgc291cmNlcy5saXN0IHRvIEJvb2t3b3JtCj4KPgo+IFNvIHdoaWNoIGlzIGl0PyBJJ20gbm90
IHN1cmUgd2hhdCB0aGUgY29uc2Vuc3VzIGlzLgo+Cj4KPiBBbmQgcmVsYXRlZCBxdWVzdGlvbiwg
SXMgdGhlcmUgYW4gZWFzeSB3YXkgdG8gYnVpbCBPcmNhIGZyb20gZ2l0PyBJIGtub3cKPiBhYm91
dCBVbmEsIHNvIGlzIGl0IG9uIHRoZXJlLCBpZiBzbyBpdCdkIG1ha2UgbXkgbGlmZSBhIGxvdCBl
YXNpZXIuIFVuYQo+IGlzLCBmb3IgdGhvc2Ugd2hvIGFyZW4ndCBhd2FyZSwgbGlrZSBwYXJ1IG9y
IHlheSBmb3IgRGViaWFuLiBJIGRpZG4ndAo+IGtub3cgRGViaWFuIGhhZCBhbiBBVVIgdW50aWwg
SSBzdHVtYmxlZCBhY3Jvc3MgVW5hLgo+Cj4KPiBKYWNlCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cg==

