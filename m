Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D4D10383D21
	for <lists+blinux-list@lfdr.de>; Mon, 17 May 2021 21:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621279246;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fBgdkPgS1LKuYlgTNoX9M49fqUf6tu7GxSXSacqJp0I=;
	b=JUBhex27bR+9vhEdiYy+eGKz5PQ3wD/t6yD80YxcA214n3F4PqeWDJAprsuxvPJPIxzwUJ
	5kk/ot3SQ6Yt80ERn0/qMcl47At1bE6/PEuFUdyuASHd+jqYMAG7uXqNOtPD7ssu8GoUv3
	E43A3M7yw3h+ddE8BWNdJx0DCemhYKI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-537-d10rmDACMuW6ScKBg7R1_Q-1; Mon, 17 May 2021 15:20:44 -0400
X-MC-Unique: d10rmDACMuW6ScKBg7R1_Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 20325801107;
	Mon, 17 May 2021 19:20:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2373410074EF;
	Mon, 17 May 2021 19:20:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C45935534B;
	Mon, 17 May 2021 19:20:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14HJKRjZ019802 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 17 May 2021 15:20:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3E2B22082486; Mon, 17 May 2021 19:20:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38EC42080982
	for <blinux-list@redhat.com>; Mon, 17 May 2021 19:20:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9A5819124F6
	for <blinux-list@redhat.com>; Mon, 17 May 2021 19:20:24 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-430-Kp0mFIQjOsK5o4w9wKVcyg-1;
	Mon, 17 May 2021 15:20:21 -0400
X-MC-Unique: Kp0mFIQjOsK5o4w9wKVcyg-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 23A36A00B4
	for <blinux-list@redhat.com>; Mon, 17 May 2021 20:20:05 +0200 (CEST)
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
Message-ID: <16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
Date: Mon, 17 May 2021 21:19:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14HJKRjZ019802
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksIEkganVzdCBwb3N0ZWQgYSBsaW5rIHRvIHRoaXMgbWVzc2FnZSBpbnRlbmRlZCB0byBjaHJ5
cyAoRmVucmlyIAphdXRob3IpIG9uIHRoZSAjYTExeSBjaGFubmVsIG9mIGlyYy5saW51eC1hMTF5
Lm9yZy4KCk1heWJlIGpvaW4gaGltIHRoZXJlPwoKRGlkaWVyCgpMZSAxNy8wNS8yMDIxIMOgIDIw
OjE1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGVs
bG8gZXZlcnlvbmUsCj4gCj4gCj4gSSBqdXN0IGRvd25sb2FkZWQgZmVucmlyLWdpdCBmcm9tIHRo
ZSBBVVIgdXNpbmcgeWFvdXJ0Lgo+IAo+IFdoZW4gSSB0cnkgdG8gcnVuIGZlbnJpciB3aXRoIHRo
ZSBjb21tYW5kCj4gCj4gZmVucmlyCj4gCj4gaW4gYSB0ZXJtaW5hbCwgaG93IGV2ZXIsIGkgZ2V0
IGZlbnJpcidzIHN0YXJ0dXAgc291bmQsIGFuZCB0aGlzOgo+IAo+IAo+IFtmcmFuY2lzY29AQmx1
ZWJsaW5rIH5dJCBmZW5yaXIKPiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6
NDUuMzc0OiBFcnJvciBsb2FkaW5nIHBsdWdpbjogCj4gbGliaHNwZWxsLnNvLgo+IDA6IGNhbm5v
dCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+ICoq
IChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcg
cGx1Z2luOiAKPiBsaWJ2b2lra28uc28uCj4gMTogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBm
aWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5J
TkcgKio6IDIwOjEyOjQ1LjM3NzogRXJyb3IgbG9hZGluZyBwbHVnaW46IAo+IGxpYm51c3BlbGwu
c28KPiAuNDogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3Ig
ZGlyZWN0b3J5Cj4gCj4gCj4gQW55IGlkZWFzIG9uIGhvdyB0byBmaXggaXQsIGFuZCBubyBzcGVl
Y2ggZWl0aGVyLgo+IAo+IFRoYW5rIHlvdSBmb3IgYW55IGFuc3dlci4KPiAKPiBCZXN0IHJlZ2Fy
ZHMuCj4gCj4gRnJhbmNpc2NvLgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

