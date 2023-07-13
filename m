Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A747527EF
	for <lists+blinux-list@lfdr.de>; Thu, 13 Jul 2023 18:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689264165;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sQIHqdlWjVIKVZDcmzGccVle4QrqZPSTz03opq37mUY=;
	b=JWzb/xPig8/zjobQjDywLs1/cTLtvJ0BP0LZC7EOYREDutC3DnmILjx3WXwlnytTmGghtT
	incPjBVmdLLea1pxqQ/dvcQ4TAuW4YJqYhlHT9wKBo85NeMBywf/RXRacsHzVRf7Xr1RZa
	zXPM5scs5VDPUbmJjbRRdk2baAiDeDU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-450-25WMmukAPGmyAFl2XRkeIg-1; Thu, 13 Jul 2023 12:02:43 -0400
X-MC-Unique: 25WMmukAPGmyAFl2XRkeIg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 15B48881B27;
	Thu, 13 Jul 2023 16:02:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BC00DF66DA;
	Thu, 13 Jul 2023 16:02:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6DB9E19465A4;
	Thu, 13 Jul 2023 16:02:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 13 Jul 2023 12:02:08 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Slint for beginners?
In-Reply-To: <mailman.18.1689263767.110742.blinux-list@redhat.com>
References: <mailman.821.1689183357.3826225.blinux-list@redhat.com>
 <mailman.24.1689262689.110736.blinux-list@redhat.com>
 <mailman.18.1689263767.110742.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.39.1689264158.110736.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW4gbWFueSBjYXNlcywgdGhpcyBtZWFucyB5b3Ugb3BlcmF0ZSBvbiB0aGUgY29tbWFuZCBsaW5l
IG5vdCBpbiBhCmdyYXBoaWNhbCBlbnZpcm9ubWVudC4gIFRoZSBjb25zb2xlIG9yIGNvbW1hbmQg
bGluZSBtb2RlIHJlYWxseSBpcyB3aGVyZQphbGwgb2YgdGhlIGxpbnV4IHBvd2VyIHRvb2xzIGJl
Y29tZSBhdmFpbGFibGUgYW5kIHdoZW5ldmVyIHRoZSBncmFwaGljYWwKaW50ZXJmYWNlIGVudmly
b25tZW50IGRvZXMgYW55dGhpbmcgdXNlZnVsIGl0IGhhcyB0byByZWFjaCBpbnRvIHRoZQpjb21t
YW5kIGxpbmUgZW52aXJvbm1lbnQgdG8gZ2V0IGl0IGRvbmUuCgoKLS0gSnVkZSA8amRhc2hpZWwg
YXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KZGVm
ZW5zZSBvZiBsaWJlcnR5OiBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNl
IGluIHRoYXQKb3JkZXIuIiBFZCBIb3dkZXJzaGVsdCAxOTQwLgoKT24gVGh1LCAxMyBKdWwgMjAy
MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSXQncyBhbHdh
eXMgYmVlbiBhIHB1enpsZSB0byBtZTrCoCBXaGF0IGlzIG1lYW50IGJ5IGNvbnNvbGUgb3IgY29u
c29sZSBtb2RlP8KgCj4gSSd2ZSBoZWFyZCB0aGF0IHRlcm0gZm9yIG1hbnkgeWVhcnM7IGp1c3Qg
bmV2ZXIga25ldyB3aGF0IGl0IHdhcyBvciBpcz/CoAo+IFRoYW5rcyBmb3IgYW55IGV4cGxhbmF0
aW9uIG9yIGRlc2NyaXB0aW9uLgo+Cj4gSG93YXJkCj4KPgo+IE9uIDcvMTMvMjAyMyAxMDozNyBB
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+IFllcywgSSB0
aGluayBzbGludCB3b3VsZCBiZSBhIGdvb2QgZGlzdHJpYnV0aW9uIGZvciB5b3UgYXMgYSBiZWdp
bm5lciBpZgo+ID4geW91IHNlbGVjdCB0byBzdGFydCBpbiBjb25zb2xlIG1vZGUgZHVyaW5nIHRo
ZSBpbnN0YWxsYXRpb24uICBUaGUgcmVhc29uCj4gPiBpcyBldmVuIHdpdGggbWF0ZSBhbmQgcnVu
bmluZyBtYXRlLXRlcm1pbmFsIHRoZSBzcGVlY2ggaXMgbGVzcyBzdGFibGUgdGhhbgo+ID4gd2l0
aCBzcGVha3VwIGFuZCBydW5uaW5nIGluIGNvbnNvbGUgZ2V0cyB5b3Ugc3BlYWt1cCBhbmQgb3Ro
ZXIgc2NyZWVuCj4gPiByZWFkZXIgcGFja2FnZXMgdGhhdCBhcmUgbW9yZSBzdGFibGUgdGhhbiBv
cmNhLiAgSWYgeW91IGRlY2lkZSB0byBnbyB3aXRoCj4gPiBzbGludCwgcGxlYXNlIGRvIHlvdXJz
ZWxmIGEgZmF2b3IgYW5kIHN1YnNjcmliZSB0byB0aGUgc2xpbnQgZW1haWwgbGlzdC4KPiA+IFRo
YXQncyBvbiBmcmVlbGlzdHMub3JnIHNpbmNlIHRoYXQgd2F5IHlvdSdsbCBnZXQgb3BlcmF0aW5n
LXNwZWNpZmljIGhlbHAKPiA+IGFuZCB5b3UncmUgbm90IHRoZSBvbmx5IG9uZSB1c2luZyBzbGlu
dCB3aXRoIGEgc2NyZWVuIHJlYWRlciBvbiB0aGF0IGxpc3QuCj4gPgo+ID4KPiA+IC0tIEp1ZGUg
PGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1
c2VkIGluCj4gPiBkZWZlbnNlIG9mIGxpYmVydHk6IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFt
bW8uIFBsZWFzZSB1c2UgaW4gdGhhdAo+ID4gb3JkZXIuIiBFZCBIb3dkZXJzaGVsdCAxOTQwLgo+
ID4KPiA+IE9uIFdlZCwgMTIgSnVsIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4gPgo+ID4+IEdvb2QgYWZ0ZXJub29uLAo+ID4+IEkgYW0gbmV3IHRvIExp
bnV4ICYgYW0gY3VycmVudGx5IHVzaW5nIE1pbnQgMjEuMSwgYnV0IGtlZXAgbG9vc2luZyBzcGVl
Y2gKPiA+PiB3aXRoIE9yY2EuCj4gPj4gQXMgYSByZXN1bHQsIEkgbWF5IHN3aXRjaCB0byBTbGlu
dCwgd2hpY2ggd2FzIHJlY2VudGx5IHJlY29tbWVuZGVkIHRvIG1lIGJ5Cj4gPj4gYSBmcmllbmQu
Cj4gPj4gQmVmb3JlIEkgZG8gdGhvdWdoLCBJJ2QgbGlrZSB0byBnZXQgb3BpbmlvbnMgZnJvbSB0
aGUgbWVtYmVycyBvZiB0aGlzIGxpc3QKPiA+PiBhcyB0byB3aGV0aGVyIG9yIG5vdCB0aGlzIHdv
dWxkIGJlIGEgZ29vZCBkaXN0cmlidXRpb24gZm9yIG1lLCBhcyBhCj4gPj4gYmVnaW5uZXI/Cj4g
Pj4KPiA+Pgo+ID4+IFRoYW5rcywKPiA+PiBKZXNzaWNhIERhaWwKPiA+Pgo+ID4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pgo+ID4+Cj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPgo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

