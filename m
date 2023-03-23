Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BD86C7254
	for <lists+blinux-list@lfdr.de>; Thu, 23 Mar 2023 22:28:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679606938;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yjfLEnvaXOgjOg7L4Ew3I+PuZHVBthT0Pwfv/LlcjPs=;
	b=Ql9UOtjqYXnEwkeHflk9yBNGyOcT9yAzqWp8GHCKeNg4dIoAVDN8gaeArHHvX76VoDp5H9
	9n1O4bHc/8lLAtseq7coqQ/gQIJ2isxP7Fu6Hnckw4vVYftsSbeH5JlUjC2i44ogq6XX39
	QiARnn7rDCdqAfHK/LQj9uri+ljCrSY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-Bi6_7plPNE69zDXKFvAdkg-1; Thu, 23 Mar 2023 17:28:54 -0400
X-MC-Unique: Bi6_7plPNE69zDXKFvAdkg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 488E7802314;
	Thu, 23 Mar 2023 21:28:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CB536492B0A;
	Thu, 23 Mar 2023 21:28:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5AE561946A40;
	Thu, 23 Mar 2023 21:28:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Mar 2023 21:27:18 +0000
To: blinux-list@redhat.com
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
In-Reply-To: <mailman.1490.1679586663.636364.blinux-list@redhat.com>
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1130.1679509316.636367.blinux-list@redhat.com>
 <mailman.1311.1679555916.636358.blinux-list@redhat.com>
 <mailman.1490.1679586663.636364.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.1568.1679606923.636364.blinux-list@redhat.com>
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

QWgsIEkgZ2V0IGl0IG5vdywgc29ycnkuIEkgd2FzIHN0dW5uZWQgZm9yIGEgd2hpbGUgbGlrZSAi
aGV5LCBkaWQgSQpyZWFsbHkgbWlzcyBhIFJ1c3Qgc2NyZWVucmVhZGVyPyIgWEQKCkJ1dCB5ZWFo
LCB0aGVyZSBkZWZpbml0ZWx5IGFyZSBydXN0eSBzY3JlZW5yZWFkZXJzIGFyb3VuZCBoYWhhLgoK
CkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMjMuIDMuIDIwMjMgbyAxNjo1MCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IEhpLgo+Cj4KPiBJ
dCdzIGEgYmFkIGpva2UuIEkgbWVhbnQgbGlrZSBvbGQgYW5kIHJ1c3R5Lgo+Cj4KPgo+IENoZWVy
czoKPiBBYXJvbiBTcGVhcnMsIEFLQSBWYWxpYW50ODA4NiBHZW5lcmFsIFBhcnRuZXIgYXQgVmFs
aWFudCBHYWxheHkgQXNzb2NpYXRlcyAid2UgbWFrZSAoVkVSWSBHT09EIEFVRElPR0FNRVMpIGZv
ciB0aGUgYmxpbmQgY29tdW5pdHkiIGh0dHA6Ly92YWxpYW50R2FsYXh5LmNvbQo+Cj4gT24gMy8y
My8yMDIzIDM6MTggQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4+IEhpLAo+Pgo+PiAgICA+IEhvd2V2ZXIsIG90aGVyIE9TJ3MgaGF2ZSBydXN0eSBzY3JlZW5y
ZWFkZXJzLgo+Pgo+Pgo+PiBJbnRlcmVzdGluZywgY291bGQgeW91IGJlIG1vcmUgc3BlY2lmaWMg
b24gdGhpcz8gRnJvbSB0aG9zZSBJIGtub3csIE5WREEKPj4gaXMgUHl0aG9uICYgQy9DKyssIEph
d3MgaXMgd3JpdHRlbiBlbnRpcmVseSBpbiBDKysgaWYgSSByZW1lbWJlciBjb3JyZWN0bHkuCj4+
Cj4+IFZvaWNlT3ZlciwganVzdCBsaWtlIHRoZSB0d28gaXMgb2xkZXIgdGhhbiBSdXN0IGl0c2Vs
Ziwgc28gSSBndWVzcyBpdCdzCj4+IHdyaXR0ZW4gaW4gdGhlIEFwcGxlJ3MgbWlkZGxlLWxldmVs
IGxhbmd1YWdlcy4KPj4KPj4gV2hpbGUgQW5kcm9pZCBoYXMgYSBKYXZhIGNlbnRlcmVkIGFjY2Vz
c2liaWxpdHkgc3lzdGVtLgo+Pgo+Pgo+PiBJIHNlYXJjaGVkIHNjcmVlbnJlYWRlciBpbiBSdXN0
LCBidXQgZm91bmQgImp1c3QiIE9kaWxpYS4KPj4KPj4KPj4gQmVzdCByZWdhcmRzCj4+Cj4+Cj4+
IFJhc3Rpc2xhdgo+Pgo+Pgo+PiBExYhhIDIyLiAzLiAyMDIzIG8gMTk6MjEgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChhKToKPj4+IEhvd2V2ZXIsIG90aGVyIE9T
J3MgaGF2ZSBydXN0eSBzY3JlZW5yZWFkZXJzLgo+Pj4KPj4+Cj4+PiBDaGVlcnM6Cj4+PiBBYXJv
biBTcGVhcnMsIEFLQSBWYWxpYW50ODA4NiBHZW5lcmFsIFBhcnRuZXIgYXQgVmFsaWFudCBHYWxh
eHkgQXNzb2NpYXRlcyAid2UgbWFrZSAoVkVSWSBHT09EIEFVRElPR0FNRVMpIGZvciB0aGUgYmxp
bmQgY29tdW5pdHkiIGh0dHA6Ly92YWxpYW50R2FsYXh5LmNvbQo+Pj4KPj4+IE9uIDMvMjIvMjAy
MyAxMTozMiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cg==

