Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 31D061C9C7D
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 22:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588883685;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qfc2ozUjLWcHnled9W62urv9V0RpcMnGESVFmxnFsRM=;
	b=YBBGXN7Wv3r/dWtZbZbChMb/Eq6kdWWwJZ1+CmKApPHmH4mXwBroStIRmlyuhU2Ip/VzAC
	Rmwd1FQk6peKjU1uXBTOolJkvLvdr52MH2o8pQ5OJ6M8egYLEpUE138+VHwhJR0xsD+sCY
	kF4YBSozfTgLSKRHZTtqPMNkcILNRFE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-86-ONJPbYAKPIO0wikGGV15Yg-1; Thu, 07 May 2020 16:34:18 -0400
X-MC-Unique: ONJPbYAKPIO0wikGGV15Yg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5F47B835B41;
	Thu,  7 May 2020 20:34:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A989B19C4F;
	Thu,  7 May 2020 20:34:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 25E1E1809542;
	Thu,  7 May 2020 20:34:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047KY6un023548 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 16:34:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C11BA2166B28; Thu,  7 May 2020 20:34:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCC442156A23
	for <blinux-list@redhat.com>; Thu,  7 May 2020 20:34:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C284D80028B
	for <blinux-list@redhat.com>; Thu,  7 May 2020 20:34:03 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
	[209.85.167.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-243-Xn6uTWnvOlSvKm3KHDdKew-1; Thu, 07 May 2020 16:34:01 -0400
X-MC-Unique: Xn6uTWnvOlSvKm3KHDdKew-1
Received: by mail-lf1-f51.google.com with SMTP id a9so5629468lfb.8
	for <blinux-list@redhat.com>; Thu, 07 May 2020 13:34:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=hhbNjmtgDtSoen6OGW9x3zixkIuTWi9cWxyHCU0HQw4=;
	b=YK42xG/J/bqWjwLHNXvCHXQPDHNSh7VxeMw/aHgjEODoY3F22Xqj8wd8HO1Wky+/m/
	EzJvFj9ziqW4ehV+wZpAlNzbgVteJJnMsaj9m/Rx5zMTeKaUisqYfENOhu7jKGK8RtPQ
	w2zcCMAlCgy+YV/+e+TiPLMbdNEK926AhO05ul6i+TajHNEt9AAD+feBS38axDGisH2Y
	Wbg7tbmTs7eUkTKNfjUCC/mQ/PdcHONzosh+3m2zjx6NXt7aQTbAPvvbKEYppp6ZP1lo
	obd9exDZliJSYjPCVlmpCljeSXUwV80rHxwXFyGivLBP59LOLmWTTSb9HjiHt4Ngf0xz
	ajZg==
X-Gm-Message-State: AGi0PuaAN6JucY0k3j0CQ4gL1s9rHMOVF+H/4NBP40V/Exm4b3jUErsM
	LnbQBOjRIpO43gR2Shki1ORxN5oNTHM=
X-Google-Smtp-Source: APiQypLyll2oQwyMwah0NX0Az2HrKDyLuIpxoi/Bm2qUzZuuoSawVH9oRKtgbDVux1Q0Vsm0InA5BQ==
X-Received: by 2002:a19:3817:: with SMTP id f23mr9854488lfa.6.1588883639490;
	Thu, 07 May 2020 13:33:59 -0700 (PDT)
Received: from [192.168.0.14] ([45.222.12.73])
	by smtp.gmail.com with ESMTPSA id u9sm3992829ljl.33.2020.05.07.13.33.57
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 May 2020 13:33:58 -0700 (PDT)
Subject: Re: Anything besides vanilla Arch?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
	<alpine.NEB.2.21.2005071040040.20641@panix1.panix.com>
	<C7AD6A0B-2C1B-4468-A337-812062331F24@gmail.com>
	<alpine.NEB.2.21.2005071214200.15709@panix1.panix.com>
	<61E76085-7AA1-4410-9DBA-531C0A89DC46@gmail.com>
Message-ID: <6fd91d96-84fb-40a8-44e6-81912e513740@gmail.com>
Date: Thu, 7 May 2020 22:33:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <61E76085-7AA1-4410-9DBA-531C0A89DC46@gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047KY6un023548
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

SW50ZXJlc3RpbmcsCgpVYnVudHUgMjAuMDQgYW5kIGl0J3Mgc3BpbnMgcGljayB1cCBteSBXaUZp
IGNhcmQgZmluZSwgYnV0IEplbnV4LCBub3Qgc28gCm11Y2guCgpVYnVudHUgTWF0ZSAyMC4wNCBp
cyBvbiBjdXJuZWwgdmVyc2lvbiA1LjQuMC4gV2hhdCBpcyB0aGUgQ3VybmVsIHZlcnNpb24gCm9u
IHRoZSBKZW51eCBJU08/CgpXYXJtIHJlZ2FyZHMvR3JvZXRuaXMvSGVyemxpY2hlIEdyw7zDn2Us
CgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IHVzaW5nIFRodW5kZXJiaXJkIGZyb20gVWJ1bnR1IE1h
dGUgMjAuMDQKCk9uIDIwMjAvMDUvMDcgMjE6MzcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4gSSB3aWxsIGdpdmUgaXQgYSBnby4KPgo+PiBPbiBNYXkgNywgMjAy
MCwgYXQgMTE6MTUgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51
eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBJZiBKZW51eCB3YXNuJ3QgdGFsa2luZywg
SSBjb3VsZG4ndCBpbnN0YWxsIGl0IHNpbmNlIEkgbmV2ZXIgaGFkIGVub3VnaAo+PiBmdW5kcyBm
b3IgYSBicmFpbGxlIGRpc3BsYXkgYW5kIGRvbid0IGhhdmUgc2lnaHRlZCBhc3Npc3RhbmNlIHdp
dGggdGhlCj4+IGV4Y2VwdGlvbiBvZiBiZSBteSBleWVzLgo+Pgo+PiBPbiBUaHUsIDcgTWF5IDIw
MjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Cj4+PiBEYXRl
OiBUaHUsIDcgTWF5IDIwMjAgMTE6Mzc6NDcKPj4+IEZyb206IExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+PiBUbzogTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+IFN1
YmplY3Q6IFJlOiBBbnl0aGluZyBiZXNpZGVzIHZhbmlsbGEgQXJjaD8KPj4+Cj4+PiBJcyBKZW51
eCB3aXRoIGEgdGFsa2luZyBpbnN0YWxsZXI/Cj4+PiBJIGhhZCBub3QgaGVhcmQgb2YgSmVudXgu
Cj4+Pgo+Pj4+IE9uIE1heSA3LCAyMDIwLCBhdCA5OjQyIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pgo+Pj4+
IEkgaGF2ZSBKZW51eCBpbnN0YWxsZWQgYW5kIHlvdSBnZXQgYSBjaG9pY2Ugb2YgZ25vbWUgbWF0
ZSBrZGUgb3IgYmFzZQo+Pj4+IHR5cGUgaW5zdGFsbHMgd2l0aCB0aGF0IGRpc3RyaWJ1dGlvbi4g
IE9oLCBJIGZvcmdvdCB0aGVyZSdzIGFsc28gYQo+Pj4+IGNvdXBsZSBhbmRyb2lkIGRpc3RyaWJ1
dGlvbnMgaXQgd2lsbCBkbyBmb3IgeW91IHRvbyBpZiBkZXNpcmVkLiAgVGhlCj4+Pj4gYW5kcm9p
ZCBpbnN0YWxscyBoYXZlIHRhbGtiYWNrIGZvciBhIHNjcmVlbiByZWFkZXIuCj4+Pj4KPj4+PiB3
Z2V0IC1iYyBodHRwczovL25hc2hjZW50cmFsLmR1Y2tkbnMub3JnL3Byb2plY3RzL0plbnV4LTIw
MjAuMDIuMDMteDg2XzY0Lmlzby5zaGE1MTIKPj4+PiB3Z2V0IC1iYyBodHRwczovL25hc2hjZW50
cmFsLmR1Y2tkbnMub3JnL3Byb2plY3RzL0plbnV4LTIwMjAuMDIuMDMteDg2XzY0Lmlzbwo+Pj4+
IHNoYTUxMnN1bSAtYyBKZW51eC0yMDIwLjAyLjAzLXg4Nl82NC5pc28uc2hhNTEyCj4+Pj4gT24g
VGh1LCA3IE1heSAyMDIwLAo+Pj4+IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+Pj4KPj4+Pj4gRGF0ZTogVGh1LCA3IE1heSAyMDIwIDA2OjIyOjU2Cj4+Pj4+IEZy
b206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+Cj4+Pj4+IFRvOiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IFN1YmplY3Q6IEFu
eXRoaW5nIGJlc2lkZXMgdmFuaWxsYSBBcmNoPwo+Pj4+Pgo+Pj4+PiBIaSB0aGVyZSwKPj4+Pj4K
Pj4+Pj4KPj4+Pj4KPj4+Pj4gSSBoYXZlIGJlZW4gcnVubmluZyBVYnVudHUgYW5kIFVidW50dSBz
cGlucyBmb3IgYSB3aGlsZSBub3cgYW5kIGFtIGxvb2tpbmcKPj4+Pj4gZm9yIHNvbWV0aGluZyBl
bHNlIGZvciBhIGNoYW5nZS4gSSBoYXZlIGluc3RhbGxlZCB2YW5pbGxhIEFyY2ggYmVmb3JlLCBi
dXQKPj4+Pj4gdGhhdCB3YXMgd2hlbiBteSBzeXN0ZW0gd2FzIG9ubHkgcnVubmluZyBMaW51eC4g
RHVlIHRvIHRoZSB3b3JrIEkgZG8sIE5WREEKPj4+Pj4gY2VydGlmaWVkIGV4cGVydCwgVHJhaW5p
bmcgYW5kIHRlY2ggc3VwcG9ydCwgZXQgYWwsIEkgaGF2ZSB0byBoYXZlIGEgV2luZG93cwo+Pj4+
PiBpbnN0YW5jZSB0byBib290IGluIHRvLiBJIGFtIG5vdCBjb21mb3J0YWJsZSBpbnN0YWxsaW5n
IHZhbmlsbGEgQXJjaCBvbiBoZXJlCj4+Pj4+IGF0IHRoaXMgdGltZS4KPj4+Pj4KPj4+Pj4KPj4+
Pj4KPj4+Pj4gQXJlIHRoZXJlIGFueSBBcmNoIGJhc2VkIGRpc3Ryb3Mgd2UgY2FuIGFjdHVhbGx5
IGluc3RhbGwgd2l0aG91dCBzaXRlZCBoZWxwPwo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBXYXJt
IHJlZ2FyZHMvR3JvZXRuaXMvaGVyemxpY2hlIEdyPz9lLAo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+
PiBCcmFuZHQgU3RlZW5rYW1wCj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IENvbnRhY3QvS29udGFr
L0tvbnRha3QKPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj4gVHdpdHRlcjogd3d3LnR3aXR0ZXIuY29t
L2JyYW5kdHN0ZWVua2FtcAo+Pj4+PiA8aHR0cDovL3d3dy50d2l0dGVyLmNvbS9icmFuZHRzdGVl
bmthbXA+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFNreXBlOiBicmFuZHQuc3RlZW5rYW1wMDA3
Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4+Pgo+Pj4+IC0tCj4+Pj4KPj4+Pgo+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBz
Oi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+Pgo+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4K
Pj4gLS0gCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

