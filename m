Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5D46D866C
	for <lists+blinux-list@lfdr.de>; Wed,  5 Apr 2023 20:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680721123;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OEO3/SLHxmE6P/Nn2gDDR7MDekGmMHPVq2YrUiFTpRI=;
	b=YVDG/6kYogPr+7WmleKexX3413H/4D5x1wNvn8sojKHziZ5AIJK1okw267O8q4MbU/AgnF
	CnPu5fPto55ndWe/vvjcQwfwyndsEl+ASB1yxpH1sgPhyTKTac0KatvrT+8e9Q5oZW2tN4
	uW00Cb8qc16Jj031Jgl8CZZIhYXuH5M=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-X7Nn5_W6MiW8p566o3l3BA-1; Wed, 05 Apr 2023 14:58:42 -0400
X-MC-Unique: X7Nn5_W6MiW8p566o3l3BA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E57663C00088;
	Wed,  5 Apr 2023 18:58:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7901B492C14;
	Wed,  5 Apr 2023 18:58:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 07C8019465A4;
	Wed,  5 Apr 2023 18:58:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Subject: Re: Debian beginner questions/looking for a good rolling distro
Date: Wed, 5 Apr 2023 14:58:19 -0400
References: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
 <mailman.1949.1680706766.558770.blinux-list@redhat.com>
 <mailman.2039.1680707830.558774.blinux-list@redhat.com>
 <mailman.2141.1680708565.558772.blinux-list@redhat.com>
 <mailman.2157.1680711899.558772.blinux-list@redhat.com>
To: Blind Linux <blinux-list@redhat.com>
In-Reply-To: <mailman.2157.1680711899.558772.blinux-list@redhat.com>
Message-ID: <mailman.2249.1680721115.558766.blinux-list@redhat.com>
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

SGksCgpXaGlsZSBvbiB0aGUgc3ViamVjdCwgIEkgYW0gd29uZGVyaW5nIGlmIGFueSBibGluZCB1
c2VycyBoYXZlIHVzZWQgZ2VudG9vIGxpbnV4PyAgSSBiZWxpZXZlIGl0IGlzIGEgcm9vbGluZyBy
ZWxlYXNlLiAgT2Zjb3JzZSwgaW5zdGFsbGluZyBpdCBjYW4gYmUgYSBwYWluLCBidXQgd29uZGVy
aW5nIGlmIGFueW9uZSBoYXMgZXZlciBkb25lIGFuIGluc3RhbGxhdGlvbiB3YWxrdGhyb3VnaCBv
ZiBpbnN0YWxsaW5nIGFuZCBjb25maWd1cmluZyB0aGUgc3lzdGVtLiAgSeKAmXZlIHNlYXJjaGVk
IG9uIFlvdVR1YmUsIGJ1dCBkaWQgbm90IGZpbmQgYW55dGhpbmcuICBBdGxhcyBub3Qgd2l0aCB0
aGUgYWNjZXNzaWJpbGl0eSBpbiBtaW5kLiAgVGhhbmtzIGp1c3Qgd29uZGVyaW5nLiAgVGhlIG90
aGVyIGlzc3VlIHdpdGggYXJjaCBpcyB0aGF0IGl0IGRvZXMgbm90IHN1cHBvcnQgc2VjdXJlIGJv
b3QgYWxsIHRob3VnaHQgdG8gYmUgZmFpciwgc2xpbnQgZG9lc27igJl04oCZdCBlaXRoZXIuCgpN
YXR0aGV3CgoKCj4gT24gQXByIDUsIDIwMjMsIGF0IDEyOjI0IFBNLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBM
ZSAwNS8wNC8yMDIzIMOgIDE3OjI5LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IGEgw6ljcml0IDoKPj4gQXMgZm9yIHdoYXQgSSB1c2Ugb24gYSBkYWlseSBiYXNpcz8KPj4gaTMg
Zm9yIGEgd20KPj4gRmlyZWZveCBmb3IgYSBicm93c2VyCj4+IFBpZGdpbiBmb3IgSU0vSVJDIGFu
ZCBzbyBvbgo+PiBUZXh0IGVkaXRvcnMKPj4gS29kaSBmb3IgYSBtZWRpYSBjZW50ZXIKPj4gbXB2
IGZvciBwbGF5aW5nIHRoaW5ncyBpbiB0aGUgdGVybWluYWwuCj4gCj4gRm9yIHlvdXIgaW5mb3Jt
YXRpb24gYWxsIG9mIHRoZW0gYXJlIGluY2x1ZGVkIGluIFNsaW50IHdpdGggb25lIGV4Y2VwdGlv
bjoga29kaQo+IAo+IERpZGllcgo+IGRpZGllcmF0c2xpbnQuZnIKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cg==

