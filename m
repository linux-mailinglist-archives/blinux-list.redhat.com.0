Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 337A938744E
	for <lists+blinux-list@lfdr.de>; Tue, 18 May 2021 10:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621327653;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E5F9qUKRdIm5qKwKEXLqlSgiO7vJJPRIXqyplkXXMsc=;
	b=fLg/reXv2RB90hbwnmrH/bFQSVpRtK1f8WH6X1Fj+TuJ7NhVCO0/ruVUL4yRgrMMF5kuPo
	oEPh5TsYOvQhNvwnIybKalmhmj9fiiedJ1Ns0PX4wR7b8L93GLP6g959TNNM9PfGQt7cqi
	D3hkT//kURseQrDG6mUo5+mgJpam2PE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-121-XIkLmqyWP0qXP3k8p_pSkA-1; Tue, 18 May 2021 04:47:31 -0400
X-MC-Unique: XIkLmqyWP0qXP3k8p_pSkA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59CD3107ACC7;
	Tue, 18 May 2021 08:47:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B55D960657;
	Tue, 18 May 2021 08:47:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 874D61800BB4;
	Tue, 18 May 2021 08:47:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14I8lIWb020129 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 04:47:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 15CC4BE5B1; Tue, 18 May 2021 08:47:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0ECA6BDC21
	for <blinux-list@redhat.com>; Tue, 18 May 2021 08:47:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2513B1857F28
	for <blinux-list@redhat.com>; Tue, 18 May 2021 08:47:13 +0000 (UTC)
Received: from smtprelay02.ispgateway.de (smtprelay02.ispgateway.de
	[80.67.18.14]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-307-1kPMzSBCPqm1e9BtOomnTg-1; Tue, 18 May 2021 04:47:10 -0400
X-MC-Unique: 1kPMzSBCPqm1e9BtOomnTg-1
Received: from [37.4.229.143] (helo=[192.168.178.101])
	by smtprelay02.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1lihzS-0004EH-Fi
	for blinux-list@redhat.com; Mon, 17 May 2021 20:29:18 +0200
Mime-Version: 1.0 (1.0)
Subject: Re: A question about Fenrir on Arch linux
Date: Mon, 17 May 2021 20:29:47 +0200
Message-Id: <B537BCD3-D49D-4771-BDF7-8C4ABCDA01EF@linux-a11y.org>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
In-Reply-To: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14I8lIWb020129
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpzZWVtcyBsaWJodW5zcGVsbCBpcyBtaXNzaW5nLiBIdW5zcGVsbCBpcyB1c2VkIGZv
ciBzcGVsbGNoZWNrZXIuCgpUaGVyZSBhcmUgdHdvIHdheXMgdG8gZml4IHRoaXM6CgoxLiBpbnN0
ZWxsIGh1bnNwZWxsIGFuZCBnZXQgc3BlbGxjaGVja2luZwoyLiByZW1vdmUgcHl0aG9uLXB5ZW5j
aGFudCB0byBkaXNhYmxlIHNwZWxsY2hlY2tpbmcKCkNoZWVycyBjaHJ5cwoKPiBBbSAxNy4wNS4y
MDIxIHVtIDIwOjE2IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8
YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4gCj4g77u/SGVsbG8gZXZlcnlvbmUsCj4gCj4gCj4g
SSBqdXN0IGRvd25sb2FkZWQgZmVucmlyLWdpdCBmcm9tIHRoZSBBVVIgdXNpbmcgeWFvdXJ0Lgo+
IAo+IFdoZW4gSSB0cnkgdG8gcnVuIGZlbnJpciB3aXRoIHRoZSBjb21tYW5kCj4gCj4gZmVucmly
Cj4gCj4gaW4gYSB0ZXJtaW5hbCwgaG93IGV2ZXIsIGkgZ2V0IGZlbnJpcidzIHN0YXJ0dXAgc291
bmQsIGFuZCB0aGlzOgo+IAo+IAo+IFtmcmFuY2lzY29AQmx1ZWJsaW5rIH5dJCBmZW5yaXIKPiAq
KiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc0OiBFcnJvciBsb2FkaW5n
IHBsdWdpbjogbGliaHNwZWxsLnNvLgo+IDA6IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmls
ZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5H
ICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgcGx1Z2luOiBsaWJ2b2lra28uc28uCj4g
MTogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0
b3J5Cj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NzogRXJyb3Ig
bG9hZGluZyBwbHVnaW46IGxpYm51c3BlbGwuc28KPiAuNDogY2Fubm90IG9wZW4gc2hhcmVkIG9i
amVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4gCj4gCj4gQW55IGlkZWFzIG9u
IGhvdyB0byBmaXggaXQsIGFuZCBubyBzcGVlY2ggZWl0aGVyLgo+IAo+IFRoYW5rIHlvdSBmb3Ig
YW55IGFuc3dlci4KPiAKPiBCZXN0IHJlZ2FyZHMuCj4gCj4gRnJhbmNpc2NvLgo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

