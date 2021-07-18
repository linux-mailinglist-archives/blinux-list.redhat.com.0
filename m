Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9A6F73CCA29
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 19:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626630943;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YiMhCu94SYodokJp9cvG4PpnLQqrA9cKZt6u6S8N/W8=;
	b=G7OttreEp0DXj4J++GEBElCwDPJIXyXovNlXDBZQwhvwIj3g3CjonnGW7J+Dm3TFRA2C3d
	iZTNfrxhuJ6m8VUvkyZpaIiOEmp8iN2l7j/LytQ7uEfK3uqRmjeRphzg5WuTSt3ka+U0En
	lnsZlp/2FKPOZOv1Mf8t4aIwgAthIpI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-FWk1hKQ3N7qe8hpLuL1EHQ-1; Sun, 18 Jul 2021 13:55:41 -0400
X-MC-Unique: FWk1hKQ3N7qe8hpLuL1EHQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ECBA0802C88;
	Sun, 18 Jul 2021 17:55:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B0EB18A9E;
	Sun, 18 Jul 2021 17:55:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3B0604EA2A;
	Sun, 18 Jul 2021 17:55:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16IHnGNH026936 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 13:49:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 48EE61121330; Sun, 18 Jul 2021 17:49:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 447F5112132C
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 17:49:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72A3780D2A9
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 17:49:12 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
	[209.85.167.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-577-zoVqNepMPECQOArBsf9dvg-1; Sun, 18 Jul 2021 13:49:10 -0400
X-MC-Unique: zoVqNepMPECQOArBsf9dvg-1
Received: by mail-oi1-f169.google.com with SMTP id p67so17993185oig.2
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 10:49:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=tYTYT2i+7G9vCIzqcWKONnwGdYqon72y5GVSccpPUoU=;
	b=mK7z0JpytOovD80dhMdhAKdGhiVuwlaa2bXheb5H4OuKDGLQ3j0qcYYdknhA4oy8IH
	MJFjegB1THXLp0k36vV0kxwu5NTPbm4BylMN8DCeJ9UIPdJZIKpPjhAnZd7gEJBddZRW
	0+DBIcOyopNxEk24Sup78/vLK2NAclp9WwlVrQRnFaQEPhctQo8B1U2KyjGYWeTCTsV9
	f7jfyAgGWcxODoUz11veISq/AY6pAQXYDH5kxnWXbTG3fw80E6s6CZcyb1DRDQx3xE6b
	VJP0OqWz2AEBmzOUkAFHmrSATHWghInVXXlnrGbFVzJpj5FbxkewnDq74qU+cIrn2kor
	PILA==
X-Gm-Message-State: AOAM531h0+cvdnS81MCZMPIGWJWHUHNGAOc56OtKmukzv2KW7e8ltETy
	hWiMRSL9dtoT1UiKyHmYaFr7aJmZNfQpyQ==
X-Google-Smtp-Source: ABdhPJzzBfva8BuXLrWsMW8kOY/ShHJhlWuv+X/1WxXAyNJnZLBUTvsp/aykQ7ELj92oqAh3NTNCaQ==
X-Received: by 2002:aca:7589:: with SMTP id q131mr18953990oic.76.1626630549246;
	Sun, 18 Jul 2021 10:49:09 -0700 (PDT)
Received: from ?IPv6:2600:1702:20f0:4420:ddf6:3517:183a:94f0?
	([2600:1702:20f0:4420:ddf6:3517:183a:94f0])
	by smtp.gmail.com with ESMTPSA id
	b26sm3150222otq.78.2021.07.18.10.49.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 18 Jul 2021 10:49:08 -0700 (PDT)
Subject: Re: espeak-ng on archlinux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2107181224250.27095@panix1.panix.com>
	<CAD_4ddQakvfMrjcA4gbcNGxMesnV4Ac0xLe4w7-yzVpTGLC5yg@mail.gmail.com>
	<alpine.NEB.2.23.451.2107181324090.12858@panix1.panix.com>
	<CAD_4ddTj4QJJ0afkXMVmb2mHY5pCHbJDtEb9u8XDx9Uorj7eZw@mail.gmail.com>
Message-ID: <fa580ca1-904b-9718-c183-89d3f6af3c72@gmail.com>
Date: Sun, 18 Jul 2021 13:49:07 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAD_4ddTj4QJJ0afkXMVmb2mHY5pCHbJDtEb9u8XDx9Uorj7eZw@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

SG93IGRpZSB5b3UgZ2V0IHRoaXMgc2NyaXB0IHdvcmtpbmc/wqAgSGF2ZSBub3QgdHJpZWQgaXQs
IGJ1dCB3YXMgCndvbmRlcmluZyBhYm91dCBpdCBzaW5jZSBpdCBleGhpc3QuCgpIaSwKCgoKCk9u
IDcvMTgvMjAyMSAzOjMxIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+IEhlbGxvIHRoZXJlLAo+Cj4gSSBoYXZlbid0IGNyZWF0ZWQgYW55IGVzcGVhay1uZy5z
ZXJ2aWNlIGZpbGUgdG8gbWFrZSBzeXN0ZW1kIHN0YXJ0IGl0IGF0Cj4gYm9vdCwgd2hlbiBzcGVl
Y2gtZGlzcGF0Y2hlciBzdGFydHMsIGVzcGVhay1uZyBzdGFydHMgYXMgd2VsbCBvciBzb21ldGhp
bmcuCj4gSSB1c2VkIGFyY2gncyBuZXcgZ3VpZGVkIGluc3RhbGwgc2NyaXB0LCBvciBhcmNoaW5z
dGFsbCwgd2hpY2ggc2ltcGxpZmllZCBhCj4gbG90IG9mIHRoaW5ncyBmb3IgbWUuCj4gSSB0cmll
ZCB3aXRoIHB1bHNlYXVkaW8gYW5kIHBpcGV3aXJlIGFuZCBpdCB3b3JrZWQgbm8gbWF0dGVyIHdo
YXQuCj4gSSBqdXN0IHVzZSBwaXBld2lyZSBiZWNhdXNlIEkgZmluZCBpdCBtb3JlIGxpa2FibGUu
Cj4gQmVzdCByZWdhcmRzLgo+IGZyYW5jaXNjby4KPgo+IE9uIFN1biwgSnVsIDE4LCAyMDIxIGF0
IDU6MjYgUE0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4gYmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPj4gVGhlIG9ubHkgaXRlbSBub3QgaW5zdGFsbGVkIHll
dCBpcyBwaXBld2lyZS4gIERpZCB5b3Ugd3JpdGUgYQo+PiBlc3BlYWstbmcuc2VydmljZSBmaWxl
IHRvIGJyaW5nIHVwIGVzcGVhay1uZyBvbiBib290IHVwPyAgSSBoYXZlbid0IGRvbmUKPj4gdGhh
dCB5ZXQgYW5kIGhhdmUgdG8gbWFudWFsbHkgc3RhcnQgaXQgYWZ0ZXIgbG9naW4uCj4+Cj4+Cj4+
IE9uIFN1biwgMTggSnVsIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+Cj4+PiBIZWxsbyB0aGVyZSwKPj4+Cj4+PiBJdCB3b3JrcyBmb3IgbWUgaGVyZS4K
Pj4+IERpZCB5b3UgaW5zdGFsbCBzcGVlY2gtZGlzcGF0Y2hlciwgYWxzYS11dGlscyBhbmQgYWxz
YS1wbHVnaW5zPyBEaWQgeW91Cj4+PiBpbnN0YWxsIHB1bHNlYXVkaW8gYW5kIGFsbCByZWxhdGVk
IHN0dWZmIGFzIHdlbGw/Cj4+PiBJIGFtIHVzaW5nIHBpcGV3aXJlIGhlcmUsIGJ1dCBpdCB3b3Jr
cyB3aXRob3V0IGEgaGl0Y2ggYW55d2F5cy4KPj4+IElmIHlvdSdyZSB0cnlpbmcgdG8gZ2V0IGEg
c2NyZWVuIHJlYWRlciBydW5uaW5nIG9uIHRoZSBncmFwaGljYWwgdXNlcgo+Pj4gaW50ZXJmYWNl
LCBtYWtlIHN1cmUgdG8gaW5zdGFsbCBvcmNhIGFzIHdlbGwuCj4+PiBCZXN0IHJlZ2FyZHMuCj4+
PiBGcmFuY2lzY28uCj4+Pgo+Pj4gT24gU3VuLCBKdWwgMTgsIDIwMjEgYXQgNDoyOSBQTSBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPj4+IGJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgo+Pj4KPj4+PiBJIGdvdCBlc3BlYWstbmcgcGFydGx5IHdvcmtpbmcgYnV0IG5v
dCBjb21wbGV0ZWx5Lgo+Pj4+IFdoZW4gSSBrZXkgYSBsaW5lIGluIGFuZCBoaXQgZW50ZXIsIGVz
cGVhay1uZyBzcGVha3Mgd2hhdCBJIGtleWVkIGluLgo+Pj4+IFRoYXQgaXMgYWxsIGVzcGVhay1u
ZyBkb2VzLiAgU28gZmFyIGFzIEkgY2FuIHRlbGwgbm8gZXNwZWFrLW5nLnNlcnZpY2UKPj4+PiBm
aWxlIGV4aXN0cyB0byBlbmFibGUgYW5kIHN0YXJ0IGVzcGVhay1uZyB3aGVuIHRoZSBzeXN0ZW0g
Ym9vdHMgZWl0aGVyLgo+Pj4+IEZpbmFsbHksIGlmIGR1cmluZyBhbiBhcmNobGludXggaW5zdGFs
bGF0aW9uIGVzcGVhay1uZyBpcyBpbnN0YWxsZWQKPj4gcmF0aGVyCj4+Pj4gdGhhbiBlc3BlYWsg
aXQncyBwb3NzaWJsZSBpdCdzIG5vdCBwdWxsaW5nIGRlcGVuZGVuY2llcyBlc3BlYWstbmcKPj4g
bmVlZHMgdG8KPj4+PiBzcGVhay4KPj4+PiBJdCB3b3VsZCBiZSBuaWNlIGlmIGVzcGVhay1uZyB3
b3VsZCBzcGVhayB3aGF0IHRoZSBjb21wdXRlciBwdXRzIHVwIG9uCj4+IHRoZQo+Pj4+IHNjcmVl
biBhZnRlciBJIHR5cGUgYSBjb21tYW5kIGJ1dCB0aGlzIGlzbid0IHlldCBoYXBwZW5pbmcgb3Zl
ciBoZXJlLgo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4+Cj4+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

