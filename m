Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 60A7638C5E0
	for <lists+blinux-list@lfdr.de>; Fri, 21 May 2021 13:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621597307;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Mxnhf+V2dG9eYnlAyc3kjbYIps2htjL7Hh4BzEse/l8=;
	b=U6oFRzBdq24jAKrxLqpXionje6Rg35zKlVdzm9vNt7cSLFBacubXwY8ngZIto4ae594Zpt
	AxbuBbJAnCvY8aSxksy3ZAkwkGtuB+83SxQZZkqWepN9ZimCWdgKMJClfy66gC2BOtAxOB
	pZRgWpfUaxHHOx7dKwZiKcxPt7jeL1Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-PRUX0lalNsqMBNrJQYGnIw-1; Fri, 21 May 2021 07:41:45 -0400
X-MC-Unique: PRUX0lalNsqMBNrJQYGnIw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 876138186E5;
	Fri, 21 May 2021 11:41:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A09B60C17;
	Fri, 21 May 2021 11:41:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 430F21801028;
	Fri, 21 May 2021 11:41:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14LBfc8E023869 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 07:41:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 35E692051B81; Fri, 21 May 2021 11:41:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3169F2051B7B
	for <blinux-list@redhat.com>; Fri, 21 May 2021 11:41:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B57B833A00
	for <blinux-list@redhat.com>; Fri, 21 May 2021 11:41:35 +0000 (UTC)
Received: from smtprelay04.ispgateway.de (smtprelay04.ispgateway.de
	[80.67.18.16]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-427-FL1fXPFrOMWvj29ReJ9vMQ-1; Fri, 21 May 2021 07:41:33 -0400
X-MC-Unique: FL1fXPFrOMWvj29ReJ9vMQ-1
Received: from [37.4.229.143] (helo=[192.168.178.104])
	by smtprelay04.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1lk3WE-0002fy-5F
	for blinux-list@redhat.com; Fri, 21 May 2021 13:40:42 +0200
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
	<760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
	<1dbd65b0-0837-f81b-035d-00f30245cbe0@gmail.com>
Message-ID: <889d2b70-ee26-f08c-1850-95e31065788a@linux-a11y.org>
Date: Fri, 21 May 2021 13:41:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <1dbd65b0-0837-f81b-035d-00f30245cbe0@gmail.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgp3ZWxsIHJlbW92aW5nIGVzcGVhayBpcyBub3QgdGhlIHBvaW50IDopLCBpbnN0YWxs
aW5nIGVzcGVhay1uZyB3YXMgdGhlIAptYWluIHBvaW50LgoKQW0gMjEuMDUuMjEgdW0gMTM6Mzgg
c2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+IEhlbGxvIHRoZXJl
LAo+Cj4KPiByZW1vdmluZyBlc3BlYWsgZG9lc24ndCBmaXggaXQsIHRoZSBzYW1lIHByb2JsZW0g
c3RpbGwgcGVyc2lzdHMuCj4KPiBCZXN0IHJlZ2FyZHMuCj4KPiBGcmFuY2lzY28uCj4KPgo+IE9u
IDUvMjEvMjEgMTI6MzYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+IEhvd2R5Cj4+Cj4+PiBJIGhhdmUgZXNwZWFrLCBzb3gsIGFuZCB4Y2xpcCBpbnN0YWxs
ZWQsIHBsdXMgcHVsc2VhdWRpbywgCj4+PiBwdWxzZWF1ZGlvLWFsc2EsIGFsc2EtdXRpbHMgYW5k
IHBsdWdpbnMuIAo+PiBlc3BlYWstbmcgaXMgdXNlZCBieSBkZWZhdWx0IGluc3RlYWQgb2YgZXNw
ZWFrLiBlc3BlYWstbmcgaXMgdGhlIAo+PiBzdWNjZXNzb3Igb2YgZXNwZWFrLiBkbyB0YWtlIGNh
cmUgdG8gbm90IGluc3RhbGwgZXNwZWFrIGJ1dCBlc3BlYWstbmcgCj4+IGFuZCBnaXZlIGFub3Ro
ZXIgc2hvdCA6KS4KPj4KPj4KPj4gQW0gMjEuMDUuMjEgdW0gMTE6NDcgc2NocmllYiBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4gSGVsbG8gdGhlcmUsCj4+Pgo+Pj4KPj4+
IEp1c3QgZm9yIHRoZSBoZWNrIG9mIGl0LCBJIHJlZGlkIGEgY2xlYW4gaW5zdGFsbCBvZiBhcmNo
IHdpdGggCj4+PiBwdWxzZWF1ZGlvIHRoaXMgdGltZSwgYW5kIEkgY29uZmlndXJlZCBldmVyeXRo
aW5nIEkgbmVlZGVkIHJ1bm5pbmcgCj4+PiB0aGUgc2ggc2NyaXB0IHlvdSBpbmRpY2F0ZWQuCj4+
Pgo+Pj4gSXQgaGFsZiB3b3JrcywgYW5kIGhhbGYgZG9lc24ndC4KPj4+Cj4+PiBXaGF0IEkgbWVh
biBieSB0aGF0IGlzIHRoYXQgd2hlbiBJIHJlc3RhcnRlZCB0aGUgbWFjaGluZSwganVzdCBhIGZl
dyAKPj4+IHNlY29uZHMgYWdvIGFuZCByYW4gZmVucmlyIGFzIHN1ZG9lciwgaXQgcGxheWVkIHRo
ZSBzb3VuZCBpY29uLCAKPj4+IHRoaW5nIHRoYXQgd2l0aCBwaXBld2lyZSBkaWRuJ3QgaGFwcGVu
LCBidXQgZ2F2ZSBtZSBubyBzcGVlY2ggYXQgYWxsLgo+Pj4KPj4+IEkgaGF2ZSBlc3BlYWssIHNv
eCwgYW5kIHhjbGlwIGluc3RhbGxlZCwgcGx1cyBwdWxzZWF1ZGlvLCAKPj4+IHB1bHNlYXVkaW8t
YWxzYSwgYWxzYS11dGlscyBhbmQgcGx1Z2lucy4KPj4+Cj4+PiBBbnkgc3VnZ2VzdGlvbnM/Cj4+
Pgo+Pj4gVGhhbmtzIGFnYWluLgo+Pj4KPj4+IEJlc3QgcmVnYXJkcy4KPj4+Cj4+PiBGcmFuY2lz
Y28uCj4+Pgo+Pj4gT24gNS8xOC8yMSA1OjA2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+Pj4+IEhvd2R5LAo+Pj4+Cj4+Pj4gZG8geW91IGhhdmUgdGhlIHJl
cXVpcmVtZW50cyBmb3IgdGhlIGdlbmVyaWMgc291bmQgLyB2b2ljZSBkcml2ZXJzIAo+Pj4+IGlu
c3RhbGxlZD8KPj4+PiBUbyBnZXQgc3VyZSwgcmVpbnN0YWxsIGl0IGV4ZWN1dGU6Cj4+Pj4gc3Vk
byBwYWNtYW4gLVMgc294IGVzcGVhay1uZyB4Y2xpcAo+Pj4+Cj4+Pj4gc294IGlzIHVzZWQgZm9y
IHBsYXkgc291bmQsIGVzcGVhayBmb3Igdm9pY2Ugb3V0cHV0IGluIHRoZSBkZWZhdWx0IAo+Pj4+
IGNvbmZpZ3VyYXRpb24sIHhjbGlwIGlzIGEgZnVubnkgdG95IHRvIGxldCBmZW5yaXIgc2hhcmUg
dGhlIAo+Pj4+IGNsaXBib2FyZCBiZXR3ZWVuIHlvdXIgR1VJIGFuZCBUZXJtaW5hbC4KPj4+Pgo+
Pj4+IHN0YXJ0IGZlbnJpciBmb3IgdGVzdGluZyBpbiBmb3JlZ3JvdW5kIC0geW91IGNhbiBzdG9w
IGl0IHVzaW5nIENUUkwgCj4+Pj4gKyBDCj4+Pj4gc3VkbyBmZW5yaXIKPj4+Pgo+Pj4+IGRpZCB5
b3UgaGVhciB0aGUgc3RhcnR1cCBzb3VuZD8gZmVucmlyIHBsYXlzIGEgbGl0dGxlIHNvdW5kaWNv
biBhdCAKPj4+PiBzdGFydHVwLgo+Pj4+Cj4+Pj4gaWYgbm90LCB0aGVuIHB1bHNlYXVkaW8gaXMg
bm90IGNvbmZpZ3VyZWQuCj4+Pj4gc2hvcnQgc3RvcnkgZXhlY3V0ZToKPj4+PiAjIGNvbmZpZ3Vy
ZSB1c2VyCj4+Pj4gL3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFkZXIvdG9vbHMvY29uZmlndXJl
X3B1bHNlLnNoCj4+Pj4gIyBjb25maWd1cmUgcm9vdAo+Pj4+IHN1ZG8gL3Vzci9zaGFyZS9mZW5y
aXJzY3JlZW5yZWFkZXIvdG9vbHMvY29uZmlndXJlX3B1bHNlLnNoCj4+Pj4KPj4+PiAjIG5lZWQg
dG8gcmVzdGFydCB0aGF0IHRoZSBjb25maWd1cmF0aW9uIGZvciBib3RoIGdldCBhY3RpdmUKPj4+
Pgo+Pj4+IHJlc3RhcnQKPj4+Pgo+Pj4+IHRoZW4gcmV0cnkKPj4+Pgo+Pj4+IHN1ZG8gZmVucmly
Cj4+Pj4KPj4+PiBsb25nIHN0b3JyeTogZmVucmlyIG5lZWRzIGJ5IGRlZmF1bHQgdG8gcnVuIGFz
IHJvb3QgdG8gY29sbGVjdCB0aGUgCj4+Pj4gZGF0YSBvbiB5b3VyIHNjcmVlbiBvciBjYXB1dHJl
IHRoZSBpbnB1dCBkZXZpY2VzLiBpZiBmZW5yaXIgc3BlYWtzIAo+Pj4+IG9yIGNyZWF0ZXMgc291
bmQsIGl0IGRvZXMgdGhpcyBhcyByb290IHVzZXIuIHlvdSB3b250IGhlYXIgc291bmQgb2YgCj4+
Pj4gYW4gb3RoZXIgdXNlciBieSBwdWxzZWF1ZGlvIChzb3VuZCBzZXJ2ZXIpIGRlc2lnbi4gV2Ug
bmVlZCB0byAKPj4+PiB0cmFuc3BvcnQgdGhlIHNvdW5kIGNyZWF0ZWQgYXMgcm9vdCB0byB0aGUg
c291bmQgc2VydmVyIHlvdSBoYXZlIAo+Pj4+IHJ1bm5pbmcgYXMgdXNlciB0byBmaW5hbGx5IGhl
YXIgdGhlIHNvdW5kLgo+Pj4+Cj4+Pj4gZmVucmlyIHByb3ZpZGVzIDIgc2NyaXB0cyAoc2VlIGFi
b3ZlKSB0byBjb25maWd1cmUgdGhlIHJvb3QgcHVzZSAKPj4+PiBhdWRpbyB0byBzZW5kIHRoZSBk
YXRhIHRvIHlvdXIgdXNlciBhbmQgY29uZmlndXJlIHVzZXIgcHVsc2UgYXVkaW8gCj4+Pj4gdG8g
bGlzdGVuIHRvIHRoZSBzb3VuZCBzZW50IGJ5IHJvb3QgYW5kIHBsYXkgaXQuCj4+Pj4KPj4+PiBj
aGVlcnMgY2hyeXMKPj4+Pgo+Pj4+Cj4+Pj4gMTguMDUuMjEgdW0gMTQ6NDYgc2NocmllYiBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+Cj4+Pj4+IEhlbGxvIHRoZXJlLAo+
Pj4+Pgo+Pj4+Pgo+Pj4+PiBUaGFua3Mgc28gbXVjaCwgbm93LCB0aGF0IHBhcnQgb2YgdGhlIHBy
b2JsZW0gaXMgc29sdmVkIQo+Pj4+Pgo+Pj4+PiBUaGUgb3RoZXIgcGFydCwgaG93IGV2ZXIsIHRo
YXQgaXMgbm90IHNvbHZlZCwgaXMgdGhhdCBmZW5yaXIgCj4+Pj4+IGRvZXNuJ3Qgc3BlYWsgd2l0
aCBlc3BlYWssIG9yIGVzcGVhay1uZy4KPj4+Pj4KPj4+Pj4gRG8gSSBoYXZlIHRvIHNldCBzb21l
dGhpbmcgc29tZXdoZXJlIGZvciB0aGF0IHRvIGhhcHBlbj8KPj4+Pj4KPj4+Pj4gVGhhbmtzIGFn
YWluLgo+Pj4+Pgo+Pj4+PiBCZXN0IHJlZ2FyZHMuCj4+Pj4+Cj4+Pj4+IEZyYW5jaXNjby4KPj4+
Pj4KPj4+Pj4gT24gNS8xOC8yMSAxMDoyNCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4+Pj4+IEhvd2R5IEZyYW5jaXNjbywKPj4+Pj4+Cj4+Pj4+PiBpIGRv
bnQga25vdyB3aHkgdGhvc2UgbGlicyBhcmUgbm90IGFuIGRlcGVuZGVuY3kgYnkgCj4+Pj4+PiBw
eXRob24tcHllbmNoYW50IGlmIHRob3NlIGFyZSBzcHJlYWQgd2FybmluZ3MuIE1heWJlIHRoaXMg
c2hvdWxkIAo+Pj4+Pj4gYmUgcmVwb3J0ZWQgdG8gdGhlIHBhY2thZ2UgbWFpbnRhaW5lci4gQnV0
IGFueXdheS4KPj4+Pj4+Cj4+Pj4+PiB5b3UgY2FuIGFzayBwYWNtYW4gd2hhdCBwYWNrYWdlIGNv
bnRhaW5zIHRoZSBzcGVjaWZpYyBmaWxlIHlvdSAKPj4+Pj4+IG5lZWQgYnkgInN1ZG8gcGFjbWFu
IC1GeSBmaWxlbmFtZSIuIGhlcmUgaSBkaWQgdGhpcyBmb3IgZm9yIAo+Pj4+Pj4gZXhhbXBsZSBp
biBsaWJ2b2trby5zbzoKPj4+Pj4+Cj4+Pj4+PiAxMDoxNCBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6
KSAkIHN1ZG8gcGFjbWFuIC1GeSBsaWJ2b2lra28uc28KPj4+Pj4+IFtzdWRvXSBQYXNzd29ydCBm
w7xyIGNocnlzOgo+Pj4+Pj4gOjogU3luY2hyb25pc2llcmUgUGFrZXRkYXRlbmJhbmtlbi4uLgo+
Pj4+Pj4gwqBjb3JlIDkwMyw1IEtpQsKgIDYsMTcgTWlCL3MgMDA6MDAgCj4+Pj4+PiBbIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjI10gCj4+Pj4+PiAxMDAlCj4+Pj4+PiDCoGV4dHJhIDksMyBNaULCoCAyNiw5IE1p
Qi9zIDAwOjAwIAo+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+Pj4+Pj4gMTAwJQo+Pj4+Pj4g
wqBjb21tdW5pdHkgMjIsOCBNaULCoCAyOSw2IE1pQi9zIDAwOjAxIAo+Pj4+Pj4gWyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyNdIAo+Pj4+Pj4gMTAwJQo+Pj4+Pj4gwqBtdWx0aWxpYiAyMjIsNSBLaULCoCAxMiw4
IE1pQi9zIDAwOjAwIAo+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+Pj4+Pj4gMTAwJQo+Pj4+
Pj4gZXh0cmEvbGlidm9pa2tvIDQuMy4xLTEKPj4+Pj4+IMKgwqDCoCB1c3IvbGliL2xpYnZvaWtr
by5zbwo+Pj4+Pj4gMTA6MTUgW2NocnlzQGJsYWNrYmVhc3Qgfl0gOikgJAo+Pj4+Pj4KPj4+Pj4+
IHNvIHRoZSBwYWNrYWdlIHlvdSBuZWVkIGZvciBsaWJ2b2trby5zbyBpcyAibGlidm9pa2tvIgo+
Pj4+Pj4gdG8gc2lsZW5jZSBvdXQgYWxsIHRoZSB3YXJuaW5ncyBkbyB0aGlzOgo+Pj4+Pj4gc3Vk
byBwYWNtYW4gLVMgbGlidm9pa2tvIG51c3BlbGwgaHNwZWxsCj4+Pj4+Pgo+Pj4+Pj4gdGhpcyBp
bnN0YWxsIGFsbCAzIChJTU8gb3B0aW9uYWwgZGVwZW5kZW5jeSdzLCB3aGF0IHNob3VsZCBub3Qg
Cj4+Pj4+PiBjcmVhdGUgYSB3YXJuaW5nLCBidXQgd2VsbCwgaXQgaXMgbGlrZSBpdCBpcykKPj4+
Pj4+Cj4+Pj4+PiBpIHVzZSBpcnNzaSBhcyBJUkMgKGNvbW1hbmRsaW5lKSBjbGllbnQuIHRoZXJl
IGlzIGFsc28gUGlkZ2luIChhcyAKPj4+Pj4+IGdyYXBoaWNhbCBjbGllbnQpLiBib3RoIGFyZSB2
ZXJ5IG5pY2UuCj4+Pj4+Pgo+Pj4+Pj4gbG9va2luZyBmb3J3YXJkIHRvIHNlZSB5b3UgaW4gSVJD
IDopLgo+Pj4+Pj4KPj4+Pj4+IGNoZWVycyBjaHJ5cwo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBBbSAx
OC4wNS4yMSB1bSAwODo1NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b246Cj4+Pj4+Pj4gSGVsbG8gdGhlcmUsCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IEkgbWFuYWdl
ZCB0byBpbnN0YWxsIG9uZSBvZiB0aGUgbGlicmFyaWVzLCBidXQgbm90IHRoZSBvdGhlciAKPj4+
Pj4+PiB0d28sIHNvIHRoYW5rcyBmb3IgdGhhdC4KPj4+Pj4+Pgo+Pj4+Pj4+IEFsc28sIHRoYW5r
cyBmb3Igc3VnZ2VzdGluZyB0byB1c2UgeWF5LCBJIGp1c3QgaW5zdGFsbGVkIGl0LCBJIAo+Pj4+
Pj4+IGRpZG4ndCBrbm93IHlhb3VydCB3YXMgZGVwcmVjYXRlZC4KPj4+Pj4+Pgo+Pj4+Pj4+IE15
IHF1ZXN0aW9uIG5vdyBpcywgYW5kIHRoaXMnbGwgYmUgZHVtLCB3aGF0IGFyZSByZWNvbW1lbmRl
ZCBJUkMgCj4+Pj4+Pj4gY2xpZW50cz8gaG93IGRvIEkgZ2V0IHRoZW0gd29ya2luZz8gd2hhdCBz
aG91bGQgSSBrbm93IGJlZm9yZSAKPj4+Pj4+PiBqb2luaW5nIGFuIElSQyBjaGFubmVsLCB3aGF0
IGV2ZXIgaXQgbWlnaHQgYmU/Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGFua3MgYWdhaW4uCj4+Pj4+Pj4K
Pj4+Pj4+PiBCZXN0IHJlZ2FyZHMuCj4+Pj4+Pj4KPj4+Pj4+PiBGcmFuY2lzY28uCj4+Pj4+Pj4K
Pj4+Pj4+PiBPbiA1LzE3LzIxIDk6MTkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4+Pj4+Pj4+IEhpLCBJIGp1c3QgcG9zdGVkIGEgbGluayB0byB0aGlzIG1l
c3NhZ2UgaW50ZW5kZWQgdG8gY2hyeXMgCj4+Pj4+Pj4+IChGZW5yaXIgYXV0aG9yKSBvbiB0aGUg
I2ExMXkgY2hhbm5lbCBvZiBpcmMubGludXgtYTExeS5vcmcuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE1h
eWJlIGpvaW4gaGltIHRoZXJlPwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBEaWRpZXIKPj4+Pj4+Pj4KPj4+
Pj4+Pj4gTGUgMTcvMDUvMjAyMSDDoCAyMDoxNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBhIAo+Pj4+Pj4+PiDDqWNyaXTCoDoKPj4+Pj4+Pj4+IEhlbGxvIGV2ZXJ5b25lLAo+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBJIGp1c3QgZG93bmxvYWRlZCBmZW5yaXItZ2l0
IGZyb20gdGhlIEFVUiB1c2luZyB5YW91cnQuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gV2hlbiBJIHRy
eSB0byBydW4gZmVucmlyIHdpdGggdGhlIGNvbW1hbmQKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBmZW5y
aXIKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBpbiBhIHRlcm1pbmFsLCBob3cgZXZlciwgaSBnZXQgZmVu
cmlyJ3Mgc3RhcnR1cCBzb3VuZCwgYW5kIHRoaXM6Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+IFtmcmFuY2lzY29AQmx1ZWJsaW5rIH5dJCBmZW5yaXIKPj4+Pj4+Pj4+ICoqIChwcm9jZXNz
OjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgCj4+Pj4+Pj4+
PiBwbHVnaW46IGxpYmhzcGVsbC5zby4KPj4+Pj4+Pj4+IDA6IGNhbm5vdCBvcGVuIHNoYXJlZCBv
YmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+Pj4+Pj4+Pj4gKiogKHByb2Nl
c3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9hZGluZyAKPj4+Pj4+
Pj4+IHBsdWdpbjogbGlidm9pa2tvLnNvLgo+Pj4+Pj4+Pj4gMTogY2Fubm90IG9wZW4gc2hhcmVk
IG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4+Pj4+PiAqKiAocHJv
Y2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc3OiBFcnJvciBsb2FkaW5nIAo+Pj4+
Pj4+Pj4gcGx1Z2luOiBsaWJudXNwZWxsLnNvCj4+Pj4+Pj4+PiAuNDogY2Fubm90IG9wZW4gc2hh
cmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+IEFueSBpZGVhcyBvbiBob3cgdG8gZml4IGl0LCBhbmQgbm8gc3BlZWNo
IGVpdGhlci4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBUaGFuayB5b3UgZm9yIGFueSBhbnN3ZXIuCj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEZyYW5j
aXNjby4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+
Pj4+Pj4+Pgo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4KPj4+Pj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pgo+Pj4+
Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdA==

