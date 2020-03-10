Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 4C65117EE5D
	for <lists+blinux-list@lfdr.de>; Tue, 10 Mar 2020 03:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583806071;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CnV9rEw8DbHqH9Cqses+mNFxnXsTCRjyDe2N+P0ziLY=;
	b=VTFgToZJgPKc7834aaLNVSAOCsZgRDzDMFd7b/c8EuDaHmfCtjCMGph/06jufFO83hxHeI
	OQoNE9ojXUy9l4WGBjQy32MPEKO2nS4WK5viy73tt8C46ceRo63EdckJzJr6puEZurBFnF
	z+IGp5sq0UQF5WaFbojMpENiiws+S/g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104--c2PVBnMPjqO9hI9oCcwhg-1; Mon, 09 Mar 2020 22:07:48 -0400
X-MC-Unique: -c2PVBnMPjqO9hI9oCcwhg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9DC113E2;
	Tue, 10 Mar 2020 02:07:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 471B78D56A;
	Tue, 10 Mar 2020 02:07:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5129986A04;
	Tue, 10 Mar 2020 02:07:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02A27R4q005880 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Mar 2020 22:07:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7210A178B1; Tue, 10 Mar 2020 02:07:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E4236C32B
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 02:07:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 930CB800307
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 02:07:25 +0000 (UTC)
Received: from p3plsmtpa09-08.prod.phx3.secureserver.net
	(p3plsmtpa09-08.prod.phx3.secureserver.net [173.201.193.237]) (Using
	TLS)
	by relay.mimecast.com with ESMTP id us-mta-250-ps5ibU5MOe-6sgbGNQv1NQ-1;
	Mon, 09 Mar 2020 22:07:22 -0400
X-MC-Unique: ps5ibU5MOe-6sgbGNQv1NQ-1
Received: from [192.168.50.215] ([72.205.36.177]) by :SMTPAUTH: with ESMTPA
	id BUIfj2Gh7n4lEBUIgjcMcS; Mon, 09 Mar 2020 19:07:18 -0700
X-CMAE-Analysis: v=2.3 cv=U53s8tju c=1 sm=1 tr=0
	a=KrEcpKSwXc6ZHCuzcgfT3w==:117 a=KrEcpKSwXc6ZHCuzcgfT3w==:17
	a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=IkcTkHD0fZMA:10 a=20KFwNOVAAAA:8
	a=k44nJ-0nKYCfhYaTTPkA:9 a=QEXdDO2ut3YA:10 a=M-L8O40jsvsA:10
X-SECURESERVER-ACCT: cstrobel@crosslink.net
Subject: Re: Accessible PDF viewer
To: blinux-list@redhat.com
References: <2856df1a-69cb-0a03-d4f0-bf3051b2ab20@gmail.com>
Message-ID: <ccc1f11e-f015-f66f-c897-e6bbf9c0afc3@crosslink.net>
Date: Mon, 9 Mar 2020 22:07:17 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
	Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <2856df1a-69cb-0a03-d4f0-bf3051b2ab20@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfFTC894Vbl3asLNcl2hTASFWLqeBkdNjpedbij5gmTPm4uRWiw6f3Dbae+W6qr8jpe0ebBJpqhkb4eE1I/jx7JpVekQWKG7hyfPPCBPlXBKqgmUB4k0F
	Si2Z88voA1qZxNMEHGK5ZDE4hohux9ShI8QlU4pFMQwQJeJcRQG9vQ+aU+yokAoiS1cWozH5OU03vQ==
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02A27R4q005880
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

VWJ1bnR1IE1hdGUgRGVza3RvcCBzZWVtcyB0byBoYXZlIEF0cmlsIERvY3VtZW50IFZpZXdlci7C
oCBJZiB5b3UgcHJlc3MgCkY3IHRvIHR1cm4gb24gY2FyZXQgYnJvd3NpbmcgaXQgc2VlbXMgdG8g
YmUgdXNhYmxlIHdpdGggc29tZSBQREYgZmlsZXMuCkkgaGF2ZSBub3QgdXNlZCBpdCBleHRlbnNp
dmVseS7CoCBZb3UgY2FuIGFsc28gcHJlc3MgY29udHJvbC1hIHRvIHNlbGVjdCAKdGhlIGVudGly
ZSBkb2N1bWVudCBhbmQgcGFzdGUgaXQgaW50byBhbiBFZGl0b3IuCgoKCk9uIDMvOS8yMDIwIDU6
MzYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGVsbG8s
Cj4KPgo+IGlzIHRoZXJlIGFueSBhY2Nlc3NpYmxlIHBkZiB2aWV3ZXIgb24gTGludXggd2hpY2gg
Y2FuIGJlIHVzZWQgd2lodCAKPiBPcmNhIHNjcmVlbiByZWFkZXI/Cj4KPgo+IEV2aW5jZSBzZWVt
cyBub3QgdG8gYmVsb25nIHRvIHRoaXMgY2F0ZWdvcnkuCj4KPgo+IFRoYW5rIHlvdSBpbiBhZHZh
bmNlIQo+Cj4gVmxhZHlzbGF2Cj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

