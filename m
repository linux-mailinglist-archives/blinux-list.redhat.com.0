Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C99D7BC8F8
	for <lists+blinux-list@lfdr.de>; Sat,  7 Oct 2023 17:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696694396;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/7GcNG1P8v/rd6bXyjcLxiXMNtx4erbxzjucfoC3u1Y=;
	b=W5tvrt2xlLTpbvCk/2Xe3RL+qawk0Nve3Cs7ze/3/RJr20ybzyIu7yis9BgclVJmKu2Sqm
	J5OU9aHYyWFKm4zQV+MRt3ZNHF+mmmELBbs6eKa409Vq0BZU28+yxSS8Zg7E7nkZyecOLu
	0UoDw70CRYJGfmzYKEQedO1qxCIOHO0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-27-LvCNu-dyP8qCfOCeSbDfiQ-1; Sat, 07 Oct 2023 11:59:42 -0400
X-MC-Unique: LvCNu-dyP8qCfOCeSbDfiQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0FA5E800969;
	Sat,  7 Oct 2023 15:59:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 16130170E4;
	Sat,  7 Oct 2023 15:59:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4EF0719465B5;
	Sat,  7 Oct 2023 15:59:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 07 Oct 2023 15:59:12 +0000
To: blinux-list@redhat.com
Subject: Re: opensuse tumbleweed
In-Reply-To: <mailman.1943.1696647005.2981447.blinux-list@redhat.com>
References: <mailman.1823.1696646293.2981450.blinux-list@redhat.com>
 <mailman.1943.1696647005.2981447.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.24.1696694371.2052528.blinux-list@redhat.com>
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

VGhlIEludGVybmV0IGNvbm5lY3Rpb24gd291bGRuJ3QgbmVjZXNzYXJpbHkgbmVlZCB0byBiZSBh
IHByb2JsZW0sIG9uZSAKY2FuIFVTQiB0ZXRoZXIgZnJvbSB0aGVpciBzbWFydHBob25lLCBJIHVz
ZSB0aGlzIHRlY2huaXF1ZSBmb3Igc29tZSAKaW5zdGFsbGVycyBoYXZpbmcgdHJvdWJsZSBjb25u
ZWN0aW5nIHRvIGEgd2lmaS4KCgpCdXQgb3ZlcmFsbCwgaXQgc2VlbXMgd2VpcmQgdG8gbWUgYSBk
aXN0cm8gd291bGQgbGVhdmUgb3V0IG9yY2EgZm9yIApzcGFjZSByZWFzb25zLCBpbiAyMDIzLCB3
aGVuIHRoZSBzY3JlZW5yZWFkZXIgdG9nZXRoZXIgd2l0aCBzcGVlY2hkIGFuZCAKYWxsIG90aGVy
IGRlcGVuZGVuY2llcyBpcyBoYXJkbHkgbm90aWNlYWJsZS4KCgpCZXN0IHJlZ2FyZHMKCgpSYXN0
aXNsYXYKCgpExYhhIDcuIDEwLiAyMDIzIG8gNDo0OSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IFlvdXIgcHJlbWlzZSBhc3N1bWVzIHRoYXQgaW50ZXJu
ZXQgYWNjZXNzIGlzIGFscmVhZHkgY29ubmVjdGVkIGFuZAo+IGF2YWlsYWJsZSBvbiB0aGUgY29t
cHV0ZXIgd2hlcmUgdGhlIGlzbyBpcyBydW5uaW5nIGFuZCBPcmNhIGlzIHRvIGJlCj4gaW5zdGFs
bGVkLiBVbmZvcnR1bmF0ZWx5IHRoaXMgaXMgbm90IGV2ZXJ5IGNvbXB1dGVyLCBlc3BlY2lhbGx5
IHRob3NlCj4gdGhhdCBtdXN0IGNvbm5lY3QgdG8gd2lmaSBvciBhbnkgb3RoZXIgdHlwZSBvZiBp
bnRlcm5ldCBzZXJ2aWNlcyB0aGF0Cj4gcmVxdWlyZSB1c2VybmFtZXMsIHBhc3N3b3JkcywgZXRj
LiBCZXR0ZXIgd291bGQgYmUgdG8gbGVhdmUgc29tZSB0aGluZ3MKPiBvZmYgdGhlIGluc3RhbGwg
bWVkaWEgc28gdGhhdCB0aGUgYWxsLWltcG9ydGFudCBzY3JlZW4gcmVhZGVyIGNhbiBiZQo+IGlu
c3RhbGxlZCwgZXZlbiBpZiBpdCBtZWFucyBsZWF2aW5nIG9mZiBhbiBvZmZpY2Ugc3VpdGUgb3Ig
YSBicm93c2VyCj4gYW5kL29yIGVtYWlsIGFwcGxpY2F0aW9uLiBUaG9zZSB0aGluZ3MgY291bGQg
YmUgdmVyeSBlYXNpbHkgaW5zdGFsbGVkCj4gb3ZlciB0aGUgaW50ZXJuZXQgb25jZSBPcmNhIGhh
cyBiZWVuIHN0YXJ0ZWQsIG9yIGZvciB1c2VycyB0aGF0IGRvbid0Cj4gbmVlZCBPcmNhLCB0aGV5
IGNhbiBoYXZlIHN1Y2ggb3RoZXIgcGFja2FnZXMgaW5zdGFsbGVkIG92ZXIgdGhlIGludGVybmV0
Cj4gYWZ0ZXIgbG9nZ2luZyBpbiBhcyBuZWVkZWQuCj4KPiB+S3lsZQo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cg==

