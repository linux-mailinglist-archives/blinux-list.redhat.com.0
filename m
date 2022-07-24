Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E659657F62E
	for <lists+blinux-list@lfdr.de>; Sun, 24 Jul 2022 19:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658683711;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=exunR8Ng0Z6h1ICnsUbXeE4fPhIbAeQVAHKXPiHtjn0=;
	b=S7aNj2zH1xOL55gJtmyPudExWgZjCgc36S9k+jyuGYhoAxtyqffwYppOXOhtm9qUTEaa4F
	ECR9XX/jIY5P2+9Q4AE/Xj4K3beSy3GLlib4FmM1IGlotqjfX7cfeFzlg+BXKcYvcBiuXU
	TMWve9v3iI/RAKEx0PZ1TNQUZ5R9ir4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-333-C6OR20YzN06lFq9870J9bQ-1; Sun, 24 Jul 2022 13:28:28 -0400
X-MC-Unique: C6OR20YzN06lFq9870J9bQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5FAEB801755;
	Sun, 24 Jul 2022 17:28:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 96C951121314;
	Sun, 24 Jul 2022 17:28:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1AC051945D86;
	Sun, 24 Jul 2022 17:28:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: A question about how to install Lennix as a second operating
 system on a modern Dell laptop?
Date: Sun, 24 Jul 2022 10:28:12 -0700
References: <mailman.35571.1658501727.111207.blinux-list@redhat.com>
 <1764ad6f-992a-3067-5432-cdd7d9118064@hubert-humphrey.com>
 <mailman.35980.1658504582.111209.blinux-list@redhat.com>
 <mailman.7471.1658507923.3475251.blinux-list@redhat.com>
 <mailman.35751.1658510592.111205.blinux-list@redhat.com>
 <mailman.36108.1658511328.111208.blinux-list@redhat.com>
 <mailman.35873.1658512716.111210.blinux-list@redhat.com>
 <mailman.35612.1658516884.111207.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.35612.1658516884.111207.blinux-list@redhat.com>
Message-ID: <mailman.36210.1658683698.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUgd2FzIGEgbWV0aG9kIEkgdXNlZCBiYWNrIGluIHRoZSBlYXJseSAyMDAw4oCZcyB0aGF0
IHByZXR0eSBtdWNoIGhhZCBhIGxhcmdlIGltYWdlIGZpbGUgKGFib3V0IDEyMCBHQiksIGEgZm9s
ZGVyIHdpdGggdGhlIGJhdGNoIGZpbGUsIFZNTGludXoga2VybmVsIGltYWdlIGFuZCBhIGNvdXBs
ZSBvZiBvdGhlciBmaWxlcyBpbiB0aGVyZS4gWW91IHdvdWxkIHN0YXJ0IHdpbmRvd3Mgbm9ybWFs
bHksIHRoZW4gb3BlbiBhIENNRC5leGUgd2luZG93LCBjZCB0byB0aGUgZm9sZGVyIChsb2NhdGVk
IGluIHRoZSByb290IGxldmVsIG9mIHRoZSBkcml2ZSkgYW5kIHRoZW4gcnVuIHRoZSBiYXRjaCBm
aWxlLiBJdCB3b3VsZCBraWNrIG91dCB3aW5kb3dzIGFuZCBpbW1lZGlhdGVseSBzdGFydCB1cCBs
aW51eCBvbiB0aGUgaG9zdGVkIGltYWdlIGZpbGUgKHdoaWNoIGlzIGZvcm1hdHRlZCBleGFjdGx5
IGxpa2UgYSBIREQgaW1hZ2UsIGluY2x1ZGluZyBwYXJ0aXRpb24gdGFibGUsIGV0YykuIFRoZSBy
ZXN1bHQgd291bGQgYmUgdGhhdCB3aW5kb3dzIHJlY2VpdmVzIHRoZSBlcXVpdmFsZW50IG9mIGFu
IGltbWVkaWF0ZSByZWJvb3Qgd2l0aG91dCBhbnkgb3RoZXIgY29uZGl0aW9ucyBhbmQgd2hlbiB5
b3UgYXJlIGRvbmUgaW4gbGludXgsIHlvdSBjYW4gZG8gYSBzdGFuZGFyZCBzaHV0ZG93biBhbmQg
cmVzdGFydCBhbmQgd2luZG93cyB3aWxsIGJlIHJlbG9hZGVkIGxpa2UgaXTigJlzIGluIGEgbmV3
IHNlc3Npb24uCgpJdOKAmXMgYmVlbiBhIHZlcnkgbG9uZyB0aW1lIHNpbmNlIEkgZGlkIGFueXRo
aW5nIGxpa2UgdGhpcywgc28sIEkgd2lsbCBoYXZlIHRvIHNlYXJjaCBmb3IgaXQgb24gdGhlIG5l
dCBhbmQgc2VlIGlmIGl04oCZcyBzdGlsbCB2aWFibGUuIEJ0dywgSSBkaWQgdGhpcyBvbiBib3Ro
IGEgd2luMmsgbWFjaGluZSBhbmQgYWxzbyBhIHdpbmRvd3MgNyBsYXB0b3AsIHNvIEkga25vdyBp
dCB3b3JrZWQuCgotRXJpYwoKCj4gT24gSnVsIDIyLCAyMDIyLCBhdCAxMjowNyBQTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4gCj4gR29vZCBhZnRlcm5vb24gZXZlcnlvbmUsIEkgYW0gd29uZGVyaW5nIGlzIHRoZXJl
IGEgd2F5IGZvciBibGluZCBwZXJzb24gdG8gaW5zdGFsbCBhbnkgdmVyc2lvbiBvZiBMZW5uaXgg
b24gYSBtb2Rlcm4gRGVsbCBsYXB0b3Agd2l0aG91dCBjaXRlZCBhc3Npc3RhbmNlPwo+IAo+IFRo
ZSBiaWcgY2F2ZWF0IGhlcmUgaXMgdGhhdCB0aGVyZSBpcyBhIHdheSB0byBkbyBpdCBpbiBzdWNo
IGEgbWFubmVyIHRoYXQgdGhlIG1haW4gb3BlcmF0aW5nIHN5c3RlbSBpbiB0aGlzIGNhc2UgV2lu
ZG93cyAxMSB3aWxsIG5vdCBiZSBkaXN0dXJiZWQ/IERvZXMgYW55b25lIGhhdmUgYW55IGdvb2Qg
c3VnZ2VzdGlvbnMgZm9yIGhvdyB0byBkbyB0aGlzPyBJIGRvIGhhdmUgYSBVYnVudHUgZGlzayBp
bWFnZSBzaXR0aW5nIG9uIG15IGhhcmQgZHJpdmUuIEkgYmVsaWV2ZSBpdCBpcyB0aGUgY3VycmVu
dCB2ZXJzaW9uIG9mIHRoaXMgTGVubml4IGRpc3RyaWJ1dGlvbi4KPiAKPiBTaW5jZXJlbHkgTWF1
cmljZSBtaW5lcy4KPiAKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEJsaW51
eC1saXN0IDxibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4gU2VudDogRnJpZGF5LCBKdWx5IDIyLCAy
MDIyIDEwOjU5IEFNCj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBTdWJqZWN0OiBSZTog
W3NsaW50XSBSZTogVGhlIFJlZ2lzdGVyOiBUYXZpcyBPcm1hbmR5IHBvcnRzIFdvcmRQZXJmZWN0
IGZvciBVTklYIHRvIExpbnV4IChmd2QpCj4gCj4gTm8KPiBEaWRpZXIKPiAKPiAKPiBMZSAyMi8w
Ny8yMDIyIMOgIDE5OjM1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0IDoKPj4gVGhhbmtzIGFsb3QgRGlkaWVyLiBJcyB0aGVpciBhbiBlYXN5IHdheSBvZiBjb252
ZXJ0aW5nIGFuIGkzODYgdG8gYW4gCj4+IGFtYjY0PyBkcGtnIGRpZG4ndCBsaWtlIHRoaXMgb25l
Lgo+PiBDaGltZQo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+PiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

