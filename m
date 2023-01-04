Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDC365DE20
	for <lists+blinux-list@lfdr.de>; Wed,  4 Jan 2023 22:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672866882;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A9fxTl2HZtoADad5+7Gydj0J7XGyT1uOETd/5OU1VqI=;
	b=AcgHX8XMtATAJU0Dj4oSqN0FDBZAZZU9ueSrtdgjhVWVCk9lG6umolUB+22WX6YceMkjIG
	0cTZc7RLiZ+tMVn5mjFTQV6ALM75CLqrtEAceAWyS4CG8D3rxyawxhbBp0/aEoJmQXcZcQ
	eUjbNkSBqEn3otOBZKXi/JTDZdzMbAQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-447-yQY_RAK3MJmlTixu4zxrpQ-1; Wed, 04 Jan 2023 16:14:37 -0500
X-MC-Unique: yQY_RAK3MJmlTixu4zxrpQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27A241818E47;
	Wed,  4 Jan 2023 21:14:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 440102026D4B;
	Wed,  4 Jan 2023 21:14:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C64BD1946597;
	Wed,  4 Jan 2023 21:14:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 4 Jan 2023 18:14:02 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Java & Orca
To: blinux-list@redhat.com
References: <mailman.2948.1672861418.2515658.blinux-list@redhat.com>
 <mailman.2827.1672864702.2515671.blinux-list@redhat.com>
 <mailman.3059.1672865639.2515682.blinux-list@redhat.com>
In-Reply-To: <mailman.3059.1672865639.2515682.blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.2831.1672866850.2515671.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

CkhpLgpFY2xpcHNlLCBhbiBJREUgdXNlZCB0byBmb3IgZCDCoMKgwqAgZXZlbG9wIGFwcGxpY2F0
aW9ucywgaXMgYSBqYXZhIAphcHBsaWNhdGlvbiBhY2Nlc3NpYmxlIHdpdGggb3JjYS4KSXQgdXNl
cyBzd3QsIGFuIG9wZW4gc291cmNlIDxodHRwOi8vd3d3LmVjbGlwc2Uub3JnL2xlZ2FsLz4gd2lk
Z2V0IAp0b29sa2l0IGZvciBKYXZhIGRlc2lnbmVkIHRvIHByb3ZpZGUgZWZmaWNpZW50LCBwb3J0
YWJsZSBhY2Nlc3MgdG8gdGhlIAp1c2VyLWludGVyZmFjZSBmYWNpbGl0aWVzIG9mIHRoZSBvcGVy
YXRpbmcgc3lzdGVtcyBvbiB3aGljaCBpdCBpcyAKaW1wbGVtZW50ZWQuCgoKaHR0cHM6Ly93d3cu
ZWNsaXBzZS5vcmcvc3d0LwoKT24gMS80LzIzIDE3OjUzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+IFRoYW5rcywgUmljaC4gV2hhdCBJIG5lZWQsIHRob3VnaCwg
aXMgd2hldGhlciBPcmNhIGNhbiBhY2Nlc3MgdGhlCj4gdmFyaW91cyBzY3JlZW4gZWxlbWVudHMg
aW4gb3JkZXIgZm9yIGJsaW5kIGZvbGtzIHRvIGJlIGFibGUgdG8gdXNlIGEKPiBwcm9ncmFtIHdy
aXR0ZW4gaW4gSmF2YS4gU29ycnkgZm9yIG5vdCBtYWtpbmcgdGhhdCBlbnRpcmVseSBjbGVhci4g
SQo+IGtuZXcgd2hhdCBJIG1lYW50LiBvcGNvZGU6IFJlYWRNeU1pbmQKPgo+IE9uIDEvNC8yMywg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjxibGludXgtbGlzdEByZWRoYXQuY29t
PiAgd3JvdGU6Cj4+PiBPbiBKYW4gNCwgMjAyMywgYXQgMTE6NDMsIEphY2tpZSBNY0JyaWRlIHdy
b3RlOgo+Pj4KPj4+IENhbiBwcm9ncmFtcyB3cml0dGVuIGluIEphdmEgYmUgYWNjZXNzZWQgYnkg
T3JjYT8gSWYgc28sIGV4cGxhbmF0aW9ucwo+Pj4gd2VsY29tZS4gJiB5b3VyIGVmZm9ydHMgaW4g
YWR2YW5jZSBhcmUgZGVmaW5pdGl2ZWx5IGFwcHJlY2lhdGVkLgo+PiBJJ20gYSBzaWdodGVkIHBy
b2dyYW1tZXIsIHNvIG15IGNvbW1lbnRzIG1heSBub3QgYmUgb24gdGFyZ2V0LiAgVGhhdAo+PiBz
YWlkLi4uCj4+Cj4+IEl0J3Mgbm90IGNsZWFyIHRvIG1lIHdoZXRoZXIgKGJ5ICJhY2Nlc3NlZCIp
IHlvdSdyZSB0YWxraW5nIGFib3V0IHJlYWRpbmcKPj4gdGhlIHNvdXJjZSBjb2RlIG9yIHJ1bm5p
bmcgYW4gaW5zdGFuY2Ugb2YgdGhlIGNvbXBpbGVkIHByb2dyYW0uICBIb3dldmVyLCBpbgo+PiBi
b3RoIGNhc2VzLCBzb21lIHNvcnQgb2YgaW50ZXJ2ZW5pbmcgcHJvZ3JhbSB3b3VsZCBiZSBuZWVk
ZWQuICBGb3IgZXhhbXBsZToKPj4KPj4gLSBBIHRleHQgZWRpdG9yIGNvdWxkIGxldCB5b3UgcmVh
ZCB0aGUgc291cmNlIGNvZGUuCj4+IC0gQSB0ZXJtaW5hbCBzZXNzaW9uIGNvdWxkIGxldCB5b3Ug
cnVuIHRoZSBwcm9ncmFtLgo+Pgo+PiBTbywgdGhlIHF1ZXN0aW9uIGlzIHdoZXRoZXIgeW91IGNh
biBmaW5kIGludGVydmVuaW5nIHByb2dyYW1zIHRoYXQgT3JjYQo+PiBwbGF5cyBuaWNlbHkgd2l0
aC4gIEZXSVcsIHRoZXJlIGFyZSBjb21iaW5hdGlvbiBpbnRlcmZhY2VzIChlLmcuLCBFbWFjc3Bl
YWspCj4+IHRoYXQgd2lsbCBsZXQgeW91IHBlcmZvcm0gYm90aCBhY3Rpdml0aWVzLCBidXQgYmUg
cHJlcGFyZWQgZm9yIGEgYml0IG9mIGEKPj4gbGVhcm5pbmcgY3VydmUuICBJbiBhbnkgY2FzZSwg
b3RoZXIgZm9sa3MgaGVyZSBtYXkgaGF2ZSBiZXR0ZXIgc3BlY2lmaWMKPj4gc3VnZ2VzdGlvbnMu
Cj4+Cj4+IC0gUmljaCBNb3Jpbgo+Pgo+Pgo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+Cj4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo=

