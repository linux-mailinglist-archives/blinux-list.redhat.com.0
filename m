Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id BEA591CFC7F
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 19:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589305521;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x9b2C5n9jf1vix1mzUYAbOcMMNEmN9pbOTJRphrZP4U=;
	b=B5TBv7m015boKIKnWgqaOADG/hZCKfwMn9I6DbS2A9qIhTLNrSVeP751C7z/Njey7t0Dzc
	yQJt22STpI5AcpT/2u82zivv/DEGDL8/pXEq0f3CWTqloMmmSgokmW9TSQ9cGj8cQeyi3D
	0QeCiUw3Er8qH7Lnt43pE31y/LfTBNw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-90-RfKycPeDN1uLxy-Xt-hPjg-1; Tue, 12 May 2020 13:45:18 -0400
X-MC-Unique: RfKycPeDN1uLxy-Xt-hPjg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6E62107ACF3;
	Tue, 12 May 2020 17:45:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A27C6E6EB;
	Tue, 12 May 2020 17:45:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 045ED4CAA0;
	Tue, 12 May 2020 17:45:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CHj9bU004884 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 13:45:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4BC371030047; Tue, 12 May 2020 17:45:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 481011030044
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:45:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8E630833B4A
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:45:06 +0000 (UTC)
Received: from frv157.fwdcdn.com (frv157.fwdcdn.com [212.42.77.157]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-324-tsiSTTLOOHKQ3KLc5C29Lg-1; Tue, 12 May 2020 13:45:04 -0400
X-MC-Unique: tsiSTTLOOHKQ3KLc5C29Lg-1
Received: from 128-124-156-84.mobile.vf-ua.net ([128.124.156.84]
	helo=[192.168.0.190])
	by frv157.fwdcdn.com with esmtpsa ID 1jYYxi-0001eY-At
	for blinux-list@redhat.com; Tue, 12 May 2020 20:45:02 +0300
Subject: Re: Manjaro linux
To: blinux-list@redhat.com
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
	<alpine.NEB.2.21.2005121221430.13470@panix1.panix.com>
	<CAO2sX32dVWnC1F8EQuQef1_SPStF0=r1c-k+JSz4M+Jm7z82PQ@mail.gmail.com>
	<c33e7e92-9eb7-3b58-afb4-9285eb928b86@gmail.com>
	<c638d1b2-f0c6-f973-1cbe-fe38897bbd3e@ukr.net>
	<969c7e66-e61f-d352-122a-18ed57b8cfe8@gmail.com>
Message-ID: <18fdcb89-5a11-0d32-f7f6-22a15423fe28@ukr.net>
Date: Tue, 12 May 2020 20:44:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <969c7e66-e61f-d352-122a-18ed57b8cfe8@gmail.com>
Content-Language: en-US
Authentication-Result: IP=128.124.156.84; mail.from=bmiv@ukr.net; dkim=pass;
	header.d=ukr.net
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

SWYgRUZJIGlzIG5vdCB1c2VkLCB0aGVuIGFmdGVyIHRoZSBncmVldGluZyBzb3VuZCB0aGUgdXNl
ciBtdXN0IHByZXNzIApUYWIgb25jZSBhbmQgdGhlbiBwcmVzcyBSZXR1cm4gb3IgU3BhY2UuIFVi
dW50dSB3aWxsIGJvb3QgaW50byBsaXZlIAptb2RlLiBUaGVuIHlvdSBjYW4gZW5hYmxlIGFzc2lz
dGl2ZSB0ZWNobm9sb2d5IC4uLgoKMTIuMDUuMjAgMjA6MzUsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24g0L/QuNGI0LU6Cj4gQWggeWVzLiBUaGF0IGJ1ZyByZXBvcnQgc2VlbXMg
dG8gYmUgbXVjaCBtb3JlIGRldGFpbGVkIHRoYW4gd2hhdCBzb21lIAo+IHVzZXJzIHdlcmUgdGVs
bGluZyBtZS4gT2RkbHkgZW5vdWdoLCAiVHJ5IFVidW50dSIgd29ya3Mgd2l0aCBCSU9TIG9uIHRo
ZSAKPiBHTk9NRSB2ZXJzaW9uLiBJIGhhdmUgYmVlbiB0b2xkIHRoYXQgdGhlCj4gCj4gc3VkbyAt
ZSB1YmlxdWl0eQo+IAo+IHdvcmstYXJvdW5kIGRvZXMgYXBwYXJlbnRseSBmaXggdGhlIHByb2Js
ZW0sIGFsdGhvdWdoIGlmIHlvdSBjYW4gZ2V0IHRvIAo+IHRoZSBhc3Npc3RpdmUgdGVjaG5vbG9n
eSBzZXR0aW5nLCB0aGF0IHNob3VsZCBhbHNvIGZpeCBpdC4gVGhhbmtzIGZvciAKPiB0aGUgZGV0
YWlsZWQgbGluay4KPiAKPiB+S3lsZQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

