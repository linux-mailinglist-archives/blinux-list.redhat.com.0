Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F9B591C4E
	for <lists+blinux-list@lfdr.de>; Sat, 13 Aug 2022 20:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660415812;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N7DRI3I9nHGOyzy81/5fvbtTZ3dufMfffnf3SOflNxA=;
	b=BZyC76En9wXJp0s9cKnJAxM0tTVgR+GqD7CnqvsGfiygiH3QQXoegtOSD+1FUA/RdqUlCh
	R4Xy4GrJhAnL6sb1HDv7OvrYw5+jJkHXEDxQ1BogN61xukJndxWC7DFVh+G3ScnMhJUXRu
	CVUAtr8unsbac9u9V2QrrN+YysgfT2Y=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-574-geT-4b88OtCcAHb0tPfJ0g-1; Sat, 13 Aug 2022 14:36:47 -0400
X-MC-Unique: geT-4b88OtCcAHb0tPfJ0g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1FA513806736;
	Sat, 13 Aug 2022 18:36:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 840251121319;
	Sat, 13 Aug 2022 18:36:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C2AE51946A52;
	Sat, 13 Aug 2022 18:36:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 13 Aug 2022 14:36:36 -0400 (EDT)
To: Milan Zamazal <pdm@zamazal.org>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <871qtkrs03.fsf@zamazal.org>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.428.1660415803.10507.blinux-list@redhat.com>
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
Cc: Blinux-list@redhat.com, speakup@linux-speakup.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

bWF5IEkgYXNrIGZyb20gd2hlcmUgaGUgb2J0YWluZWQgaGlzIHNvZnR3YXJlIGVuZ2luZWVyaW5n
IGRlZ3JlZT8KU3R1ZGllZCBjb21wdXRlciBzY2llbmNlPyAgUGVyaGFwcyBkaXNhYmlsaXR5IHN0
dWRpZXM/CnRoZXJlIGFyZSBjZXJ0YWlubHkgc2NvcmVzIG9mICBkaXNhYmxlZCBpbmRpdmlkdWFs
cyB3aXRoIHRoZXNlIHZhcmlvdXMgCmxldmVscyBvZiAKcXVhbGlmaWNhdGlvbi4uZXZlbiB3aG8g
YXJlIExpbnV4IHVzZXJzLgpUaGUgaW50ZXJ2aWV3IGRpZCBub3QgZG9jdW1lbnQgYSBzaW5nbGUg
b25lLCBvdXRzaWRlIG9mIGhpcyBleHBlcmllbmNpbmcgCmJsaW5kbmVzcy4ud2hpY2ggaXMgbm90
IGdvaW5nIHRvIGluc3VyZSBoZSBjcmVhdGVzIGFuIGFjY2Vzc2libGUgcGxhdGZvcm0gCmZvciBm
ZWRvcmEgc2luY2UgYWNjZXNzICByZWZlcnMgdG8gc2V2ZXJhbCBwb3B1bGF0aW9ucy4gIGFuZCBo
ZSBzdGF0ZXMgaGUgCmtub3dzICBub3RoaW5nIGFib3V0IHRob3NlLgoKCgpPbiBTYXQsIDEzIEF1
ZyAyMDIyLCBNaWxhbiBaYW1hemFsIHdyb3RlOgoKPj4+Pj4+ICJLTCIgPT0gS2FyZW4gTGV3ZWxs
ZW4gPGtsZXdlbGxlbkBzaGVsbHdvcmxkLm5ldD4gd3JpdGVzOgo+Cj4gICAgS0w+IFdoYXQgYm90
aGVycyBtZSBtb3N0IGFyZSBoaXMgbGFjayBvZiBhY3R1YWwgcXVhbGlmaWNhdGlvbnMsIGFuZAo+
ICAgIEtMPiBhYnNvbHV0ZSBkaXNtaXNzYWwgb2Ygd2hhdCBoZSBoYXMgbm90IGV4cGVyaWVuY2Vk
Li5hcyBpZiBoZQo+ICAgIEtMPiBkZWZpbmVzIExpbnV4IHVzYWdlIGZvciBldmVyeW9uZS4gIFRo
YXQgYXR0aXR1ZGUgaXMgZGFuZ2Vyb3VzLAo+ICAgIEtMPiBiZWNhdXNlIGhlIGlzIGVkdWNhdGlu
ZyB0aG9zZSBvdXRzaWRlIG9mIHRoZSBhY2Nlc3NpYmlsaXR5Cj4gICAgS0w+IGV4cGVyaWVuY2Vz
LCB3aG8gd2lsbCBiZWxpZXZlIGhpcyBpZ25vcmFuY2UgaXMgZmFjdHVhbC4gIGhlIGhhcwo+ICAg
IEtMPiB0byBiZSBleHBlcnQsIGl0IGlzIGhpcyBqb2IuCj4KPiBIaSBLYXJlbiwKPgo+IEkga25v
dyBMdWthcyBwZXJzb25hbGx5IGFuZCBJIGFkbWlyZSBoaXMgc2tpbGxzIGFuZCBxdWFsaWZpY2F0
aW9ucy4gIEkKPiBhbHNvIGtub3cgZmlyc3QgaGFuZCB0aGF0IGhlIGlzIG9wZW4gdG8gY29uc3Ry
dWN0aXZlIGZlZWRiYWNrIGFuZCBJCj4gYmVsaWV2ZSBoZeKAmWQgYmUgaGFwcHkgdG8gYmUgY29y
cmVjdGVkIGFib3V0IHBvc3NpYmxlIHRlY2huaWNhbAo+IGluYWNjdXJhY2llcyBpbiB0aGUgaW50
ZXJ2aWV3LiAgSXQgbWF5IGJlIGFsc28gYSBnb29kIG9wcG9ydHVuaXR5IHRvCj4gZmluZCBvdXQg
d2hhdOKAmXMgcG9zc2libHkgbWlzc2luZyBpbiBtYWtpbmcgYW55Ym9keSBiZXR0ZXIgaW5mb3Jt
ZWQuCj4KPiBBcyBmb3Ig4oCcYWJzb2x1dGUgZGlzbWlzc2FsIG9mIHdoYXQgaGUgaGFzIG5vdCBl
eHBlcmllbmNlZOKAnSwgd2hhdAo+IHJlYXNvbmFibGUgZnJlZSBzb2Z0d2FyZSBhbHRlcm5hdGl2
ZXMgdG8gYSBsZXNzIG9yIG1vcmUgc3RhbmRhcmQgZGVza3RvcAo+IHdpdGggT3JjYSBhbmQgYSBz
b2Z0d2FyZSBzeW50aGVzaXplciBjYW4geW91IHNlZSBmb3IgYSBjb21tb24gYmxpbmQgdXNlcgo+
IHdobyBuZWVkcyB0byB1c2UgYSBmdWxseSB3b3JraW5nIHdlYiBicm93c2VyLCB0byByZWFkIGFu
ZCBwcm9jZXNzIHRleHQKPiBkb2N1bWVudHMsIHRvIGJlIGNvbXBhdGlibGUgd2l0aCBvdGhlciBj
b21wdXRlciB1c2VycywgZXRjLj8KPgo+IEFuZCBsZXTigJlzIGJlIHJlYWxpc3RpYy4gIFdlIGNl
bGVicmF0ZSBldmVyeSBzaW5nbGUgZGV2ZWxvcGVyIGhpcmVkIHRvCj4gaW1wcm92ZSBhY2Nlc3Np
YmlsaXR5LiAgVGhpcyB0ZWxscyBzb21ldGhpbmcgYWJvdXQgdGhlIHN0YXRlIG9mIHRoZQo+IG1h
dHRlcnMuICBXZSBjYW5ub3QgZXhwZWN0IHRoYXQgYSBzaW5nbGUgcGVyc29uIHdpbGwgZml4IGFs
bCB0aGUga2luZHMKPiBvZiBhY2Nlc3NpYmlsaXR5IHByb2JsZW1zIGluIGFsbCB0aGUgZW52aXJv
bm1lbnRzLiAgTHVrYXMgd29ya3MgYXQgaGlzCj4gam9iIGZvY3VzaW5nIG9uIGNlcnRhaW4gYXJl
YXMgY3VycmVudGx5IHNlZW4gdGhlcmUgYXMgdXJnZW50IG9uZXMgYW5kIEkKPiBhcHByZWNpYXRl
IHRoaXMgb3Bwb3J0dW5pdHkuICBBbnlib2R5IGVsc2Ugc2VlaW5nIGEgbmVlZCB0byB3b3JrIG9u
Cj4gb3RoZXIgYXJlYXMgaXMgd2VsY29tZSB0byBjb250cmlidXRlIHRvIHdoYXRldmVyIHNlZXMg
Zml0LCBhcyBJIGRvLgo+Cj4gUmVnYXJkcywKPiBNaWxhbgo+Cj4KPgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

