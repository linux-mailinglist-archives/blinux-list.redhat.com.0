Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BECC659AF10
	for <lists+blinux-list@lfdr.de>; Sat, 20 Aug 2022 18:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661014741;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aQq9LHw7bZGIo3P9o2LcIMP8QZoEHNph3lKll5aOb5Q=;
	b=d7bKHenrjnXmgsb4sQ+9ZOhN92lT6KOAfBTMNShrIDtrPVdqU63PgcuTsqMAHlJ4PFwhEq
	ViDBVDK4ngpN3s2vLpZyn88XINUXBk7osUXSKKaqXkjHHGBvT5bt2RT2CkrtlDAAy/1ELr
	MhXqI7xKfrR6bw4NLH+XVDCjSvGJHDI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-240-4FddowoRMtuKLcpNS9s15w-1; Sat, 20 Aug 2022 12:58:58 -0400
X-MC-Unique: 4FddowoRMtuKLcpNS9s15w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D017B85A581;
	Sat, 20 Aug 2022 16:58:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 36A1B2166B26;
	Sat, 20 Aug 2022 16:58:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7CCDC1946A53;
	Sat, 20 Aug 2022 16:58:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 20 Aug 2022 18:58:45 +0200
MIME-Version: 1.0
Subject: Re: PC no longer boots from DVD
To: blinux-list@redhat.com
References: <mailman.1921.1660870750.10506.blinux-list@redhat.com>
 <mailman.2152.1660877706.10500.blinux-list@redhat.com>
 <mailman.2466.1660982351.10503.blinux-list@redhat.com>
 <mailman.2198.1660996299.10506.blinux-list@redhat.com>
In-Reply-To: <mailman.2198.1660996299.10506.blinux-list@redhat.com>
X-Spam-Flag: NO
Message-ID: <mailman.2519.1661014728.10503.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

T24gOC8yMC8yMDIyIDE6NTEgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4gSXQgd2FudCBib290IGZyb20gVVNCIG9yIHRoZSBEVkQgZHJpdmUuCj4gSSBjYW4g
cGxheSBEVkTigJlzIG9yIENE4oCZcywgc28gdGhlIGRyaXZlIGlzIE9LLgo+IEkgZG9u4oCZdCBr
bm93IHdoYXQgY291bGQgaGF2ZSBjaGFuZ2VkIG15IGJvb3Qgc2VxdWVuY2UuCj4gSSBmb3VuZCB0
aGlzIGFydGljbGUgb25saW5lIGJ1dCBoYXZlIG5vdCB0cmllZCBpdCB5ZXQuCj4gSG93IHRvIGNo
YW5nZSB0aGUgYm9vdCBzZXF1ZW5jZQo+Cj4gZWZpYm9vdG1nciAtdgo+IFRoaXMgd2lsbCBkaXNw
bGF5IGFsbCBib290IGRldmljZXMgb24geW91ciBjb21wdXRlciwgYW5kIHJlc2VtYmxlIHNvbWV0
aGluZyBsaWtlOgo+IEJvb3RDdXJyZW50OiAwMDAwCj4gVGltZW91dDogMiBzZWNvbmRzCj4gQm9v
dE9yZGVyOiAwMDAwLDAwMDQsMDAwNSwwMDAzCj4gQm9vdDAwMDAqIHVidW50dQlIRCguLi4pL0Zp
bGUoXEVGSVxVQlVOVFVcU0hJTVg2NC5FRkkpCj4gQm9vdDAwMDMqIEhhcmQgRHJpdmUJQkJTKC4u
LikKPiBCb290MDAwNCogVUVGSTogSmV0Rmxhc2hUcmFuc2NlbmQgMzJHQiAxMTAwIC4uLgo+IEJv
b3QwMDA1KiBVRUZJOiBKZXRGbGFzaFRyYW5zY2VuZCAzMkdCIDExMDAsIFBhcnRpdGlvbiAxLi4u
Cj4gVGhlIGZpcnN0IGxpbmUgc2hvd3MgdGhlIGN1cnJlbnQgZGV2aWNlIHRoYXQgd2FzIGJvb3Rl
ZCBmcm9tLCB0aGUgdGhpcmQgbGluZSBzaG93cyB0aGUgY29tcHV0ZXIncyBjdXJyZW50IGJvb3Qg
c2VxdWVuY2UsIGFuZCB0aGUgZm9sbG93aW5nIGxpbmVzIGxpc3QgZWFjaCBib290YWJsZSBkZXZp
Y2UuCj4gVGFrZSBub3RlIG9mIHRoZSBudW1iZXJzIHN1Y2ggYXMgMDAwLCAwMDMsIGV0Yy4gSW4g
dGhpcyBleGFtcGxlLCB3ZSBjYW4gc2VlIHRoZSBjdXJyZW50IGJvb3Qgc2VxdWVuY2UgaXMgdGhl
IFVidW50dSBpbnN0YWxsYXRpb24sIGZvbGxvd2VkIGJ5IHRoZSBoYXJkIGRyaXZlLCBhbmQgdGhl
IHR3byBkaWZmZXJlbnQgcGFydGl0aW9ucyBvbiBhIDMyR0IgVVNCIGRyaXZlLgo+Cj4gQ2hhbmdl
IEJvb3QgU2VxdWVuY2UKPiBDaG9vc2UgeW91ciBuZXcgYm9vdCBzZXF1ZW5jZSBieSB0aGUgZGV2
aWNlIG51bWJlcnMsIGFuZCBjaGFuZ2UgeW91ciBib290IHNlcXVlbmNlIHdpdGggdGhlIGNvbW1h
bmQ6Cj4gc3VkbyBlZmlib290bWdyIC1vIDUsMCw0LDMKPiBVc2luZyB0aGUgYWJvdmUgZXhhbXBs
ZSwgdGhhdCBjb21tYW5kIHdvdWxkIGNoYW5nZSB0aGUgYm9vdCBzZXF1ZW5jZSB0byB0cnkgdGhl
IFVTQiBkcml2ZSBmaXJzdCwgZm9sbG93ZWQgYnkgdGhlIG1haW4gVWJ1bnR1IGluc3RhbGxhdGlv
bi4KPiBJdCdzIHRoYXQgc2ltcGxlLCBhbmQgeW91IGNhbiBub3cgY2hhbmdlIHRoZSBib290IHNl
cXVlbmNlIG9uIGFueSBMaW51eCBjb21wdXRlciB2aWEgdGVybWluYWwgd2l0aG91dCBzY3JhbWJs
aW5nIHRvIGdldCBpbnRvIHRoZSBCSU9TIHdoZW4gZmlyc3QgcG93ZXJpbmcgb24gdGhlIGNvbXB1
dGVyLgo+CgpUaGlzIGFzc3VtZXMgdGhhdCB5b3UgaGF2ZSBhIG5vbi1sZWdhY3kgQklPUyEgOikK
Ci0tCkpvaG4gRG9lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

