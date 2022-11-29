Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AD08563C8ED
	for <lists+blinux-list@lfdr.de>; Tue, 29 Nov 2022 21:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669752272;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=txC0snQuBQeNJpi8yEqhUxKbAeKaLjC7vGfM41Rio8U=;
	b=ioN+jh2670bqmAf63OZQx1U8XId+3fl7tYFt/Q/CX52OSi0vUnS6nA5GJ3pUj43o9FglDt
	/y/u24PpjFg94szIfV1XechFyYkPaq5xczzgs5hoOmeKh/deMcAzlp3FGX5ZpXolwSCK2i
	V09njnNrS2hjVrDXPTDjPdtLVs99hjc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-518-LxSmCmD0Os2wiZJr1J8ShQ-1; Tue, 29 Nov 2022 15:04:28 -0500
X-MC-Unique: LxSmCmD0Os2wiZJr1J8ShQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B691D3810792;
	Tue, 29 Nov 2022 20:04:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 027F5140EBF5;
	Tue, 29 Nov 2022 20:04:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A04CC19465A2;
	Tue, 29 Nov 2022 20:04:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 29 Nov 2022 15:01:12 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can a blind person run fedora as a live disk?
In-Reply-To: <mailman.2591.1669750542.6931.blinux-list@redhat.com>
References: <mailman.2466.1669682524.6928.blinux-list@redhat.com>
 <mailman.2290.1669682675.6931.blinux-list@redhat.com>
 <mailman.2591.1669750542.6931.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2658.1669752265.6929.blinux-list@redhat.com>
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
Cc: orca@freelists.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgbG9va3MgbGlrZSB0aGUgd2hvbGUgcmVkaGF0IGxpbmUgaXMgZ29pbmcgaW5hY2Nlc3NpYmxl
IGZvciBpbnN0YWxsZXJzCm9mIHRoZSBuZXcgaXNvcy4gIEZvciBhbnkgd2l0aCBvbGRlciB3b3Jr
c3RhdGlvbiBpc29zLCBpdCBtYXkgYmUgcG9zc2libGUKdG8gaW5zdGFsbCB0aGUgb2xkZXIgaXNv
cyB0aGVuIGRvIHRoZSB1cGdyYWRlIHByb2Nlc3MgdG8gaGF2ZSBzb21ldGhpbmcKYWNjZXNzaWJs
ZSBhbmQgY3VycmVudCBmcm9tIEZlZG9yYS4KCgoKSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90
IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KZGVmZW5zZSBvZiBsaWJl
cnR5Ogogc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9y
ZGVyLiIKLUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCgouCgpPbiBUdWUsIDI5IE5vdiAy
MDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBBcyBhIHNp
ZGUgbm9vdGUsCj4KPgo+IElmIHlvdSB1c2Ugd29ya3N0YXRpb24sIHlvdSB3aWxsIG5lZWQgdG8g
ZG8gc29tZSB0d2Vla2luZyBhbmQgc3dpdGNoIHRvIHhvcmcKPiBvciB0amhlIGFuYWNvbmRhIHdp
bGwgbm90IHNwZWVrLsKgIFRoZSBmZWRvcmEgYW5hY29uZGEgaXMgYmVpbmcgcmV3cml0b24gYXMg
YQo+IHdlYiBpbnN0YWxsZXIgd2hpY2ggYXQgbGVhc3QgZjlvcm0gbXkgdGVzdGluZyBkb2VzIG5v
dCBzcGVhay7CoCBOb3Qgc3VyZSBpZgo+IHRoaXMgaGFzIHNvbWV0aGluZyB0byBkbyB3aXRoIHRo
ZSB3ZWIgYmFzZSBpdCBpcyB1c2luZywgYnV0IGl0IGlzIHN0aWxsIGluCj4gdGVzdGluZy4gVGhh
bmtzLgo+Cj4KPiBNYXR0aGV3Cj4KPgo+Cj4gT24gMTEvMjgvMjAyMiA3OjQ0IFBNLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4gSXQgaXMgc3VwcG9zZWQgdG8g
d29yay4gSnVzdCBwcmVzcyBhbHQrc3VwZXIrcyBhYm91dCBhIG1pbnV0ZSBhZnRlciB5b3UgYm9v
dAo+ID4gaXQuIFlvdSBzaG91bGQgaGVhciBpdCBzYXkgIlNjcmVlbiByZWFkZXIgb24iIGFuZCBl
dmVyeXRoaW5nIHNob3VsZCBzdGFydAo+ID4gdGFsa2luZyBhdCB0aGF0IHBvaW50Lgo+ID4KPiA+
IH5LeWxlCj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+ID4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

