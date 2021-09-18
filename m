Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E24F84108A4
	for <lists+blinux-list@lfdr.de>; Sat, 18 Sep 2021 22:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631998334;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j3vucJ5IdrTsOsb34z+NsITjJph7qhb/QCS/7OShuFg=;
	b=gVJWs9BHVvscDdZTO9tLVj+dfdgfDiEkcUtWbuIIeNQuBM/ZBYHyNfVm0qRD6LedhlES3M
	E1niranZfJDarlvnLDzF9Beoj/vmKMngcfrP6gL84teKmLZ+KY5g7haejnuUGBvE9j6gvy
	5lWnEenSP0kYYSnO2x05tWK2+lWXVVA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-561-AbYDgieYN-ujIz-0DD57tQ-1; Sat, 18 Sep 2021 16:52:12 -0400
X-MC-Unique: AbYDgieYN-ujIz-0DD57tQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E8071084681;
	Sat, 18 Sep 2021 20:52:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F0E960871;
	Sat, 18 Sep 2021 20:52:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E0E984E58E;
	Sat, 18 Sep 2021 20:52:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18IKpwTs021772 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Sep 2021 16:51:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DD45963F56; Sat, 18 Sep 2021 20:51:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D81EA63F5F
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 20:51:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 575A491C7C2
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 20:51:56 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-358-7OUxdWu1OeSYw_9ek6WOGA-1; Sat, 18 Sep 2021 16:51:53 -0400
X-MC-Unique: 7OUxdWu1OeSYw_9ek6WOGA-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id E1632FA657
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 16:51:52 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net E1632FA657
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 18IKpq6P037306
	for blinux-list@redhat.com; Sat, 18 Sep 2021 16:51:52 -0400
Date: Sat, 18 Sep 2021 16:51:52 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: rhvoice broken on Arch
Message-ID: <YUZRaJrtj5nH3p4h@rednote.net>
References: <YUXl/70G69mzJqvV@rednote.net> <YUYJPmtUN850ISXK@rednote.net>
	<20210918175433.vxj2bqpztnz67iqx@alex-pc>
MIME-Version: 1.0
In-Reply-To: <20210918175433.vxj2bqpztnz67iqx@alex-pc>
X-Operating-System: Linux opera.rednote.net 5.13.16-200.fc34.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 18IKpwTs021772
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIEFsZXhhbmRlcjoKCkxpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JpdGVz
Ogo+IE9uIFNhdCwgU2VwIDE4LCAyMDIxIGF0IDExOjQzOjU4QU0gLTA0MDAsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6PiA+IERlYXIgQWxsOgo+IC4uLgo+ID4gcmh2
b2ljZSBpcyBvbmUgcGFja2FnZSB0aGF0IHdhcyBuZXcgdGhpcyB3ZWVrLiBJdCdzIG5vdCB3b3Jr
aW5nIHdpdGgKPiA+IFNwZWVjaC1EaXNwYXRjaGVyLiBXaGVuIEkgZG8gYSBBbHQrRjIgYW5kIHR5
cGUgJ29yY2EgLXInIEkgaGVhciB0aGUKPiA+IGR1bW15IGRyaXZlciBhdWRpbyBtZXNzYWdlLgo+
IAo+IGl0IHNlZW1zIHNvbWVvbmUgZG9lc24ndCByZWFkIHRoZSB0ZXJtaW5hbCBhZnRlciB0aGUg
dXBkYXRlLCBkb2VzIGl0Pwo+IApHdWlsdHkgYXMgY2hhcmdlZC4gQnV0LCB0aGF0J3MgYSBsb3Qg
b2Ygc2NyZWVuZnVscyB0byBwaXBlIHRocm91Z2ggbGVzcwpldmVyeSB3ZWVrLgoKSSBvbmx5IHJl
YWxpemVkIGl0IHdhcyB1cGdyYWRlZCBhZnRlciBkb2luZyBhIGxzIC1scnQgb24KL3Zhci9jYWNo
ZS9wYWNtYW4vcGtnLy4gCgpJdCdzIHRoZSBvbmx5IHdheSBJIGtub3cgdG8gZ2V0IHBhY21hbiB0
byByZXBvcnQgb24gd2hhdCB3YXMgdXBncmFkZWQgaW4KcmV2ZXJzZSBjaHJvbm9sb2dpY2FsIG9y
ZGVyLiBNYXliZSBzb21lb25lIGtub3dzIHRoZSByZWFsIHdheSB0byBnZXQKcGFjbWFuIHRvIHJl
cG9ydD8gSSd2ZSBub3Qgc3VjY2VlZGVkIHRyeWluZyB0byBnb29nbGUgaXQuCgo+IHlvdSBub3cg
bmVlZCB0byBpbnN0YWxsIHRoZSB2b2ljZXMgdGhhdCB5b3UgYXJlIHVzaW5nIHNlcGFyYXRlbHku
IGZvciBleGFtcGxlOgo+ICMgcGFjbWFuIC1TIHJodm9pY2Utdm9pY2Ute2FsYW4sc2x0fQo+IApZ
ZXMsIHRoYW5rIHlvdS4gVGhhdCBkb2VzIGltcHJvdmUgcGVyZm9ybWFuY2UgZ3JlYXRseSEKClBT
OiBXaGVyZSBjYW4gSSBsZWFybiBtb3JlLCBmb3IgZXhhbXBsZSBvdGhlciBsYW5nIHZvaWNlcyBJ
IG1pZ2h0IHdhbnQ/Ck5vIG1hbiBwYWdlLCBub3RoaW5nIGluIC91c3Ivc2hhcmUvZG9jIC0tIHNv
IHdoZXJlPwoKPiA+IFNvcnJ5LCBBbGV4YW5kZXIhCj4gCj4gSSBkb27igJl0IGtub3cgd2h5IHlv
dSBhcmUgYXBvbG9naXppbmcsIGJ1dCBpbiBhbnkgY2FzZSwgeW91IGRvbuKAmXQgbmVlZCB0byBk
byB0aGlzLgo+IApGYWlyIGVub3VnaC4gSSBqdXN0IGRvbid0IGxpa2UgYmVpbmcgcGVza3ksIGFu
ZCBJJ3ZlIGJlZW4gdW5hYmxlIHRvCnN1Y2NlZWQgcmVsaWFibHkgd2l0aCBlc3BlYWt1cC0wLjkw
IGZvciB3ZWVrcyBub3cuCgpJJ20gZ2xhZCB0byBoZWFyIHlvdSBhbmQgS2lyayBhcmUgd29ya2lu
ZyBvbiB0aGF0LiBBbHNvLCBhcyBEaWRpZXIKc3VnZ2VzdGVkLCBJIHdpbGwgc2VlIGlmIHJlYnVp
bGRpbmcgcGNhdWRpb2xpYiB3aXRob3V0IHB1bHNlIG1pZ2h0IGhlbHAuCkkgdHJ5IHRvIGF2b2lk
IHB1bHNlLCBzbyBpdCdzIHBvc3NpYmxlIEknbSBtaXNzaW5nIHNvbWUgcGllY2UgaXQgd2FudHMu
CkJlc3QsCgpKYW5pbmEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

