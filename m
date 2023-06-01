Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 863D971EFEC
	for <lists+blinux-list@lfdr.de>; Thu,  1 Jun 2023 18:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685638726;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5ZWdUr/yhoN9e60/qQxYX0WmJOciuTyqEMdXvxJkrps=;
	b=gySleROhrK53f10RfDMaKwlJ3vFZX0z1LjOpiqXcjZydn5FUK7Do7hkXeqV97pS8WByalV
	bwW9e0pqZo3aJzBHUPfw3AiKqnkIJlr+7qxvQpD9E7HYWe02Js0yxzEG4ApqaJMFHds0sV
	LB5gRRoSTfMJnliNeZ3pXziWpZ4QFLU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-617-zAiF73ntPTeSbWqszWoorg-1; Thu, 01 Jun 2023 12:58:43 -0400
X-MC-Unique: zAiF73ntPTeSbWqszWoorg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D2371C313BD;
	Thu,  1 Jun 2023 16:58:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6D5F4C154D9;
	Thu,  1 Jun 2023 16:58:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BC09119465A4;
	Thu,  1 Jun 2023 16:58:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 1 Jun 2023 11:58:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Good minimal distro today?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1535.1685633430.2653573.blinux-list@redhat.com>
In-Reply-To: <mailman.1535.1685633430.2653573.blinux-list@redhat.com>
Message-ID: <mailman.1533.1685638716.2653567.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93IG11Y2ggbWFjaGluZSBkbyBJIG5lZWQgdG8gcnVuIHNvbWUgdmVyc2lvbiBvZiBsaW51eD/C
oCBDYW4gSSBnZXQgCnNvbWV0aGluZyB0byBydW4gb24gYSAzODYgb3IgNDg2P8KgIE9yIG1heWJl
IEkgc2hvdWxkIGp1c3QgbWFrZSBhIERPUyAKbWFjaGluZT/CoCBUaGFua3MuCgpIb3dhcmQKCgpP
biA2LzEvMjAyMyAxMDoxOSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiBIaSBhbGwsIEkgd2FudCBhIGRpc3RybyB3aGljaCBpcyByZWxhdGl2ZWx5IHN0YWJs
ZSwgYnV0IG5vdCBoYXJkIHRvIAo+IGtlZXAgc29tZSBjb21wb25lbnRzIHVwIHRvIGRhdGUsIGVz
cGVjaWFsbHkgYWNjZXNzaWJpbGl0eSBjb21wb25lbnRzIAo+IGxpa2UgT3JjYSwgYXMgd2VsbCBh
cyBGaXJlZm94LiBJbiBwcmluY2lwbGUsIEkgZG9uJ3Qgd2FudCBhIGZ1bGwgCj4gZGVza3RvcCBl
bnZpcm9ubWVudCwganVzdCBlbm91Z2ggdG8gcnVuIEZpcmVmb3ggcGx1cyBPcmNhLCBhbmQgCj4g
cG9zc2libHkgb3RoZXIgZGVza3RvcCBhcHBzIGxhdGVyLiBJIGhhdmUgc3VjY2Vzc2Z1bGx5IHNl
dCB1cCAKPiByYXRwb2lzb24gYSBmZXcgeWVhcnMgYWdvIHdpdGggdGhlIGhlbHAgb2YgdGhlIFN0
cnljaG5pbmUgc2NyaXB0IAo+IGRldmVsb3BlZCBieSBTdG9ybSwgc28gbWF5YmUgdGhlIGVhc2ll
c3QgcGF0aCBpcyB0byBnZXQgaXQgYWdhaW4uCj4KPiBJJ2QgbGlrZSBvcGluaW9ucyBvbiB0aGUg
ZGlzdHJvIHRvIHVzZS4gQXJjaExpbnV4IGhhcyB0aGUgYWR2YW50YWdlIG9mIAo+IHJlcXVpcmlu
ZyBmZXcgZGlzayBzcGFjZSBhbmQgYWx3YXlzIGhhdmluZyB0aGUgbGF0ZXN0IHNvZnR3YXJlLCBi
dXQgCj4gSSd2ZSB0cmllZCBpdCBzb21lIHllYXJzIGFnbywgYW5kIGl0IGFwcGVhcnMgdG9vIHBy
b25lIHRvIGJyZWFrIAo+IHRoaW5ncywgZXNwZWNpYWxseSB0aGUgYXVkaW8gc3R1ZmYgZHVlIHRv
IGNvbnN0YW50IHVwZ3JhZGluZy4gSXMgaXQgCj4gc3RpbGwgdHJ1ZSB0b2RheT8gQW5vdGhlciBv
cHRpb24gaXMgRGViaWFuIHVuc3RhYmxlLCB3aGljaCBJJ3ZlIG5ldmVyIAo+IHRyaWVkLiBEb2Vz
IGl0IHVzZSB0byBicmVhayB0b28/IEkndmUgYWxzbyByZWFkIGFib3V0IFZvaWRMaW51eC4gSGFz
IAo+IGFueW9uZSB0cmllZCBpdCB5ZXQ/IEkga25vdyBhYm91dCBTbGludCBhcyB3ZWxsLCBidXQg
dGhlIG1hbnVhbCBzdGF0ZXMgCj4gdGhhdCBpdCByZXF1aXJlcyA1MCBnYiBkaXNrIHNwYWNlIGF0
IGxlYXN0LCBhbmQgSSdtIGN1cnJlbnRseSBvdXQgb2YgCj4gZGlzayBzcGFjZSwgYXJvdW5kIDE1
IGdiIGF0IG1vc3QuCj4KPiBUaGFua3MgZm9yIGNvbW1lbnRzLAo+IENsZXZlcnNvbgo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Ci0tIApJZiB0aGlzIHdl
cmUgYW4gYWN0dWFsIHRhZ2xpbmUsIGl0IF9taWdodF8gYmUgZnVubnkuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

