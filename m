Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id DA95F387E13
	for <lists+blinux-list@lfdr.de>; Tue, 18 May 2021 18:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621357123;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ukDdi8FJMS89UwXB57bNvHSiEKuhGR6DH4m8kjPJqCo=;
	b=KrWRYK8CIoJ+cSc21arCh9oIUr4NE2L8l6NB4rx43G9TjB1yVptNcLtE2P3pIgGiVSZ+LK
	NGNXEQUwD0nOUZ4pp3qKRq+PeoP/8c9/Qdw2C89vmtPgy+iZnrAPEHug9GVxLwIM+jPxEL
	jSli2DTPBFirTwSDdHfWH0ctSKwIp8k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-171-5sBaGcNDM3OLGFK2v6bR8A-1; Tue, 18 May 2021 12:58:40 -0400
X-MC-Unique: 5sBaGcNDM3OLGFK2v6bR8A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68318107ACE6;
	Tue, 18 May 2021 16:58:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D0BB75D6AB;
	Tue, 18 May 2021 16:58:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 174221801262;
	Tue, 18 May 2021 16:58:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14IGqPdU010578 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 12:52:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3FC751112C22; Tue, 18 May 2021 16:52:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A7211112C09
	for <blinux-list@redhat.com>; Tue, 18 May 2021 16:52:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9ECCB80014A
	for <blinux-list@redhat.com>; Tue, 18 May 2021 16:52:21 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-433-tPyGPif0PPCjkTOj41e5tQ-1; Tue, 18 May 2021 12:52:19 -0400
X-MC-Unique: tPyGPif0PPCjkTOj41e5tQ-1
Received: by mail-wr1-f48.google.com with SMTP id h4so10962247wrt.12
	for <blinux-list@redhat.com>; Tue, 18 May 2021 09:52:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=TdbPiVoJdYEeQz9m+Yco54Dfqjp8KaxuTJpvPDmajlw=;
	b=uByjcLHmcUQjY5/53sbpkbun37BLJsO8a/ahK43HDtQS23lmwIIVZoByMzGbJ1HU/I
	+47M5eV8R8A4z6Lfv9JkNfXzrH+af7vpg2t5ovUM2XjXOzMdZNr0qnXXqDcgkQ9TR81z
	YQewCKNl614DReXCcw4q78tH1OSq8yj2qK2puvG2inHPBYekTt6CHM5K6yF3ulZW8ksR
	fGiHRfl1yTpp8UMf/hD/Zqkm+Wq3fSLEkBHuzqZgk9aEblz1ftupBaQLxRq9nLuJMFZG
	CUYKtwFjgndauoO2GsLClf+JV4BprcQ+fVGYNLDHXxOOIqZZherAby3+LtCXHXTDynv8
	Odhw==
X-Gm-Message-State: AOAM531WwgLPhBR/I9AtyK+miV5y73KcHdrgPc2dmhB1l1SYHKModarm
	etp0anzqnGxU3oSD2HSASFudo1Y/7m+/7A==
X-Google-Smtp-Source: ABdhPJybz6VDuNCa/Fc9Ui5UPXO8QsnqwmAgxp1gxxaZRzwYMZ9vvkxnwAOTBk4eK6218Ae5I8ucjw==
X-Received: by 2002:a5d:4946:: with SMTP id r6mr1005400wrs.123.1621356737819; 
	Tue, 18 May 2021 09:52:17 -0700 (PDT)
Received: from [192.168.1.5] (net-2-36-138-168.cust.vodafonedsl.it.
	[2.36.138.168]) by smtp.gmail.com with ESMTPSA id
	a19sm15583852wmb.40.2021.05.18.09.52.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 18 May 2021 09:52:17 -0700 (PDT)
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
Message-ID: <76d051a3-abec-5852-eab0-01930524a21c@gmail.com>
Date: Tue, 18 May 2021 18:52:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgdGhlcmUsCgoKRG8gSSBuZWNlc3NhcmlseSBoYXZlIHRvIGhhdmUgcHVsc2VhdWRpbz8gY2Fu
J3QgSSBtYW5hZ2Ugd2l0aCBwaXBld2lyZT8KCkkgcmFuIHRoZSBzY3JpcHRzLCBhbmQgaSBkaWQg
aGVhciBmZW5yaXIncyBzdGFydHVwIHNvdW5kIGljb24sIGJ1dCBvbmx5IAp3aGVuIHJ1bm5pbmcg
RmVucmlyIGFzIGN1cnJlbnQgdXNlciwgbm90IGFzIHJvb3QsIGV2ZW4gYWZ0ZXIgcnVubmluZyB0
aGUgCnNjcmlwdCB5b3Ugc3VnZ2VzdGVkLgoKVGhhbmtzIGFnYWluLgoKQmVzdCByZWdhcmRzLgoK
RnJhbmNpc2NvLgoKT24gNS8xOC8yMSA1OjA2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+IEhvd2R5LAo+Cj4gZG8geW91IGhhdmUgdGhlIHJlcXVpcmVtZW50
cyBmb3IgdGhlIGdlbmVyaWMgc291bmQgLyB2b2ljZSBkcml2ZXJzIAo+IGluc3RhbGxlZD8KPiBU
byBnZXQgc3VyZSwgcmVpbnN0YWxsIGl0IGV4ZWN1dGU6Cj4gc3VkbyBwYWNtYW4gLVMgc294IGVz
cGVhay1uZyB4Y2xpcAo+Cj4gc294IGlzIHVzZWQgZm9yIHBsYXkgc291bmQsIGVzcGVhayBmb3Ig
dm9pY2Ugb3V0cHV0IGluIHRoZSBkZWZhdWx0IAo+IGNvbmZpZ3VyYXRpb24sIHhjbGlwIGlzIGEg
ZnVubnkgdG95IHRvIGxldCBmZW5yaXIgc2hhcmUgdGhlIGNsaXBib2FyZCAKPiBiZXR3ZWVuIHlv
dXIgR1VJIGFuZCBUZXJtaW5hbC4KPgo+IHN0YXJ0IGZlbnJpciBmb3IgdGVzdGluZyBpbiBmb3Jl
Z3JvdW5kIC0geW91IGNhbiBzdG9wIGl0IHVzaW5nIENUUkwgKyBDCj4gc3VkbyBmZW5yaXIKPgo+
IGRpZCB5b3UgaGVhciB0aGUgc3RhcnR1cCBzb3VuZD8gZmVucmlyIHBsYXlzIGEgbGl0dGxlIHNv
dW5kaWNvbiBhdCAKPiBzdGFydHVwLgo+Cj4gaWYgbm90LCB0aGVuIHB1bHNlYXVkaW8gaXMgbm90
IGNvbmZpZ3VyZWQuCj4gc2hvcnQgc3RvcnkgZXhlY3V0ZToKPiAjIGNvbmZpZ3VyZSB1c2VyCj4g
L3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFkZXIvdG9vbHMvY29uZmlndXJlX3B1bHNlLnNoCj4g
IyBjb25maWd1cmUgcm9vdAo+IHN1ZG8gL3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFkZXIvdG9v
bHMvY29uZmlndXJlX3B1bHNlLnNoCj4KPiAjIG5lZWQgdG8gcmVzdGFydCB0aGF0IHRoZSBjb25m
aWd1cmF0aW9uIGZvciBib3RoIGdldCBhY3RpdmUKPgo+IHJlc3RhcnQKPgo+IHRoZW4gcmV0cnkK
Pgo+IHN1ZG8gZmVucmlyCj4KPiBsb25nIHN0b3JyeTogZmVucmlyIG5lZWRzIGJ5IGRlZmF1bHQg
dG8gcnVuIGFzIHJvb3QgdG8gY29sbGVjdCB0aGUgCj4gZGF0YSBvbiB5b3VyIHNjcmVlbiBvciBj
YXB1dHJlIHRoZSBpbnB1dCBkZXZpY2VzLiBpZiBmZW5yaXIgc3BlYWtzIG9yIAo+IGNyZWF0ZXMg
c291bmQsIGl0IGRvZXMgdGhpcyBhcyByb290IHVzZXIuIHlvdSB3b250IGhlYXIgc291bmQgb2Yg
YW4gCj4gb3RoZXIgdXNlciBieSBwdWxzZWF1ZGlvIChzb3VuZCBzZXJ2ZXIpIGRlc2lnbi4gV2Ug
bmVlZCB0byB0cmFuc3BvcnQgCj4gdGhlIHNvdW5kIGNyZWF0ZWQgYXMgcm9vdCB0byB0aGUgc291
bmQgc2VydmVyIHlvdSBoYXZlIHJ1bm5pbmcgYXMgdXNlciAKPiB0byBmaW5hbGx5IGhlYXIgdGhl
IHNvdW5kLgo+Cj4gZmVucmlyIHByb3ZpZGVzIDIgc2NyaXB0cyAoc2VlIGFib3ZlKSB0byBjb25m
aWd1cmUgdGhlIHJvb3QgcHVzZSBhdWRpbyAKPiB0byBzZW5kIHRoZSBkYXRhIHRvIHlvdXIgdXNl
ciBhbmQgY29uZmlndXJlIHVzZXIgcHVsc2UgYXVkaW8gdG8gbGlzdGVuIAo+IHRvIHRoZSBzb3Vu
ZCBzZW50IGJ5IHJvb3QgYW5kIHBsYXkgaXQuCj4KPiBjaGVlcnMgY2hyeXMKPgo+Cj4gMTguMDUu
MjEgdW0gMTQ6NDYgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+
Cj4+IEhlbGxvIHRoZXJlLAo+Pgo+Pgo+PiBUaGFua3Mgc28gbXVjaCwgbm93LCB0aGF0IHBhcnQg
b2YgdGhlIHByb2JsZW0gaXMgc29sdmVkIQo+Pgo+PiBUaGUgb3RoZXIgcGFydCwgaG93IGV2ZXIs
IHRoYXQgaXMgbm90IHNvbHZlZCwgaXMgdGhhdCBmZW5yaXIgZG9lc24ndCAKPj4gc3BlYWsgd2l0
aCBlc3BlYWssIG9yIGVzcGVhay1uZy4KPj4KPj4gRG8gSSBoYXZlIHRvIHNldCBzb21ldGhpbmcg
c29tZXdoZXJlIGZvciB0aGF0IHRvIGhhcHBlbj8KPj4KPj4gVGhhbmtzIGFnYWluLgo+Pgo+PiBC
ZXN0IHJlZ2FyZHMuCj4+Cj4+IEZyYW5jaXNjby4KPj4KPj4gT24gNS8xOC8yMSAxMDoyNCBBTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhvd2R5IEZyYW5j
aXNjbywKPj4+Cj4+PiBpIGRvbnQga25vdyB3aHkgdGhvc2UgbGlicyBhcmUgbm90IGFuIGRlcGVu
ZGVuY3kgYnkgcHl0aG9uLXB5ZW5jaGFudCAKPj4+IGlmIHRob3NlIGFyZSBzcHJlYWQgd2Fybmlu
Z3MuIE1heWJlIHRoaXMgc2hvdWxkIGJlIHJlcG9ydGVkIHRvIHRoZSAKPj4+IHBhY2thZ2UgbWFp
bnRhaW5lci4gQnV0IGFueXdheS4KPj4+Cj4+PiB5b3UgY2FuIGFzayBwYWNtYW4gd2hhdCBwYWNr
YWdlIGNvbnRhaW5zIHRoZSBzcGVjaWZpYyBmaWxlIHlvdSBuZWVkIAo+Pj4gYnkgInN1ZG8gcGFj
bWFuIC1GeSBmaWxlbmFtZSIuIGhlcmUgaSBkaWQgdGhpcyBmb3IgZm9yIGV4YW1wbGUgaW4gCj4+
PiBsaWJ2b2trby5zbzoKPj4+Cj4+PiAxMDoxNCBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkIHN1
ZG8gcGFjbWFuIC1GeSBsaWJ2b2lra28uc28KPj4+IFtzdWRvXSBQYXNzd29ydCBmw7xyIGNocnlz
Ogo+Pj4gOjogU3luY2hyb25pc2llcmUgUGFrZXRkYXRlbmJhbmtlbi4uLgo+Pj4gwqBjb3JlIDkw
Myw1IEtpQsKgIDYsMTcgTWlCL3MgMDA6MDAgCj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI10gCj4+PiAx
MDAlCj4+PiDCoGV4dHJhIDksMyBNaULCoCAyNiw5IE1pQi9zIDAwOjAwIAo+Pj4gWyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyNdIAo+Pj4gMTAwJQo+Pj4gwqBjb21tdW5pdHkgMjIsOCBNaULCoCAyOSw2IE1pQi9z
IDAwOjAxIAo+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+Pj4gMTAwJQo+Pj4gwqBtdWx0aWxpYiAy
MjIsNSBLaULCoCAxMiw4IE1pQi9zIDAwOjAwIAo+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+Pj4g
MTAwJQo+Pj4gZXh0cmEvbGlidm9pa2tvIDQuMy4xLTEKPj4+IMKgwqDCoCB1c3IvbGliL2xpYnZv
aWtrby5zbwo+Pj4gMTA6MTUgW2NocnlzQGJsYWNrYmVhc3Qgfl0gOikgJAo+Pj4KPj4+IHNvIHRo
ZSBwYWNrYWdlIHlvdSBuZWVkIGZvciBsaWJ2b2trby5zbyBpcyAibGlidm9pa2tvIgo+Pj4gdG8g
c2lsZW5jZSBvdXQgYWxsIHRoZSB3YXJuaW5ncyBkbyB0aGlzOgo+Pj4gc3VkbyBwYWNtYW4gLVMg
bGlidm9pa2tvIG51c3BlbGwgaHNwZWxsCj4+Pgo+Pj4gdGhpcyBpbnN0YWxsIGFsbCAzIChJTU8g
b3B0aW9uYWwgZGVwZW5kZW5jeSdzLCB3aGF0IHNob3VsZCBub3QgCj4+PiBjcmVhdGUgYSB3YXJu
aW5nLCBidXQgd2VsbCwgaXQgaXMgbGlrZSBpdCBpcykKPj4+Cj4+PiBpIHVzZSBpcnNzaSBhcyBJ
UkMgKGNvbW1hbmRsaW5lKSBjbGllbnQuIHRoZXJlIGlzIGFsc28gUGlkZ2luIChhcyAKPj4+IGdy
YXBoaWNhbCBjbGllbnQpLiBib3RoIGFyZSB2ZXJ5IG5pY2UuCj4+Pgo+Pj4gbG9va2luZyBmb3J3
YXJkIHRvIHNlZSB5b3UgaW4gSVJDIDopLgo+Pj4KPj4+IGNoZWVycyBjaHJ5cwo+Pj4KPj4+Cj4+
PiBBbSAxOC4wNS4yMSB1bSAwODo1NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb246Cj4+Pj4gSGVsbG8gdGhlcmUsCj4+Pj4KPj4+Pgo+Pj4+IEkgbWFuYWdlZCB0byBp
bnN0YWxsIG9uZSBvZiB0aGUgbGlicmFyaWVzLCBidXQgbm90IHRoZSBvdGhlciB0d28sIAo+Pj4+
IHNvIHRoYW5rcyBmb3IgdGhhdC4KPj4+Pgo+Pj4+IEFsc28sIHRoYW5rcyBmb3Igc3VnZ2VzdGlu
ZyB0byB1c2UgeWF5LCBJIGp1c3QgaW5zdGFsbGVkIGl0LCBJIAo+Pj4+IGRpZG4ndCBrbm93IHlh
b3VydCB3YXMgZGVwcmVjYXRlZC4KPj4+Pgo+Pj4+IE15IHF1ZXN0aW9uIG5vdyBpcywgYW5kIHRo
aXMnbGwgYmUgZHVtLCB3aGF0IGFyZSByZWNvbW1lbmRlZCBJUkMgCj4+Pj4gY2xpZW50cz8gaG93
IGRvIEkgZ2V0IHRoZW0gd29ya2luZz8gd2hhdCBzaG91bGQgSSBrbm93IGJlZm9yZSAKPj4+PiBq
b2luaW5nIGFuIElSQyBjaGFubmVsLCB3aGF0IGV2ZXIgaXQgbWlnaHQgYmU/Cj4+Pj4KPj4+PiBU
aGFua3MgYWdhaW4uCj4+Pj4KPj4+PiBCZXN0IHJlZ2FyZHMuCj4+Pj4KPj4+PiBGcmFuY2lzY28u
Cj4+Pj4KPj4+PiBPbiA1LzE3LzIxIDk6MTkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4+Pj4+IEhpLCBJIGp1c3QgcG9zdGVkIGEgbGluayB0byB0aGlzIG1l
c3NhZ2UgaW50ZW5kZWQgdG8gY2hyeXMgKEZlbnJpciAKPj4+Pj4gYXV0aG9yKSBvbiB0aGUgI2Ex
MXkgY2hhbm5lbCBvZiBpcmMubGludXgtYTExeS5vcmcuCj4+Pj4+Cj4+Pj4+IE1heWJlIGpvaW4g
aGltIHRoZXJlPwo+Pj4+Pgo+Pj4+PiBEaWRpZXIKPj4+Pj4KPj4+Pj4gTGUgMTcvMDUvMjAyMSDD
oCAyMDoxNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+
Pj4+Pj4gSGVsbG8gZXZlcnlvbmUsCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEkganVzdCBkb3dubG9h
ZGVkIGZlbnJpci1naXQgZnJvbSB0aGUgQVVSIHVzaW5nIHlhb3VydC4KPj4+Pj4+Cj4+Pj4+PiBX
aGVuIEkgdHJ5IHRvIHJ1biBmZW5yaXIgd2l0aCB0aGUgY29tbWFuZAo+Pj4+Pj4KPj4+Pj4+IGZl
bnJpcgo+Pj4+Pj4KPj4+Pj4+IGluIGEgdGVybWluYWwsIGhvdyBldmVyLCBpIGdldCBmZW5yaXIn
cyBzdGFydHVwIHNvdW5kLCBhbmQgdGhpczoKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gW2ZyYW5jaXNj
b0BCbHVlYmxpbmsgfl0kIGZlbnJpcgo+Pj4+Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcg
Kio6IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9hZGluZyAKPj4+Pj4+IHBsdWdpbjogbGliaHNwZWxs
LnNvLgo+Pj4+Pj4gMDogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZp
bGUgb3IgZGlyZWN0b3J5Cj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6
MTI6NDUuMzc0OiBFcnJvciBsb2FkaW5nIAo+Pj4+Pj4gcGx1Z2luOiBsaWJ2b2lra28uc28uCj4+
Pj4+PiAxOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBk
aXJlY3RvcnkKPj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4z
Nzc6IEVycm9yIGxvYWRpbmcgCj4+Pj4+PiBwbHVnaW46IGxpYm51c3BlbGwuc28KPj4+Pj4+IC40
OiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3Rv
cnkKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gQW55IGlkZWFzIG9uIGhvdyB0byBmaXggaXQsIGFuZCBu
byBzcGVlY2ggZWl0aGVyLgo+Pj4+Pj4KPj4+Pj4+IFRoYW5rIHlvdSBmb3IgYW55IGFuc3dlci4K
Pj4+Pj4+Cj4+Pj4+PiBCZXN0IHJlZ2FyZHMuCj4+Pj4+Pgo+Pj4+Pj4gRnJhbmNpc2NvLgo+Pj4+
Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Pgo+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

