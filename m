Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F478461B8A
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 17:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638202141;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UKEc841B0bRCCsqyiiB4ep8uojzvXa+vMqCblVp0hjk=;
	b=WKFGxg7nilDhdLs8o+tOnf3Tx2+xjMZvYeq/B05a4orsIqXh+je+Ui+LqFk8kDwx/EGdi9
	Mcnng3Zie8pZ59QuDn9lDp3Jqo+KBM6Ewg9oiy0OlUzE0YFi5Uozi4ianyph+vXUZmOYJo
	BJE01GM/E5qWS8ZDyIac8u8R5yIFoFQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-565-9y0C7Q8RPHupUXqXCPPVbw-1; Mon, 29 Nov 2021 11:08:59 -0500
X-MC-Unique: 9y0C7Q8RPHupUXqXCPPVbw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8E61485B660;
	Mon, 29 Nov 2021 16:08:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A324345D62;
	Mon, 29 Nov 2021 16:08:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9A6E44BB7C;
	Mon, 29 Nov 2021 16:08:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATG8otI014266 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 11:08:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3E4FF4047279; Mon, 29 Nov 2021 16:08:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39F0B4047272
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 16:08:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 21B1B811E78
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 16:08:50 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-368-bN2iGHZXM-KOptg1QJvH8w-1;
	Mon, 29 Nov 2021 11:08:47 -0500
X-MC-Unique: bN2iGHZXM-KOptg1QJvH8w-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 90B4AA4056
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:08:04 +0100 (CET)
Message-ID: <642a1acd-2f43-8a0f-ecd9-83a0f02021c5@slint.fr>
Date: Mon, 29 Nov 2021 17:08:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: --force-renderer-accessibility not working lately
To: blinux-list@redhat.com
References: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
	<4535e52f-a043-b8fa-696c-9908f73a1523@gmail.com>
	<9fa55c55-42e2-c4e8-2ef1-21ccd5cf9259@gmail.com>
	<a30dcba5-400c-0c89-4d6c-1de03ef9af34@gmail.com>
In-Reply-To: <a30dcba5-400c-0c89-4d6c-1de03ef9af34@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ATG8otI014266
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SW4gU2xpbnQgYWNjZXNzaWJpbGl0eSB2YXJpYWJsZXMgYXJlIHNldCBpbiB+Ly5wcm9maWxlIHdo
ZW4gdHlwaW5nOgpvcmNhLW9uCkkgd2lsbCBhZGQgdGhpcyBzZXR0aW5nIGluIG5leHQgT3JjYSBw
YWNrYWdlLgoKQ2hlZXJzLApEaWRpZXIKCkxlIDI5LzExLzIwMjEgw6AgMTY6NDUsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBObyBpZGVhLCBJJ20gYXNz
dW1pbmcgb24gcmVib290IGl0IHBpY2tlZCB1cCB0aGUgdmFyaWFibGUgYmVpbmcgc2V0IAo+IHJp
Z2h0IGFuZCBpdCB0b29rIGEgcmVib290IHRvIHBpY2sgdXAgb24gaXQuCj4gCj4gSGV5IGl0IHdv
cmtzLMKgIGRvbid0IGtub2NrIGl0IHJlYWxseQo+IAo+IE9uIDExLzI5LzIxIDE1OjQwLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBPaywgaW50ZXJlc3Rpbmcs
IGFmdGVyIHJlYm9vdGluZyBteSBzeXN0ZW0gaXQgaXMgd29ya2luZyBhcyBleHBlY3RlZC4gCj4+
IFdoYXQgdGhlIGhlbGw/Cj4+Cj4+Cj4+IFdhcm0gcmVnYXJkcywKPj4KPj4gQnJhbmR0IFN0ZWVu
a2FtcAo+Pgo+PiBTZW50IGZyb20gdGhlIEZlZG9yYSBtYWNoaW5lLCB1c2luZyBUaHVuZGVyYmly
ZAo+Pgo+PiBPbiAyMDIxLzExLzI5IDE3OjI1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4gRG8geW91IGhhdmUgdGhlIHJpZ2h0IGVudmlyb25tZW50IHZhcmlh
YmxlcyBzZXQ/IEluIG15IC5iYXNocmMgSSBoYXZlCj4+Pgo+Pj4KPj4+IGV4cG9ydCBBQ0NFU1NJ
QklMSVRZX0VOQUJMRUQ9MQo+Pj4KPj4+Cj4+PiBJbiBpdC4gVGhhdCBtYWtlcyBDaHJvbWl1bSBi
YXNlZCB0aGluZ3Mgd29yayBvbiBBcmNoL1VidW50dSBmb3IgbWUKPj4+Cj4+PiBPbiAxMS8yOS8y
MSAxNToxMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBI
aSBhbGwsCj4+Pj4KPj4+Pgo+Pj4+IEkgaGF2ZSB0cmllZCB0aGlzIGluIGJvdGggU2xpbnQgYW5k
IEZlZG9yYSwgYW5kIEkndmUgbm90IGhhZCBhbnkgCj4+Pj4gbHVjayBtYWtpbmcgdGhlIC0tZm9y
Y2UtcmVuZGVyZXItYWNjZXNzaWJpbGl0eSBmbGFnIHdvcmsgd2l0aCBlaXRoZXIgCj4+Pj4gR29v
Z2xlLUNocm9tZSBvciBTa3lwZSwgYm90aCBhcHBsaWNhdGlvbnMgZm9yIHdoaWNoIHRoaXMgZmxh
ZyB1c2UgdG8gCj4+Pj4gd29yayB2ZXJ5IHdlbGwgaW4gdGhlIHBhc3QuCj4+Pj4KPj4+Pgo+Pj4+
IEFtIEkgbWlzc2luZyBzb21ldGhpbmcsIG9yIGFtIEkganVzdCBvdXQgb2YgbHVjayBoZXJlLgo+
Pj4+Cj4+Pj4KPj4+PiBVbmZvcnR1bmF0ZWx5LCBJIGFjdHVhbGx5IG5lZWQgdGhpcyB0byB3b3Jr
LCBvdGhlcndpc2UsIEknbGwganVzdCAKPj4+PiBoYXZlIHRvIHVzZSB0aGUgTWFjQm9vayB0byBk
byBteSBqb2IuCj4+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

