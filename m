Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCBF660662
	for <lists+blinux-list@lfdr.de>; Fri,  6 Jan 2023 19:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673029998;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uGEffvffZLZoF+387EZVjyrlWJvBa/GzMRFTquj0+W8=;
	b=IhWTdcSIJ6KPpcuugNhIqE9RleniIywB+gZ2KuvD7Lf4R41T/Eo+9V3tHtRHDXACJPvgwd
	8/oOac82TPg9p7WEUjEY6aCy1WXQwexW2XxVMESBvmiVHNaMNh+KLU4K6ByUnRRwJphnkj
	Qzk6jrG3G97Iye+dYuDnO6KyPrW2ReI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-518-qongocEyNvKeYO1z6vV9vQ-1; Fri, 06 Jan 2023 13:33:15 -0500
X-MC-Unique: qongocEyNvKeYO1z6vV9vQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C436A801779;
	Fri,  6 Jan 2023 18:33:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7FEE22026D4B;
	Fri,  6 Jan 2023 18:33:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E105319459C6;
	Fri,  6 Jan 2023 18:33:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 2163414C16ED
Date: Fri, 6 Jan 2023 19:27:19 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Speech-dispatcher problem
References: <mailman.3123.1672954986.2515665.blinux-list@redhat.com>
 <mailman.3118.1672957260.2515662.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.3118.1672957260.2515662.blinux-list@redhat.com>
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on dalen.lamasti.net
Message-ID: <mailman.3461.1673029986.2515658.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

W0RpZGllcl0KClRoYW5rIHlvdS4KCllvdSB3cm90ZToKCj4gbGV0J3MgZmluZCB1bmRlciB3aGlj
aCB1c2VyIG9yY2Egd2FzIHN0YXJ0ZWQsIG1heWJlIG5vdCB5b3UuCj4gCj4gVGhpcyBjb21tYW5k
IHNob3VsZCB0ZWxsIHlvdSB0aGF0Ogo+IGlkIC1udSA1MDAKVGhhdCdzIG1lLiBNeSBzeXN0ZW0g
aXMgaW5zdGFsbGVkIG1hbnksIG1hbnkgeWVhcnMgYWdvIGFuZCBqdXN0IHVwZ3JhZGVkLgoKPiBJ
IGFzc3VtZSB0aGF0IHlvdSBvd24gbnVtZXJpYyBpcyBhdCBsZWFzdCAxMDAwLCBjaGVjayB3aXRo
Ogo+IGlkIC11CgpJdCdzIG1lLgoKTXkgcHJvYmxlbSBtYXkgaGF2ZSB0byBkbyB3aXRoIFBpcFdp
cmUvV2lyZXBsdW1iZXIuIEJ1dCBJJ20gbm90IGFibGUgdG8gZGVidWcgdGhlIGlzc3VlIGFuZCBm
aW5kIHdoeSB0aGUgYXVkaW8gZGV2aWNlIGNhbm5vdCBiZSBvcGVuZWQuCgpMYXJzCgo+IExlIDA1
LzAxLzIwMjMgw6AgMjI6MzQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDD
qWNyaXTCoDoKPiA+IExhcnMgaGVyZS4KPiA+IAo+ID4gQWZ0ZXIgdXBncmFkaW5nIGZyb20gRmVk
b3JhIDM1IHRvIDM2LCBJIGhhdmUgbm8gc3BlZWNoIGluIFguIE5vciBkb2VzCj4gPiBzcGQtc2F5
IGhlbGxvIHNheXMgbm90aGluZy4gUHVsc2VhdWRpbyBpcyBydW5uaW5nIGFzIHN5c3RlbSBkYWVt
b24uCj4gPiBXaGVuIHJlZGlyZWN0aW5nIGxvZ3MgdG8gc3Rkb3V0LCBJIGdldCBFcnJvcjogQ2Fu
J3QgY29ubmVjdCB0byB1bml4Cj4gPiBzb2NrZXQgL3J1bi91c2VyLzUwMC9zcGVlY2gtZGlzcGF0
Y2hlci9zcGVlY2hkLnNvY2ssIGNvbm5lY3Rpb24gcmVmdXNlZC4KPiA+IAo+ID4gU3RhcnRpbmcg
dGhlIHNwZWVjaC1kaXNwYXRoY2VyIHNlcnZlciBtYW51YWxseSBnaXZlczoKPiA+IAo+ID4gRXJy
b3I6IE1vZHVsZSByZXBvcnRlZCBlcnJvciBpbiByZXF1ZXN0IGZyb20gc3BlZWNoZCAoY29kZSAz
eHgpOgo+ID4gMzAwLU9wZW5pbmcgc291bmQgZGV2aWNlIGZhaWxlZC4gUmVhc29uOiBDYW5ub3Qg
b3BlbiBwbHVnaW4gc2VydmVyLgo+ID4gZXJyb3I6IGZpbGUgbm90IGZvdW5kLgo+ID4gCj4gPiBX
aGF0IGRvZXMgdGhhdCBtZWFuLCBhbmQgaG93IGRvIEkgZml4IGl0Pwo+ID4gCj4gPiBUaGFua3Mg
aW4gYWR2YW5jZQo+ID4gTGFycwo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

